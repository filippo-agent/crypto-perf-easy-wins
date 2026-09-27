# Round 4 — RSA/bigmod + Edwards/scalar carry/select codegen

**Final disposition after parent validation:** standalone semantic tests PASS.
ctEq/assign source patches are **not selected**: no robust broad whole-RSA win.
Specific negated-borrow lowering is confirmed in the isolated binary; see
`issues/carry-select/ISSUE-DRAFT.md`. The historical preparation notes below are
superseded where the final validation section says otherwise.

27 September 2026. **No production modifications, compiler builds, tests, SSA
dumps, profiles, or timing jobs by this agent.** Read parent's fresh profiles and
statically disassembled their existing binaries using GNU objdump. Prepared only
outside-repo patches/reductions/tests. Initial status before parent validation:
**no measured improvement**, no tested
working alternate assembly, and no final externally fileable issue yet.

Baseline main: `2532e0de69344246565a94fc3de14fd4f982b361`. Supplied built Go:
`go1.28-devel`, upstream `2ff5743d9fd52fac166225e75df0c2c1edf82abb`.
Evidence directory: `issues/carry-select/`.

## Ranking / parent action

1. **Try the two tiny bigmod helper patches independently:** ctEq XOR-borrow and
   assign intrinsic. Actual hot assembly is unnecessarily verbose; constant-time
   semantics and exact aliasing preserved. Tiny scoped production opportunities,
   NOT measured wins and NOT a newly discovered CMOV implementation.
2. **Strong compiler scheduling corroboration: Edwards field.feSquare** has all
   fifteen 64x64 products issued before ANY carry accumulation, spilling many
   intermediates. Fresh Verify spends 26.63% inclusive there. The code points to
   late flag-generator scheduling, not broken bits.Add64 lowering. This may share
   a compiler issue with prior P384 Square: do not market as another independently
   novel compiler root cause. It is a different hot, smaller application/reducer.
3. **Small clean compiler peephole draft: negative borrow => SBB mask.** Proven
   missed instruction opportunity in production scalarAdd tail; profile does NOT
   make scalarAdd hot in Verify. Useful minimal compiler reproduction, weak
   end-to-end crypto optimization priority.
4. **Reject incorrect carry/BCE diagnoses:** straight-line Sub64/Add64 chains are
   already good, and bigmod inner slice bounds are already eliminated. Loop
   borrow save/reload follows a real CMP clobber and unsupported flags phi, not
   merely a missing local peephole.

## Fresh workload evidence (parent-generated)

`profiles/rsa-sign.top`, BenchmarkRound3PrecomputedRSASign, 9.21 sampled seconds:

* addMulVVW1024 57.22% flat; montgomeryMul 16.94% flat / 85.88% inclusive.
* assign 8.25% flat / 8.36% inclusive; sub 5.10% flat.
* shiftIn 5.86% flat / 6.08% inclusive; Exp 91.53% inclusive.

These are isolated **precomputed** Sign results, not setup/keygen. ctEq did not
receive a standalone hot sample attribution; its assembly is in the secret
window selection loop. assign's 8.25% flat is an ideal elimination ceiling, not
an expected gain. The global helper includes more sites than just the table
scan. RR is not the optimization target.

`profiles/ed25519-verify.top`, BenchmarkVerification, 9.69 sampled seconds:

* feMul (handwritten assembly) 40.97% flat.
* feSquare 13.00% flat / 26.63% inclusive; addMul/addMul38 inlining accounts for
  7.22% / 6.40% flat attribution inside generic arithmetic. Do not add inclusive
  and flat percentages as independent savings.
* carryPropagate 5.57% flat; field Add/Subtract 2.89%/4.95% flat.
* VarTimeDoubleScalarBaseMult 86.89% inclusive. Verification uses public variable-
  time NAF lookups, NOT the constant-time SelectInto scan used for signing.
