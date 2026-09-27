# Filing draft: amd64 equal-operand Montgomery multiplication codegen

**2026-09-27. CPU experiment complete; lock released. No production changes or
external filing.** Standalone module: `round4/issues/p384-square`.

## Executive result

**Latest GOAMD64=v3 correction:** parent public A/B does not support selecting
Square based on the isolated-helper reversal. ECDSA reparse Verify804.8→780.4 µs
is unresolved (p=.713); ECDH671.5→827.5 µs regresses23.23% (p<.001), n=12.
Static comparison proves production and standalone v3 Mul/Square cores are
**byte-identical**; full symbols differ only in the relocated morestack CALL.
This is an execution-context discrepancy, not package/type-induced helper
codegen. **No blanket v3 gate is recommended.** Keep source-workaround decisions
anchored in public A/B. Details and reproducible static comparison:
`issues/p384-square/evidence/production-v3/CONCLUSION.md`.


**Latest: the parent-run tiny probes succeeded.** `IndependentBA` is an18-line
standalone independent-chain function; changing only final `cb+ca` to `ca+cb`
removes one ADD and six ADCs. Source-order and dependent controls agree. Tests
pass; SSA proves the added chain first appears at flagalloc, before regalloc.
No multiplication or arithmetic CSE is needed to reproduce this mechanism.
The final filing document is `issues/p384-square/ISSUE-DRAFT.md`; it should be
the primary attachment, with original/full/Prefix6 evidence as workload context.
No tiny benchmark claim is made. This follow-up was parent-built and inspected
read-only by this worker; the worker CPU lease remains closed.


* The known full P-384 Square slowdown is reproduced outside crypto/internal:
  **Square 90.46 ns, Mul(x,x) 53.05 ns** (medians of five short trials).
* Source shortened from ~700 to **265 lines per complete operation**, preserving
  the observed MUL/ADC/frame/stack-access counts and timing inversion. Independent
  math/big and all-alias correctness tests pass. Original unshortened controls
  also reproduce it (85.37 vs57.71 ns).
* A **242-line, six-row unreduced** candidate retains the inversion (75.44 vs44.87
  ns), and exposes a concrete compiler mechanism: choosing the wrong carry of a
  commutative carry sum to keep in FLAGS causes `flagalloc` to regenerate four
  additional seven-instruction carry chains. It subsequently has 20 additional
  StoreReg and63 additional LoadReg SSA nodes versus the general multiply.
* **Do not say the full original Square spills more.** Its SSA has fewer spills
  and the same total carry recomputation as Mul. The reduced case provides an
  actionable compiler issue, but does not prove the complete original latency
  mechanism. No hardware-counter or historical-regression proof was obtained.
* **Isolated-helper result only:** GOAMD64=v3 reverses full-helper ordering on this
  CPU: **Square51.48 ns vsMul87.92 ns**. The existing architecture-only wrapper
  choice must not be generalized to all GOAMD64 levels. This is a helper control,
  not a measured public-operation v3 regression or a new optimization claim.

## Exact reproduction and environment

Run from `/home/exedev/crypto-audit/round4/issues/p384-square`:

```sh
flock /tmp/crypto-audit-cpu.lock taskset -c 0 env \
  GOROOT=/home/exedev/go-crypto GOAMD64=v1 GOMAXPROCS=1 \
  /home/exedev/go-crypto/bin/go test -tags=original \
  -run '^TestFull$' -bench '^BenchmarkFull$' -benchtime=150ms -count=5 -cpu=1 .

# Six-row smaller example; outputs an unreduced seven-limb state, not a field op:
flock /tmp/crypto-audit-cpu.lock taskset -c 0 env \
  GOROOT=/home/exedev/go-crypto GOAMD64=v1 GOMAXPROCS=1 \
  /home/exedev/go-crypto/bin/go test -tags=probes -run '^TestPrefixes$' \
  -bench '^BenchmarkPrefixes/6/' -benchtime=150ms -count=5 -cpu=1 .

# All five pass/ISA controls, original/compact tests, SSA dumps and assembly:
flock /tmp/crypto-audit-cpu.lock taskset -c 0 env GOMAXPROCS=1 ./triage.sh
```

