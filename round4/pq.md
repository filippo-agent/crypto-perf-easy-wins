# Final evidence update — September 27, 2026

**Primary deliverable: two compiler-team-ready drafts**, not a large public-operation win:

- `issues/pq-small-arithmetic/ISSUE-cbd-narrow-bits.md`: actual amd64 redundant MOVZX / arm64 redundant UBFX after a <=2 bit-sum; working all-input-equivalent wider variant.
- `issues/pq-small-arithmetic/ISSUE-bounded-mul-div.md`: explicit-mask proof makes constant cancellation legal; actual amd64 masked /88 code 6→2 non-return instructions, arm64 8→4. Includes /32 and int64 controls, and negative control rejecting unrestricted int32 factoring.

Parent's standalone tests **PASS** (`issues/pq-small-arithmetic/evidence/tests.txt`). Actual linked amd64 and arm64 code, compiler diagnostics and short microbenchmarks are now in `evidence/`. All five production variants pass internal/public package tests (`tests/*-*.log`), with round4 test files installed. ARM64 is **cross-compiled/disassembled only**, not runtime-tested or timed. This agent ran no build/test/benchmark during the parent CPU lock.

**Twelve paired public-operation samples mostly remain unresolved.** `bench/mlkem-cbd-stat.txt` has one isolated ML-KEM-1024 EncapsWarm result, 44.17µs→42.67µs, −3.41%, p=0.045; the other seven CBD comparisons are unresolved. Treat that borderline result among multiple tests as tentative, not a broad win. `bench/mldsa-decompose-stat.txt` resolves none of six Sign/parse+Verify comparisons (44 Verify p=0.060). FromMontgomery and both direct-subtraction variants likewise resolve no per-operation benefit. Allocation and B/op measurements are unchanged. Do not promote raw/geomean directions to established speedups.

The direct-subtraction noinline repro is **not uniformly shorter**: it needs two input extensions and a move on amd64, while arm64 original/direct have the same non-NOP/RET instruction count. Prior expected inlined savings were hypotheses; no public result established a gain. Retain it as a tested source-range experiment, not a lead compiler-issue headline. #76056 remains mandatory related work for any subtraction claim.

The detailed investigation below is a chronological record: earlier “pending/unrun/no arm64” entries describe preparation time and are superseded by this final update and the finalized issue README. Source-invariant-only FromMontgomery/directSub changes remain distinct from the **locally bounded, legal full-domain compiler folds** in the two primary drafts.

---

# PQ hot helper audit — early strong lead (September 27, 2026)

Baseline db19b48d; read-only production. No compile/test/benchmark executed.

## Strong original tiny source lead: ML-DSA decompose constant grouping

`decompose88` spells `int32(r1)*2*(q-1)/88` rather than `int32(r1)*(2*(q-1)/88)`. Actual **fresh profile binary** amd64 disassembly saved in `pq-asm/decompose88.amd64.asm`: addresses 0x5d5912–0x5d592c multiply by 16760832, sign-extend, materialize 0xba2e8ba3, multiply 64-bit, shift 38, extract sign, subtract sign. One multiply by **190464** gives the same answer for actual r1∈[0,43]. `decompose32` has the same spelling and can group its constant **523776**.

Fresh public parse+Verify44 profile: decompose88 **4.33% flat / 5.37% cumulative**; useHint88 **6.30% cumulative**. Sign44: decompose88 **0.98% flat / 1.53% cumulative**, lowBitsExceedBound 2.29% cumulative. Thus worthwhile public operation target, but **no measured speedup yet**.

Important compiler distinction: *not* unrestricted `(x*C)/D == x*(C/D)`; int32 multiplication may wrap. Here the explicit `byte` type permits 0..255, of which 129..255 overflow multiplication by 16760832. Compiler needs the real highBits range (0..43 or 0..15), or a wider intermediate. This is initially a bounds-aware **source workaround**, not proof of a generally legal missed rewrite. Minimal independently bounded variants / tests and patch forthcoming.

No canonical CMOV rediscovery: the prior helper patch is baseline and its actual compare/CMOV works here.

## Second independent lead: ML-KEM CBD byte-sum truncations