* scalar arithmetic/constant-time table Select do not appear above the profile's
  retained-node threshold. No claim they account for zero time or are hot here.

## A. bigmod.ctEq: two borrows for one equality

Actual table-scan sequence in `rsa-exp-amd64.asm`, addresses 0x667a90–0x667ac6:

```
MOV x,tmp; SUB y,x; SETB xb; MOVZX xb,x
MOV y,saved; SUB tmp,y; SETB yb; MOVZX yb,y
OR x,y
... public length comparison ...
XOR $1,y; NEG y              // mask for assign
```

Current source: `1 ^ (borrow(x-y) | borrow(y-x))`. This recognizes equality,
but backend emits both subtraction chains. New equivalent source:

```
_, borrow := bits.Sub(x^y, 1, 0)
return choice(borrow)
```

Proof: unsigned z=x^y is zero iff equal; z-1 borrows iff z=0. Valid across the
**full uint range**, including high bit and wrap boundaries, and both 32/64-bit
architectures. No signed narrowing or arbitrary-domain LessOrEq intrinsic.
Expected fewer instructions: XOR, compare/subtract one, SETB plus widening;
consumer might fold further to a mask. **Alternate asm not yet built.**

Patch: `patches/rsa-cteq-xor-borrow.patch` (one helper, no imports).
Standalone functions EqTwoBorrow/EqXorBorrow and exhaustive 8-bit + broad full-
word tests supplied. Production integration test supplied separately.

Compiler characterization: missed algebraic recognition, not a correctness bug.
Generic lowering emits two Sub64borrow paths; `AMD64.rules:30–44` each lower via
SUB/SETB/MOVZX and only recognize local flag handoff. A compiler could recognize
`!(x<y || y<x)` as equality after borrow lowering, but the source rewrite needs
no missing range knowledge. This is a stronger semantic reduction than assuming
all table indices fit int32; it also covers ctEq elsewhere (Equal, IsZero, etc.).

## B. bigmod.assign: known choice should use existing constant-time intrinsic

Actual inner loop 0x667ace–0x667ae9 in `rsa-exp-amd64.asm`:

```
MOV dst[i],t; MOV src[i],u
XOR t,u; AND mask,u; XOR u,t
MOV t,dst[i]; INC i; CMP n,i; JL loop
```

Patch `patches/rsa-assign-intrinsic.patch` replaces XOR/AND/XOR with
`uint(constanttime.Select(int(on), int(yLimbs[i]), int(xLimbs[i])))` and adds the
internal constanttime import. Expected amd64 inner loop: loads, TEST on, CMOV,
store; arm64: CMP/CSEL, no secret branch. A TEST may be repeated each iteration
because loop control destroys flags, so this is **not** an automatic 3-to-1 whole
loop win. Real full Sign pairing decides; SIMD/nonalias fantasies are not needed.

Bounds: same upfront `y.limbs[:len(x.limbs)]`, which checks **capacity**, not just
length. Current machine loop has no per-word panic branch. Do not accidentally
change the cap-vs-len contract or move a potential panic after stores.

Range: choice is defined to be exactly 0 or 1. `int(uintWord)` then `uint(intWord)`
retains every word bit even when the sign bit is set; Select selects values, it
never compares their signed magnitudes. Hence full-width limbs remain correct.
Inputs other than 0/1 were never valid choice values; do not advertise support.

Alias: read both words before writing each position. Exact receiver/source
alias works; forward/backward partial overlap retains original sequential
behavior too (not memmove semantics). All tested *in prepared source*, not run.
No new allocations, branch on limbs, key reuse, or table indexing by secrets.

Compiler issue caveat: a defined Go `choice uint` type does NOT itself prove 0/1
at compiler level. Turning an arbitrary `-on` mask into CMOV would be incorrect
for general on. This production patch is explicit use of the existing intrinsic,
not evidence the compiler must infer a comment. Standalone AssignMask masks on
with `&1` to encode its range for a valid mask-recognition compiler reproducer;
AssignSelect uses public crypto/subtle wrapper to avoid internal import barriers.

