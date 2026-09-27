# cmd/compile: amd64 commuting a carry-bit sum reexecutes a seven-limb Add64 chain

**Filing draft, September 27, 2026. Not filed externally.**

## Summary

Two functions differing only in `ca + cb` versus `cb + ca` produce different
code for the same operation: two independent seven-limb additions, preserving
all fourteen result limbs and the sum of their two carry bits. One generates
**2 ADDQ + 13 ADCQ**. The other generates **3 ADDQ + 19 ADCQ**, replaying an entire
seven-instruction chain solely to recover its old carry flag. The latter also
has more spill/restore SSA nodes and a larger frame.

The addition-folding rule selects the older carry as a FLAGS operand, scheduling
clobbers it while computing the second chain, and flag allocation recursively
regenerates the first chain. The working source variant instead saves the older
carry as an integer and consumes the newer/current carry directly.

This reproduces the flag-recomputation mechanism found while reducing generated
P-384 Montgomery arithmetic, **without multiplication, reduction, cryptographic
bounds, or common-subexpression elimination of symmetric products**. It is a
small validated mechanism reproducer, not proof of the whole original P-384
Square-vs-Mul performance mechanism or a claim of absolute source minimality.

## Toolchain and reproduction

Parent-produced artifacts use:

```
go version go1.28-devel_2ff5743d Sat Sep 26 15:27:19 2026 -0700 linux/amd64
GOAMD64=v1
```

Compiler upstream commit: `2ff5743d9fd52fac166225e75df0c2c1edf82abb`.
Normal optimized compilation; only the arithmetic functions have `//go:noinline`.
No global `-N`/`-l`. No assembly, unsafe, internal packages, or crypto-specific
intrinsics. Runtime library import is only `math/bits`.

Final validation also passed ordinary, race, and GOAMD64=v3 correctness tests
for both this full module and the small-carry module. The ARM64 cross-build
is a positive control: all six small variants have two ADDS, twelve ADCS,
and two ADC instructions, with no replay of a seven-limb chain. See
`small-carry/evidence/final/arm64.asm`. No ARM64 execution is claimed.

Attached reproduction module: `small-carry/`. Its `carry.go` retains both variants
and source-order/dependent controls. `carry_test.go` validates arbitrary-width
integer arithmetic with an independent math/big oracle, carry boundaries,
random inputs, nonmutation and all output/input aliases. Parent's `TestCarry`
passed. Parent generated the SSA and assembly; subsequent worker inspection was
read-only. **No tiny-helper timing claim is made**: this report uses codegen and
correctness evidence, not an unrun benchmark.

Exact local command, from `round4/issues/p384-square/small-carry`:

```sh
flock /tmp/crypto-audit-cpu.lock taskset -c 0 env GOMAXPROCS=1 ./run-parent.sh
```

The script selects `/home/exedev/go-crypto/bin/go` and matching GOROOT by default;
both can be overridden. It captures generic CSE, lowered-deadcode, schedule,
flagalloc and regalloc dumps and runs correctness tests. Optional `BENCH=1`
executes prepared direct-call benchmarks; that is not necessary to reproduce the
instruction duplication. All reported files are in `small-carry/evidence/v1/`.

## Small source

The problematic function, exactly as present in the tested source:

```go
//go:noinline
func IndependentBA(out *[15]uint64, a, b *[14]uint64) {
	x0, ca := bits.Add64(a[0], b[0], 0)
	x1, ca := bits.Add64(a[1], b[1], ca)
	x2, ca := bits.Add64(a[2], b[2], ca)
	x3, ca := bits.Add64(a[3], b[3], ca)
	x4, ca := bits.Add64(a[4], b[4], ca)
	x5, ca := bits.Add64(a[5], b[5], ca)
	x6, ca := bits.Add64(a[6], b[6], ca)
	y0, cb := bits.Add64(a[7], b[7], 0)
	y1, cb := bits.Add64(a[8], b[8], cb)
	y2, cb := bits.Add64(a[9], b[9], cb)
	y3, cb := bits.Add64(a[10], b[10], cb)
	y4, cb := bits.Add64(a[11], b[11], cb)
	y5, cb := bits.Add64(a[12], b[12], cb)
	y6, cb := bits.Add64(a[13], b[13], cb)
	*out = [15]uint64{x0, x1, x2, x3, x4, x5, x6, y0, y1, y2, y3, y4, y5, y6, cb + ca}
}
```

`IndependentAB` has the same signature/body, except its name and the last
expression `ca + cb`. The integer expressions are exactly equivalent, including
all aliasing cases; each carry is0/1 and the sum is0/1/2. All inputs are arbitrary
uint64 arrays. All reads precede the aggregate output assignment.

## Actual vs expected machine code