`samplePolyCBD` sums each pair of extracted bits **as bytes**, then converts the sums to fieldElement (uint16). Actual fresh amd64 `pq-asm/mlkem-samplePolyCBD.amd64.asm` 0x5d1d63/6a/70/75 has **four MOVZX-byte after four bit sums** per two coefficients. Each bit is provably 0/1, so the sum is at most 2 and byte truncation is redundant. One-line source change `b := uint16(B[i/2])` keeps arithmetic at field width and should avoid those narrow truncations. Unlike opaque modular bounds, this bound is entirely present in local SSA masks/shifts: good minimized compiler candidate. No new CBD algorithm/SWAR batching, no secret branch, no changed PRF consumption.

Fresh Encaps768 CBD **5.78% flat / 17.23% cumulative** (includes its fieldSub/reduce and SHAKE work; do not sum with those). Independent patches now ready: `patches/mldsa-decompose-group-constants.patch` and `patches/mlkem-cbd-widen-byte.patch`. Candidate assembly/tests/public timing still parent-owned and pending.

Tests/reproducer now ready (unrun): `tests/mldsa/decompose_round4_test.go`, `tests/mlkem/cbd_round4_test.go`; standalone `issues/pq-small-arithmetic/` has exhaustive byte-domain tests, masked/type-bounded scale controls, and a negative control proving unbounded scale factoring invalid. Existing ML-DSA `TestDecompose` is already exhaustive over both γ2 values and is an additional regression gate. New decompose test compares production, frozen old arithmetic, grouped arithmetic, and direct mathematical low/high oracle over every canonical x.

## Third independent lead: ML-DSA FromMontgomery redundant correction

`patches/mldsa-from-montgomery-no-correction.patch` replaces only `fieldFromMontgomery`'s full reduction call with its existing partial reduction call. This is **not** a new reduction algorithm or a CMOV spelling variant. Its input is a canonical `fieldElement`, hence **a < q**. For the existing t∈[0,R−1], `a + t*q <= q−1 + (R−1)*q = q*R−1`; consequently `(a+t*q)>>32 < q` already. No correction can fire. For general input **a=q** the uncorrected output is q, so this optimization is expressly restricted to the existing canonical helper; do not change the general Montgomery reducer.

Real code removed e.g. `decompose88` 0x5d58d7 LEA −q, 0x5d58e4 CMP q−1, 0x5d58eb CMOVLE; same pattern in highBits, fieldInfinityNorm, encoders. No changed representation, no secret branch, same exact canonical integer. Compiler cannot know fieldElement is <q from its uint32 underlying type: **source invariant, not a compiler bug**. `tests/mldsa/from_montgomery_round4_test.go` is exhaustive over a∈[0,q), compares full/partial/production and independent inverse-mod-q oracle; unrun. Fresh `fieldFromMontgomery` attributed only 2.40% Sign / 0.83% Verify cumulative, but line attributions scatter into full reduction/other inlined callers; use caller and instruction profiles rather than claim all Montgomery reduction (31.55% Sign) is removable. Main consumers include norm (3.28% Sign cumulative), highBits (3.28%), decompose88 (1.53% Sign / 5.37% Verify), bitPack and makeHint; overlapping samples must not be added mechanically.

## Audit coverage / negative findings