## C. field.feSquare: scheduling expands live multiply results

`field-square-amd64.asm` records actual baseline 0x5f8420 function, stack frame
0x90. Fifteen MUL instructions from 0x5f8463 through 0x5f855c precede the first
ADD/ADC at 0x5f8571. Example product result saves include 0x88(SP), 0x80(SP),
0x78(SP), 0x70(SP), 0x68(SP), 0x60(SP), 0x58(SP), 0x50(SP), 0x48(SP), 0x40(SP),
0x38(SP), 0x30(SP), 0x28(SP), 0x20(SP), 0x18(SP), 0x10(SP), 0x08(SP), 0x00(SP).
Some registers retain other intermediates. This is not simply a code-size claim:
results are stored and later reloaded on the hot dataflow.

Expected legal schedule: compute a column's three products and ADD/ADC
accumulations before accumulating the next column, retain only column results /
shared loaded input limbs; still all input loads before final output stores to
preserve exact alias safety. Both mathematical arithmetic count and output
contract stay identical. This can shorten multiply-result live ranges; whether
it wins on this processor requires compiler/benchmark work. It does not justify
changing square into Mul here (native Mul uses separate assembly).

**Evidence-backed pass suspect:**

* `ssa/_gen/AMD64.rules:56–57` lowers Mul64uhilo to MULQU2 on GOAMD64<3, or MULXQ
  on >=3. `AMD64Ops.go:432` has two integer results, so it is NOT an IsFlagOp,
  even though MULQU2 clobbers hardware flags.
* ADDQcarry's result is `(UInt64,Flags)` (`AMD64Ops.go:420`) and so IsFlagOp=true.
* `ssacompile/schedule.go:20–30,172–183`: ordinary instructions receive
  ScoreDefault, flag generators ScoreFlags (later), flag readers ScoreReadFlags
  (earlier). `ssa/schedule.go` defines the IsFlagOp predicate.
* Consequently independent products are preferred over ADDQcarry producers,
  while ADC correctly follows its ADD once scheduled. Exactly the pattern seen
  in actual code. SSA dumps must confirm the precise responsible schedule stage;
  post-schedule register allocation/early scheduling could also affect layout.

Draft minimal `DotSchedule` preserves multiple independent 128-bit addMul
chains and late output combination without needing crypto. `DotBarrier` uses a
noinline row helper as a diagnostic scheduling barrier, NOT a proposed production
change. Neither has been compiled yet, so no claim the reduction reproduces the
same spills or that the variant is faster. Full feSquare is already the verified
assembly witness. Independent math/big modulo-2^128 semantic tests supplied.

The real field code's operands have limbs <2^52. addMul19/addMul38 rely on that
bound to keep pre-scaled multiplications in range; do not move multiplication by
19 after overflow or drop high carries. Reproduction does not need these range
assumptions: its dot products are defined modulo 2^128 for arbitrary uint64.
No production square diff until a genuine schedule improvement is demonstrated.

## D. scalar borrow mask: three instructions where one suffices

`scalar-add-amd64.asm`:

```
0x5fc08b  SBB $0,DX       // final subtraction carry
0x5fc08f  SETB DL
0x5fc092  MOVZX DL,DX
0x5fc095  NEG DX          // turn borrow 0/1 into all-zero/all-one mask
```

Expected: after that final subtraction, `SBB DX,DX` produces exactly `-CF`;
no input value in DX is needed afterwards. Saves SETB/MOVZX/NEG -> one SBB.
This requires no scalar modulus or input-range proof beyond bits.Sub64's own
borrow guarantee. Mechanically valid for every uint64 input. The same pattern
is a reasonable self-contained compiler issue even though scalarAdd is not a
large sampled component of Verify.