| Function | Written order | Carry expression | ADDQ | ADCQ | SSA StoreReg / LoadReg | Frame subtraction |
|---|---|---|---:|---:|---:|---:|
| IndependentAB | A,B | ca+cb |2|13|16/16|240 bytes|
| IndependentBA | A,B | cb+ca |3|19|18/22|256 bytes|
| ReorderedAB | B,A | ca+cb |3|19|25/29|312 bytes|
| ReorderedBA | B,A | cb+ca |2|13|16/16|240 bytes|
| DependentAB | A then dependent B | ca+cb |2|13|15/15|232 bytes|
| DependentBA | A then dependent B | cb+ca |3|19|17/21|248 bytes|

ADCQ includes the final `ADCQ $0` combining carries. Prologue stack arithmetic is
not included in these ADDQ/ADCQ counts. StoreReg/LoadReg are actual post-regalloc
SSA node counts, not total stack accesses; aggregate-result temporary storage is
also present in assembly and is not being confused with these SSA spills.

Reordered functions compute exactly the same independent result but write chainB
first in source. Dependent controls deliberately change the second chain's first
operand to consume the first chain's highest result limb; they test an unavoidable
A-before-B ordering, not equivalence to the four independent variants. Their own
correctness oracle also passed.

Expected carry handling, demonstrated in `IndependentAB.asm`:

```
ADDQ ...             // A's seven-limb sum
ADCQ ...             // six times
SETB DL
MOVZX DL, DX         // preserve A's earlier carry
ADDQ ...             // B's seven-limb sum
ADCQ ...             // six times
ADCQ $0, DX          // earlier integer carry + current B carry
```

Actual extra tail in `IndependentBA.asm` (existing result stores omitted):

```
SETB AL              // preserve B's NEWER carry
MOVZX AL, AX
MOVQ 0x80(SP), CX
ADDQ DX, CX          // start replaying A, already computed earlier
ADCQ DI, SI
ADCQ R9, R8
ADCQ R11, R10
MOVQ 0x78(SP), CX
ADCQ R13, CX
MOVQ 0x68(SP), CX
MOVQ 0x70(SP), DX
ADCQ DX, CX
MOVQ 0x58(SP), CX
MOVQ 0x60(SP), DX
ADCQ DX, CX
ADCQ $0, AX          // B integer carry + replayed A flags
```

This is not merely a longer spill sequence: the exact earlier arithmetic is
reexecuted. A source commutation removes those seven arithmetic operations and
some operand retention/restores. Materializing both carries and ADDing them
would also avoid replay, although that alternative has not been separately
compiled in this experiment.

## SSA attribution: duplication first appears at flagalloc

Both independent variants retain fourteen `Add64carry` nodes after generic CSE.
There is one ordinary `Add64` combining carries:

```
IndependentAB_01__generic_cse.dump: v199 = Add64 <uint64> v81 v151
IndependentBA_01__generic_cse.dump: v199 = Add64 <uint64> v151 v81
```

The graph is otherwise the same arithmetic. No duplicate arithmetic operation is
being commoned between the independent chains, and no multiplication exists.

The bad `IndependentBA_03__schedule.dump` ends the first chain with:

```
v282 = ADCQ ...
v278 = Select1 <flags> v282       // A carry
... second chain ...
v226 = ADCQ ...
v222 = Select1 <flags> v226       // B carry
v223 = SETB <uint8> v222
v151 = MOVBQZX <uint64> v223      // materialize B
v218 = ADCQconst [0] v151 v278    // consume overwritten A flags
```

In `IndependentBA_04__flagalloc.dump`, immediately before v218, there are new
values v221=ADDQcarry; v237,v253,v274,v285,v193,v106=ADCQ, with new carry v136.
The last instruction now consumes that recomputed v136. They are copies of
source lines30–36, confirmed by their negative source positions and identical
operands. This is exactly one additional ADD plus six ADCs. Regalloc follows
and adds the observed extra spill/restore nodes.

The good `IndependentAB_03__schedule.dump` materializes A immediately:

```
v279 = SETB <uint8> v278
v81  = MOVBQZX <uint64> v279      // materialize A before B overwrites flags
... second chain ...
v218 = ADCQconst [0] v81 v222    // consume current B flags
```

Its flagalloc dump adds no duplicate arithmetic chain. ReorderedAB and
DependentBA show the same replay; their paired good variants do not.

## Actionable compiler area

In this toolchain:

* `src/cmd/compile/internal/ssa/_gen/AMD64.rules` folds
  `(ADDQ x (MOVBQZX (SETB flags)))` into
  `(Select0 (ADCQconst [0] x flags))`. If both operands are carry bits, the chosen
  orientation determines which carry must remain in FLAGS.
* `src/cmd/compile/internal/ssacompile/schedule.go` uses scheduling categories and
  source-position tie-breaks; the source-order controls expose sensitivity to
  the relative placement of the two chains.