* **MontgomeryPartialReduce**: fresh Sign **31.55% flat**, Verify **20.64% flat**, but actual hot inverse sequence is a necessary 32-bit constant multiply, 64-bit constant multiply, add and shift (`profiles/mldsa-hot.asm`, e.g. 0x5d4420–30). No phantom 64-bit high-product, spill, repeated sign extension, secret branch, or bool materialization to remove there. Sparse-q algebra would be an arithmetic rewrite without a clear codegen win; not proposed. Only the specifically proved FromMontgomery correction removal above is justified.
* **Canonical compare/select and highBits88**: actual amd64 directly fuses compare into CMOV (highBits 0x5d51fd CMP / 0x5d5205 CMOVE); no SETcc/MOVZX/TEST intermediary. Existing canonical optimization works. Do not rediscover it from source or blame `constanttime.Eq` attribution alone.
* **ML-KEM fieldMul/Sub/Reduce**: machine code does carry MOVZX-word at input/remainder boundaries (e.g. inverseNTT 0x5d20e4, 0x5d210f, 0x5d212c). For arbitrary uint16/uint32 values those conversions are real semantics; eliminating them based on q bounds requires crypto range knowledge absent from named types. No evidence that changing widths broadly is worthwhile, and no global helper overhaul prepared.
* **Sampling/rejection bool conversion**: ML-DSA parseSampleNTT main two-candidate loop emits subtract/SHR31/add with no secret branch and **no per-store bounds check** after its joint len/j gate. Tail retains buf[1]/buf[2] and signed-j lower-bound checks because `len(buf)>0` does not imply len>=3 and j<n does not imply j>=0 for arbitrary caller arguments. The documented multiple-of-three and valid j invariants are not machine types. Tail checks are not the hot main-loop problem; don't weaken them just to silence BCE.
* **Norm/decompose signed widths**: actual fieldInfinityNorm carries two MOVSXD around the int32/int intrinsic interface, but its compare already fuses to CMOV. A wide-source rewrite would be bounds-aware, not a missing comparison-fusion issue. The stronger FromMontgomery patch addresses this helper without replacing the intrinsic.
* **Load-after-store observation, deferred**: inverseNTT repeatedly reloads the opposite butterfly lane after writing the first, e.g. ML-KEM 0x5d20dc load flen[j], 0x5d20fb store f[j], 0x5d2100 reload flen[j]; analogous ML-DSA unrolled/loop code. Capturing `t,u := f[j], flen[j]` before writes could avoid this. Disjoint halves are algorithmically obvious but compiler slice alias proof is nontrivial; no patch proposed yet, and no measured load bottleneck. This is not a secret-data bounds issue.

## Parent validation / ordering

1. Inspect candidate amd64/arm64 code for **grouped decompose**, run new and existing exhaustive decompose tests, then public Sign/parse+Verify 44/65/87. Expected machine change is 7-instruction signed reciprocal scaling -> one multiply for 88; one shift removed for 32.
2. Independently test **FromMontgomery correction removal**, run new canonical-domain inverse oracle + existing full arithmetic/KAT/rejection tests; all callers must retain the fieldElement <q contract. It can stack with (1), but isolated timings identify each effect. A new inlining decision may be an additional change: inspect `-m=2` and full callers.
3. Independently inspect **ML-KEM CBD byte widening**; retain only if four byte-sum truncations actually disappear and there are no replacement spills/extra extension costs. Run `TestRound4CBD*` + full suite and compare public 768/1024 Encaps, valid Decaps and implicit rejection. Byte-domain proof is exact, but an operation-level gain remains unmeasured.
4. `issues/pq-small-arithmetic/README.md` has pinned primary compiler paths, minimal repro, expected-vs-actual distinctions and parent-only commands. **No compile/test/bench/SSA dump executed here.** All test files formatted only. Production worktree untouched. No arm64 output yet available to inspect.

The three patches are independent and generated from frozen db19b48d source by `pq-prepare.py`; tests live outside production. No public benefit is claimed until parent measurements. Public profile fractions identify exposure, not predicted speedups or removable cycle fractions.

## Parent-targeted follow-up: fieldSub input compare (independent ablation)

Prepared `patches/mlkem-sub-direct-compare.patch` and `patches/mldsa-sub-direct-compare.patch`. These are **composition changes**, not another canonical-CMOV claim: leave `fieldReduceOnce` unchanged and replace only `fieldSub` with `d:=int(a)-int(b); Select(LessOrEq(int(b),int(a)),d,d+q)`.

### Actual code and exposure

Parent's fresh annotated `profiles/mlkem-hot.asm` confirms samplePolyCBD's first difference:

```
0x5d1d78 SUBL DI,R9             // a-b in field width
0x5d1d7b LEAL q(R9),CX          // +q
0x5d1d8a MOVZX CX,CX            // uint16 wrapped result -> int
0x5d1d8d LEAQ -q(CX),BX         // construct second select operand
0x5d1d9f CMPQ CX,q-1            // compare derived sum
0x5d1da6 CMOVLE CX,BX
```