Standalone `NegBorrow(x,y)` is a five-line reduction; `NegBorrowSub` explicitly
spells the mask as `bits.Sub64(0,0,b)` as a candidate working source variant.
**It is not yet compiled**, so do not quote its expected assembler as observed.

Compiler suspect: missing lowering/late rewrite `(NEGQ (MOVBQZX (SETB flags)))`
into `SBBQcarrymask flags`. AMD64 already defines SBBQcarrymask and uses it for
shift masks, while `AMD64.rules:53–54` recognizes ADD/SUB of a widened carry, and
line 44 eliminates rematerialization into the next ADC/SBB. None of those rules
covers the observed NEGQ form. Need check final SSA and one-use/multiple-use
constraints before proposing a compiler patch. Existing uses of the borrow or
flags cannot just be destroyed; schedule/flagalloc must retain valid users.

## E. Negative findings: don't file misleading issues

* `scalar-reduced-amd64.asm` is already four loads, a SUB/SBB/SBB/SBB chain and
  SETAE after its public len==32 guard. No residual per-load slice checks.
* `scalar-add-amd64.asm` has ADD/ADC/ADC/ADC and SUB/SBB/SBB/SBB chains. Wider
  fiatScalarUint1 aliases do NOT insert useless uint8 truncation in this tree.
* field.addMul and addMul38 become adjacent ADD/ADC once scheduled. Carry flag
  transfer itself is good. Mul19 compiles into two LEAs, not IMUL19 or shifts.
* In `rsa-subtract-amd64.asm`, sub-loop NEG borrow / SBB / SETB / MOVZX surrounds
  a **real** CMP loop-control clobber. `ssacompile/flagalloc.go` explicitly rejects
  flags Phi. A decrement-count loop preserving CF could in principle help, but
  requires induction/control-flow and flag-phi machinery, not removing these
  instructions locally. No source loop unrolling/reused kernel proposal here.
* Scalar/table select may offer mask-to-intrinsic cleanup, but it is not the fresh
  Ed25519 Verify hotspot; no additional broad field API overhaul proposed.
* Wide RR already selected; failed 25-line CPULARGE kernel composition not retried.

## Ready artifacts and next validation gate

* Two separate tiny patches under `patches/`; no production files changed.
* `tests/carry_round4_test.go`: integration ctEq/assign tests including 65-word
  sizes, high-bit cases, exact + both overlap directions; NOT copied/run.
* `issues/carry-select/repro*.go`, `schedule.go`, go.mod, README: standalone
  semantic tests, cold bounds/panic tests, statistical benchmark kernels,
  amd64/arm64 compiler commands, alternating paired measurement procedure.
* Native arm64 machine code is **not yet obtained**. Expected CSEL/SBCS etc is a
  target expectation, not evidence. Parent should cross-compile first, then use
  real arm64 hardware for performance/correctness qualification.

First request to parent CPU owner: build/test standalone reductions and disassemble
amd64/arm64, then qualify ctEq and assign separately on full precomputed Sign.
Do not promote any draft to a compiler issue until its isolated assembler is
confirmed; do not promote helper nanoseconds to end-to-end results.

## Follow-up: parent-supplied annotated assembly and MULX question

Read `profiles/bigmod-hot.asm` / `profiles/edwards-square.asm`; the latter confirms
our existing byte-for-byte address evidence and annotates source helpers.
No CPU work was started; square worker retains exclusive CPU ownership.

**No missing MULX claim on this baseline.** `AMD64.rules:56–57` explicitly selects
MULXQ only for GOAMD64>=3 and MULQU2 otherwise. The CPU's runtime support alone
cannot allow unconditional MULX in a portable v1 executable. A v3 build is a
useful *diagnostic control*, not evidence of a compiler v1 bug or a fair A/B
production source improvement. No dynamic dispatch/assembly rewrite proposed.
ADC is also not missing: source fe_generic.go:46–47 maps directly to ADDQ/ADCQ.
The concrete problem remains product scheduling / intermediate lifetime.