Audited compiler: `go1.28-devel_2ff5743d`, upstream commit
`2ff5743d9fd52fac166225e75df0c2c1edf82abb`; local source HEAD at preparation
`2532e0de69344246565a94fc3de14fd4f982b361` includes prior crypto-only changes.
Linux amd64, AMD EPYC9554P, CPU0, GOMAXPROCS1, default optimizations, no race or
purego flag. Entry functions are `//go:noinline`; no global `-N`/`-l`. The module
has no internal imports, unsafe, assembly, crypto-specific intrinsics, dependencies,
or secret-dependent control flow. It uses ordinary `math/bits` arithmetic.

Actual CPU window: 17:27:54–17:32:12 UTC, all compile/test/benchmark/dump work under
`flock /tmp/crypto-audit-cpu.lock` and CPU0 affinity. Parent informed upon completion.
No more CPU experiments after release. Five serial150ms trials provide diagnostic
medians, **not a new whole-operation performance claim**; several samples are
noisy. Full raw data and metadata are in `evidence/`, not only these summaries.

## Hot origin / semantics / minimization

Current source confirms byte-for-byte body identity after substituting `arg2` →
`arg1` in generated `p384Mul`. Both original bodies have78 bits.Mul64 and137
bits.Add64 calls. `generate.py` asserts this and mechanically replaces adjacent
`var x uint64` declarations plus defining assignment with `:=`; it does not
change arithmetic or relative expression ordering. Original controls are retained
under `-tags=original`; the default full source is `common.go` + `compact.go`.

Inputs are canonical six-limb integers below
`p=2^384-2^128-2^96+2^32-1`. Output is `a*b*2^-384 mod p`, canonical and Montgomery
encoded. All input reads precede output stores, supporting distinct output,
one-input alias and all-pointer alias. Tests independently compute the modular
inverse of2^384 with math/big, test all bit/carry boundaries and256 deterministic
random inputs, and check input nonmutation and every supported output alias.
`TestFull` passed with raw+compact functions in all five configurations.

The six-row prefix removes only final conditional reduction, returning seven
limbs of the exact Montgomery recurrence. `TestPrefixes` independently computes
`T=(T+a_i*b+((low64(T+a_i*b)*0x100000001 mod2^64)*p))/2^64` for every row and passes
for all candidates. Prefixes use independent fixed inputs, unlike the full
in-place latency benchmark; full independent-input controls also invert
(Square78.44 vsMul52.34 ns). Prefixes3–5 do **not** preserve the large inversion;
row2 has only a modest short-trial difference. At that initial stage no faithful <100-line reproducer
was established. The later parent-run small-carry experiment now reproduces the
flag-replay mechanism with18-line functions; retain these242/265-line bodies as
original-workload context, not as the smallest known mechanism reproducer. Fuzz entrypoint exists but sustained fuzz/race/arm64 tests
were not run.

Prior hot public operation: `round3/profiles/ecdsa-p384.top` attributes18.97% flat /
20.23% cumulative of public P-384 ECDSA Verify to generated Square. Prior helper
samples: Square93.11,96.38,84.67 vsMul56.50,57.34,54.74 ns. The current amd64 wrapper
already uses Mul(x,x); this work neither rediscovers that patch nor assigns the
old Square fraction to current production profiles.

## Proven compiler SSA: where operations change

Dumps are package-scoped and preserve all relevant stages. The exact current
compiler pass implementation is in `src/cmd/compile/internal/ssacompile/`, not just
the historical `ssa/` directory. Values below are counted by `summarize.py`.

### Complete operation, GOAMD64=v1

| Stage / count | Square | Mul |
|---|---:|---:|
| opt_deadcode: Mul64uhilo |78|78|
| gcse_deadcode: Mul64uhilo |51|66|
| schedule: ADDQcarry |23|23|
| schedule: ADCQ + ADCQconst |131|131|
| flagalloc: ADDQcarry |28|28|
| flagalloc: ADCQ + ADCQconst |161|161|
| regalloc: StoreReg |158|187|
| regalloc: LoadReg |214|225|