* `src/cmd/compile/internal/ssacompile/flagalloc.go` invokes recursive `copyFlags`
  when a consumed flag is no longer current. Here this recreates the whole chain
  rather than retaining a cheap integer representation of one carry bit.

Possible compiler approaches worth evaluating: select the carry operand whose
flags are already current; avoid the ADD-to-ADC fold when it substantially extends
flags lifetime; reorder truly independent chains; or retain/materialize a needed
carry rather than recursively regenerating an expensive flags expression. The
dependent control shows that simply reversing chain scheduling is not sufficient
for all cases. This draft does not prescribe an untested compiler patch or claim
that arbitrary FLAGS values can always be spilled as one carry bit.

## Why “CSE/regalloc did it” is not the complete diagnosis

1. The tiny independent repro has no multiply and preserves all fourteen distinct
   Add64carry operations after generic CSE. The only arithmetic difference at
   that point is the operand order of the carry sum. It reproduces the same replay
   without P-384 cross-product commoning. **Eliminating duplicate multiplications
   is therefore not necessary for this pathology.**
2. The new operations appear at flagalloc, before general register allocation.
   Regalloc cannot be the initial cause of these seven duplicated arithmetic
   instructions; extra operand retention/spills are later consequences.
3. In the full P-384 controls, turning off generic/lowered/both CSE passes did not
   produce a useful fix. With generic CSE off, lowered CSE still commoned products;
   with lowered CSE off, repeated carry code grew sharply. Those interventions
   are not proof that CSE is uninvolved in all surrounding code, but they rule out
   the simplistic suggested remedy of disabling it.
4. Full original Square actually has **fewer** spills than full Mul and the same
   total ADC count. Its measured timing inversion is not fully explained by this
   small flag-replay issue. Keep the proven mechanism separate from that residual
   machine-level question.

## Real workload context and limits

The initial workload was generated P-384 arithmetic. The original complete Mul
body with `arg2` replaced by `arg1` equals Square byte-for-byte. Prior public
P-384 ECDSA Verify profile attributed18.97% flat/20.23% cumulative to Square;
the production amd64 wrapper already routes it through Mul. The independent
standalone full-operation reproduction gave Square90.46 vsMul53.05 ns at v1;
the reduced six-row version gave75.44 vs44.87 ns and exhibited four additional
seven-instruction flag regenerations in Square. Those are prior diagnostic
measurements, not new tiny-repro timing results or new API-level optimization
claims. Details and raw data are in `../../square-issue.md`.

GOAMD64=v3 reversed the isolated full-helper ordering, but parent public A/B
subsequently found ECDSA reparse Verify unresolved (804.8→780.4 µs,p=.713) and
ECDH significantly worse with generated Square (671.5→827.5 µs,+23.23%,p<.001).
Static comparison of all relevant binaries proves production and standalone
helper cores byte-identical, with only a relocated morestack CALL differing in
the full symbols. Package/type-based codegen differences are therefore excluded
for these helpers; execution-context effects remain unisolated. **No blanket v3
gating recommendation follows from the helper microbenchmark.** See
`evidence/production-v3/CONCLUSION.md`. This changes no proof of the small
flag-replay mechanism. No historical regression range, absolute minimality,
native arm64 result, or full-original latency root cause is asserted.

**Ready to file as a codegen issue:** validated small source pair, independent
correctness tests, expected working assembly, actual duplicated instructions,
and the exact SSA phase introducing them. No external filing has been performed.

## Related work and filing route (verified September 27, 2026)

This is a new reduced **test case for a known class of compiler problems**, not a
new discovery that flags can be recomputed. Open Go issue
[#33349](https://github.com/golang/go/issues/33349), “cmd/compile: redundant moves
and stack variables when function using bits.Add64 is inlined,” already diagnoses
an Add64 replay caused by scheduling a carry consumer after a flag-clobbering call.
Open [#65039](https://github.com/golang/go/issues/65039) concerns dead flag producers
left behind by flagalloc; unlike its dead comparison, our first chain's result
limbs remain live, so merely deleting dead producers is insufficient. Historical
[commit c386269](https://github.com/golang/go/commit/c386269ed8746304b219d5be7d673539ae1e2643)
already introduced disjoint carry-chain scheduling for PPC64; it is not an amd64
fix for this reproducer. Closed/completed
[#80399](https://github.com/golang/go/issues/80399) and its
[fix 0a6ccc5](https://github.com/golang/go/commit/0a6ccc557a7205172a9db17acb76cb18428a441e)
introduced the ADD-to-ADC consumer fold implicated here. This is provenance of
the rule, **not a measured regression range**. The useful added evidence is the
call-free two-chain commutation, live result limbs, dependent control, and exact
flagalloc replay. Recommend offering this as an augmentation to #33349 first,
with #80399 cross-reference; a separately tracked narrowly scoped follow-up is
reasonable only if maintainers prefer it. See `../PRIOR-ART.md`.