### Additional tiny instruction-selection candidate: shiftRightBy51

The annotated assembly exposes another self-contained pattern, independent of
scheduling and crypto range proofs:

```
func Shift51(lo, hi uint64) uint64 { return hi<<13 | lo>>51 }
```

Actual in feSquare at 0x5f858f, 0x5f8593, 0x5f8597:

```
SHLQ $13,CX
SHRQ $51,R11
ORQ CX,R11
```

The same three instructions recur five times per feSquare and five per feSquareN
iteration. Expected fewer-instruction equivalent: x86 `SHRD r11,cx,51` (Intel
notation), retaining original high CX and shifting bits into low R11. This
computes `(lo>>51)|(hi<<13)` for **all** uint64 inputs. The source helper's
115-bit input bound is only needed to interpret the result as an untruncated
128-bit >>51 value; instruction equivalence itself needs no such bound.

This is a **compiler instruction-selection enhancement candidate**, not a proven
speedup: SHRD's latency/throughput and two-input register constraints may make
three simpler operations competitive. It must be timed on current hardware;
never report saved instructions as saved cycles. Fresh profile attributes 1.14%
flat to shiftRightBy51 across callers; treat that as inclusive-context evidence,
not a promise about the total operation or additional time beyond feSquare.

Primary compiler evidence: AMD64.rules/AMD64Ops.go contain no double-shift
operation/pattern for this expression. The assembler already supports a
three-operand ASHRQ `movDoubleShift` encoding (`cmd/internal/obj/x86/asm6.go:3936`),
so the missing layer is SSA operation/lowering+emission, not assembler encoding.
ARM64.rules:1629–1631 already match corresponding shifted OR/ADD/XOR into
EXTRconst: a useful architecture control, still needs actual ARM64 disassembly.

Standalone `Shift51` and independent math/big tests were added to the prepared
reproducer. Neither was compiled/executed. This is potentially a much smaller
fileable issue than full square scheduling once instruction cost and a reduced
assembly reproduction are checked. No crypto production patch or new assembly
kernel is justified by this static observation alone.

## Novelty correction / existing conditional-subtract precedent

Read parent-saved `issues/76056.json`: Go issue **76056**, “cmd/compile: optimize
conditional subtractions,” opened October 26, 2025, closed May 15, 2026, milestone
Go1.27. Its scope explicitly includes bits carry/borrow feeding constant-time
selection, not merely one ML-DSA modulus. **The general borrow/select optimization
class is known and closed; do not describe this report as discovering that class.**

Current distinctions, still requiring reduced-code verification and issue/CL
history screening before any external filing:

* bigmod.assign intrinsic use is a **production call-site application of existing
  support**, not a new compiler-issue claim.
* NegBorrow's specific `NEGQ(MOVBQZX(SETB flags)) -> SBBQcarrymask` is a potential
  residual peephole distinct from direct borrow-to-CMOV. That distinction does
  not prove novelty; comments/linked CLs and other issues have not been screened.
* ctEq's two independent unsigned borrows collapsing into equality is a separate
  algebraic pattern from a single conditional subtraction, but again is not
  asserted to be previously unreported.
* square scheduling and double-word shift selection are separate observations;
  prior P384 scheduling work may share the first root cause.

No new live novelty query was required to incorporate the supplied precedent;
no comprehensive novelty claim is made. No CPU work performed while parent
benchmarks own the lock. GOAMD64=v1's lack of MULX remains expected behavior.

## FINAL — parent-built reproductions and whole-RSA qualification

Parent supplied `issues/carry-select/evidence/` after running standalone tests,
amd64/arm64 builds, compile diagnostics, and 100ms × 5 helper benchmarks. Semantic
tests **PASS**, including the independent math/big and alias/bounds checks.
Reporting agent performed only static inspection of supplied files/binary, no
build/test/benchmark/profile workload.