Generic CSE demonstrably removes12 repeated constant-modulus products in both,
plus15 symmetric cross-products in Square. For example before CSE,
`Square_01__opt_deadcode.dump` has v202 (`x1*arg1[2]`) and v390
(`x2*arg1[1]`); after `gcse_deadcode` v390 is gone and v202 is retained with the
common loaded operands. Commutativity and same-pointer loads suffice; no curve
identity or range proof is needed.

Both complete functions acquire five extra ADD+six-ADC chains at `flagalloc`.
Their final counts match old assembly:51 vs66 MULQ,161 ADCQ,1256 vs1488 frame
subtraction,377 vs419 instructions containing rsp-memory operands. Go objdump
reports756/831 instructions; prior GNU objdump752/827 because some multi-byte NOPs
are displayed differently. Do not interpret this as four added instructions.

### Smaller six-row case: actionable carry-selection mechanism

| Stage / count | Prefix6Square | Prefix6Mul |
|---|---:|---:|
| gcse_deadcode: Mul64uhilo |51|66|
| schedule: ADDQcarry / ADCQ / ADCQconst |23/114/17|23/114/17|
| flagalloc: ADDQcarry / ADCQ / ADCQconst |28/144/17|24/120/17|
| regalloc: StoreReg / LoadReg |154/213|134/150|
| emitted MULQ / ADCQ |51/161|66/137|
| emitted instructions / rsp-memory instructions |727/380|665/299|

**Concrete example: the same source `x222 := x221 + x182`, two carry bits.**
`x182` is produced by the first seven-limb addition; `x221` by a later reduction
addition. Both remain ordinary uint64 arithmetic; no cryptographic reasoning is
required to choose a better instruction sequence.

In `evidence/probes/Prefix6Square_02__schedule.dump`:

```
v257  = ADCQ ...                         // first chain ends (source line1549)
v1274 = Select1 <flags> v257             // old carry x182
... MULQU2 and another addition chain ...
v537  = MOVBQZX <uint64> v1268           // materialized newer carry x221
v1700 = ADCQconst [0] v537 v1274          // needs OLD flags again
```

In `Prefix6Square_03__flagalloc.dump`, the old flags are unavailable. Before v1700,
`copyFlags` creates v1571=ADDQcarry followed by v1555,v1539,v1518,v1502,v1479,
v1466=ADCQ, ending in new flags v1463. **Seven arithmetic instructions are
reexecuted just to recover one carry bit.** Extra live source operands then survive
into register allocation, which adds the measured spill/restore nodes.

In the corresponding `Prefix6Mul_02__schedule.dump`, it selects the opposite
orientation of the commutative carry sum:

```
v178  = SETB v174
v459  = MOVBQZX v178                     // save OLD carry x182 before clobber
... MULQU2 and another addition chain ...
v1173 = Select1 <flags> v1169            // NEW/current carry x221
v1757 = ADCQconst [0] v459 v1173          // old integer + current FLAGS
```

**Expected instruction choice:** materialize the earlier carry with SETB/MOVZX,
then add the later/current carry with ADCQ, as the working Mul variant does. Do
not save the later carry and replay the earlier seven-limb chain. An alternative
is materializing both carries and ADDQ. This is a demonstrated better pattern in
the reduced comparison, not an implemented compiler patch.

Relevant compiler files/rules:

* `ssa/_gen/AMD64.rules`: `(ADDQ x (MOVBQZX (SETB flags)))` becomes
  `Select0(ADCQconst [0] x flags)`. The chosen operand orientation can extend the
  wrong flags lifetime. Inspect this folding jointly with scheduling, not merely
  CSE's removal of multiplies.
* `ssacompile/flagalloc.go`: `copyFlags` recursively copies tuple/flags producers
  when required flags were overwritten; the before/after dumps above show it.