Second coefficient repeats this composition. It is *already* CMOV; opportunity is dropping the intermediate uint16 normalization and q-offset/unoffset construction, and comparing original inputs independently of the subtract chain. Expected direct path is subtract, construct d+q, compare a/b, CMOV, but **candidate assembly is unverified**. In ML-KEM ntt the fieldSub sequence similarly follows the butterfly product reduction (0x5d1f3a onwards). Fresh Encaps fieldSub **4.18% flat / 14.04% cumulative**, Decaps **3.64% / 14.76%**; cumulative overlaps sampleCBD/NTT and includes their canonical helper work. `fieldMulSub` is a different fused helper, untouched by this patch.

ML-DSA uses the analogous uint32 composition but contributes much less in this profile; both helper source variants are ready, prioritize ML-KEM. Do not extrapolate the ML-KEM exposure to ML-DSA.

### Exact domain / CT / width proof

Canonical a,b satisfy 0<=a,b<q<2^23. Their difference d lies in [−(q−1),q−1], and d+q in [1,2q−1]. Both fit signed int even on 32-bit targets. `LessOrEq(b,a)` has valid nonnegative <=2^31−1 arguments and returns exactly 0/1. If a>=b, selecting d yields [0,q−1]; otherwise selecting d+q yields [1,q−1]. The unselected negative d is explicitly legal for Select. Original wrapped-width expression a−b+q yields the same mathematical [1,2q−1] value after defined modular arithmetic, and original reducer selects d when nonnegative, d+q otherwise. Exact representatives match, including a=b=0, a=b=q−1, 0−(q−1) and (q−1)−0. No changed field domain, output distribution, rejection, allocation, pointers, aliasing or validation. No secret Go branch or table; only the existing CT intrinsics.

The compiler **cannot** assume named fieldElement values are <q. Arbitrary input (ML-KEM a=65535,b=0) makes the original and direct expressions differ. This is a **range-aware source optimization**, not a generally legal compiler fold. `issues/pq-small-arithmetic/subtraction.go` includes original/direct, an explicitly guarded full-domain diagnostic and a mask-bounded branchless diagnostic for compiler analysis, plus an invalid-input negative control. Guard branches are only in the standalone diagnostic, not proposed crypto code. Compiler issue status remains pending candidate/minimal assembly; the guards must not be presented as a CT source workaround.

Tests (unrun): `tests/mlkem/sub_round4_test.go` enumerates **all q² canonical pairs** against old/direct/production/mod-q oracle; `tests/mldsa/sub_round4_test.go` enumerates every possible signed difference at both low and high operand origins, plus randomized pairs (q² would be excessive). Test the source variant independently, then together with byte widening: they touch the same CBD critical path and wins need not add. Parent still owns all compilation/testing/timing; only source/assembly reading and artifact preparation here.

## Related work correction: conditional subtraction is already tracked/fixed

Parent supplied `issues/76056.json`, Go issue **#76056, “cmd/compile: optimize conditional subtractions”**, opened October 26, 2025, closed as completed May 15, 2026, updated May 16, 2026 (Go1.27 milestone). Its original examples use q=8380417, bits.Sub32 borrow-based correction and ConstantTimeSelect, explicitly seeking SUB/CMOV code and carry/borrow-to-select optimization. **Do not describe generic conditional subtraction or borrow/Select fusion as novel, or open a duplicate issue for the earlier canonical reducer pattern.** The current report's canonical-CMOV discussion describes inherited baseline behavior only.

The new decompose constant-grouping and CBD bounded-byte-arithmetic leads concern different optimizations. The direct fieldSub patch is a *source composition/range* experiment, not a new generic conditional-subtraction compiler discovery; any eventual compiler issue must reference #76056 and establish a surviving gap against its implemented fix. The supplied JSON contains the initial body/status but not the closing change or discussion, so exact fix scope has **not** been verified here. No compiler/test/benchmark work performed while parent holds CPU.
# Final confirmation

The independent, fixed 16-pair follow-up did not resolve a public-operation
benefit for decompose regrouping or CBD widening. See
`bench/confirmation/{mldsa-decompose,mlkem-cbd}-stat.txt` and
`issues/pq-small-arithmetic/README.md`. No new PQ production patch is selected.
The two tested compiler reproducers remain the primary deliverables.