**Artifact correction:** parent script used `-s 'example.com/.*'`; this package is
`carryselect`, so both saved architecture asm files are **zero bytes**. Corrected
amd64 static GNU objdump extraction is saved in `evidence/amd64-inspected.asm`.
Direct invocation of a nonexistent installed Go objdump path failed (no build);
ARM64 re-extraction is left to parent with `-s '^carryselect\.'`. Cross-build is
not evidence of ARM64 runtime correctness, and no ARM64 machine-code claim is
made from an empty output file.

### What actually reproduced

* **NegBorrow**: SUB; SETB; MOVZX; NEG; RET, 13 bytes. **NegBorrowSub**:
  SUB; MOV $0; SBB $0; RET, also 13 bytes but one fewer instruction. Both exact
  semantic variants passed. Ideal `SUB/CMP; SBB r,r; RET` remains a clear
  instruction opportunity. Final narrow draft: `ISSUE-DRAFT.md`; no broad
  borrow/select novelty claim, no claimed crypto speedup.
* **EqTwoBorrow** remains dual SUB/SETB/MOVZX with OR/XOR (29-byte function).
  **EqXorBorrow** is XOR; SUB $1; SETB; MOVZX; RET (14 bytes). Thus the source
  alternative truly changes codegen; compiler equality folding remains a
  possible additional residual, but full RSA does not justify a production win.
* **AssignMask** remains XOR/AND/XOR. **AssignSelect** has TEST $1 and CMOVNE
  inside the loop, exactly as expected; it is the application of existing
  constant-time intrinsic support, not a newly invented compiler optimization.
* **Shift51** independently reproduces SHL13/SHR51/OR in its 12-byte function.
  Secondary `ISSUE-DRAFT-shift51.md` records the SHRD instruction-count option,
  with explicit latency/cost-model caveats. No measured SHRD implementation.
* **DotSchedule** now independently reproduces all fifteen MULs before its first
  ADD/ADC: addresses 0x53d77e–0x53d84a, then ADD at 0x53d850; frame size 0x90.
  Seventeen product-result stack slots appear before accumulation, plus another
  intermediate slot later. This confirms the scheduling reduction, but the
  noinline-row diagnostic is **not a demonstrated improvement**. Coordinate any
  filing with the P384 square worker rather than duplicate the same root issue.
* SubLoop still needs integer borrow save/restore around loop CMP; Sub4's
  straight-line carry transfer stays direct. No new correctness/BCE issue.

Parent helper samples (descriptive medians only, five 100ms samples, no strong
statistical/end-to-end inference): Eq 1.686 -> 1.587 ns; Assign16 11.85 -> 8.603 ns;
NegBorrow 1.534 -> 1.552 ns; DotSchedule -> DotBarrier 23.98 -> 24.46 ns.
The latter two do not show a reliable benefit. Indirect-call/short-run noise is
material at these times. Do not headline percentages from this screening.

### Production outcome: reject selection of both tiny RSA patches

`bench/rsa-cteq-stat.txt`, 12 samples per arm:

* Precomputed Sign 1.021 ms -> 1.076 ms, p=0.178: not significant; median is
  unfavorable, not a proven regression.
* Six Verify cells: one isolated 2048 PKCS1v15 improvement, -8.04%, p=0.033;
  remaining cells nonsignificant. Do not generalize a single nominally
  significant comparison across a multi-cell suite.
* Seven-cell geometric mean -0.02%; allocation counts unchanged.

`bench/rsa-assign-stat.txt`, 12 samples per arm:

* Precomputed Sign 1.039 ms -> 1.047 ms, p=0.755: no measured win.
* Every Verify cell nonsignificant; geometric mean -0.44%; allocations unchanged.

Therefore **neither ctEq nor assign is selected as a production optimization**.
Keep the patches as reproducible experiments, not merge recommendations.
Clean narrow compiler opportunities survive because actual assembly is redundant;
no complete RSA or Ed25519 throughput improvement has been established here.