* `ssacompile/schedule.go`: heuristic categories then source-position tie-breaks;
  not a carry-lifetime cost model. It prioritizes flag users/generators separately.
* `ssa/regalloc.go`: greedy farthest-next-use allocation. Reduced Square's extra
  spills are downstream of additional flag-expression recomputation, whereas the
  full original has fewer total spills. The two cases must not be conflated.

## Controlled interventions and limits of attribution

Median complete compact helper times, ns/op:

| Package compiler mode | Square | Mul |
|---|---:|---:|
| default v1 |90.46|53.05|
| `ssa/generic_cse/off` |126.0|58.63|
| `ssa/lowered_cse/off` |112.0|113.9|
| both CSE passes off |219.8|226.1|
| default v3 |51.48|87.92|

These exact flags are accepted by this compiler. There is no generic pass named
just `cse` in the chosen experiments. Turning off generic CSE alone still leaves
51/66 hardware multiplies because lowered CSE can common them. Turning off
lowered CSE explodes carry recomputation (666/622 ADC in Square/Mul); disabling
both yields602/602 ADC and78/78 MUL. **Disabling CSE is not a fix.** CSE affects
constant products, loads, tuple selectors and lowered carry expressions, so
these intervention timings do not isolate a single responsible optimization.

GOAMD64=v3 replaces MULQU2 with flag-preserving MULXQ and changes register
constraints/codegen; Square remains51 products and Mul66, with161 ADC each.
The fact that flag recomputation remains while timing ordering reverses also
rules out saying that those repeated chains alone explain the full slowdown.
Hardware dependency/throughput attribution requires further controlled work.
Parent has now completed those public v3 controls: ECDSA unresolved, ECDH
significantly worse with generated Square. Actual helpers are byte-identical to
the standalone ones. See the correction at the top; no v3 gating is recommended.

**Filing recommendation:** include the validated full reproducer, six-row reduced
comparison and the explicit carry-orientation SSA example. Suggested title:
`cmd/compile: amd64 carry-sum lowering regenerates long carry chains; equal-operand
Montgomery square slower than general multiplication`. State the proven reduced
mechanism and the unresolved complete-operation microarchitectural cause. No
historical regression, optimal full instruction sequence, or native arm64 claim.

## Validated follow-up after CPU release: tiny independent carry chains

Parent ran `issues/p384-square/small-carry/run-parent.sh` under the CPU lock;
`TestCarry` passed and saved SSA/assembly establish that three of six small
variants reproduce a whole carry-chain replay. No worker build/timing was done.

| Variant | Written order | Sum | ADDQ / ADCQ | SSA StoreReg / LoadReg |
|---|---|---|---|---|
| IndependentAB | A,B | ca+cb |2/13|16/16|
| IndependentBA | A,B | cb+ca |3/19|18/22|
| ReorderedAB | B,A | ca+cb |3/19|25/29|
| ReorderedBA | B,A | cb+ca |2/13|16/16|
| DependentAB | A then dependent B | ca+cb |2/13|15/15|
| DependentBA | A then dependent B | cb+ca |3/19|17/21|

Each source function contains14 bits.Add64 calls and the final carry sum, with
all limb results retained. In the independent pair, generic-CSE dumps retain
all14 Add64carry operations, differing only in the final Add64 operand order.
Both schedule dumps have the same arithmetic count. Bad variants first acquire
one extra ADDQcarry plus six ADCQ at flagalloc; general regalloc comes later.
Thus symmetric-product commoning is not necessary to provoke the mechanism,
and regalloc is not the phase introducing the duplicate arithmetic. Neither
fact asserts that CSE cannot influence schedules in the full P-384 functions.

Details, literal source/assembly/SSA and fix directions are in the final
`issues/p384-square/ISSUE-DRAFT.md`. The prior larger repro remains supporting
context. The original full Square-vs-Mul latency mechanism is still not claimed
fully solved, and the completed parent GOAMD64=v3 controls above supersede helper-only
extrapolation for source-workaround decisions.
