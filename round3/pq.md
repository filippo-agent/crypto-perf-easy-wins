# PQ round3 — incremental work ON TOP OF Filippo's complete pending stack

**September 27, 2026; authoritative baseline changed.** Use `/home/exedev/go-pq-stack`, branch `pq-stack-baseline`, commit **62c2afb8f1975532a30f7b0ba70dd33d11562ffd**: upstream **2ff5743d9fd52fac166225e75df0c2c1edf82abb** plus all 13 current pending CLs **818720, 818721, 818722, 818723, 818724, 818725, 822000, 818920, 818921, 818922, 822001, 822002, 822040**. Exact original revisions/details are in `references/pending-stack.json`.

**No earlier PQ audit production patches are in this baseline.** In particular, no R2 gamma/fusion/inverse-scale arithmetic and no dead-private-t1 deletion. **All previous unstacked profile percentages and A/B scouts are historical, not promotable evidence of incremental benefit over this stack.** The old narrative is retained only in `pq-unstacked-historical.md` and `pq-codegen-followup.md`.

This subagent performed source adaptation, file generation and `git apply --check` only: **no production changes, compiler/generator runs, test execution, profiles or timings**. Tests are external under `stack-tests`, not installed by this subagent. Parent-created untracked toolchain/public benchmarks in the new worktree were left alone. All **15** patches in `stack-patches` individually apply-check against 62c2afb8.

## Immediate experiment priority

1. **Canonical signed mask versus direct comparator/Select**, independently per package, on the stack-only baseline. These are tiny localized changes, not another deferred-reduction implementation. Existing exhaustive contract tests were retargeted to ML-DSA's new type.
2. **Fresh stack profiles now bound the ML-DSA opportunity:** canonical reducer is **12.28% flat in Sign44, 4.67% in parse+Verify44**, versus **30.51% / 26.41% in ML-KEM-768/1024 Encaps**. No giant ML-DSA claim from the old profile. See `pq-stack-profile-followup.md` for the full current evidence and a separately bounded optional inverse-final-scale fusion.
3. ML-KEM fixed 5/11-bit codecs now have fresh profile support: generic 1024 encoding is **11.67% cumulative including compression**, not additive with its compression leaf. Measure these prepared independent patches with stack samplers active.
4. R2 ML-KEM gamma/fusion/inverse scaling were quickly adapted as **re-evaluation experiments**, not newly discovered techniques or inherited measured wins. Their field bounds still hold on this stack. Keep them separate from the first reducer comparison so interactions are visible.

## 1. Reducer ablations retargeted to the exact stack types

### Preferred pair per package

* `stack-patches/mlkem-canonical-mask.patch`
* `stack-patches/mlkem-canonical-compare-select.patch`
* `stack-patches/mldsa-canonical-mask.patch`
* `stack-patches/mldsa-canonical-compare-select.patch`

**Choose one reducer variant per package, not both.** Other source-lowering diagnostic controls are available but need not each receive a full benchmark matrix:

* ML-KEM `canonical-select.patch` (preserve top-bit condition), `canonical-word-mask.patch` (preserve uint16 arithmetic).
* ML-DSA `canonical-select64.patch`, `canonical-select32.patch` (preserve borrow, choose final value), `canonical-borrow-mask.patch` (preserve Sub64, replace b*q with -b&q).

All filenames have package prefix, e.g. `mldsa-canonical-select32.patch`.

### ML-DSA exact type boundary — preserved, not weakened

Stack function:

```go
func fieldReduceOnce(a fieldElementPartiallyReduced) fieldElement
```

`fieldElementPartiallyReduced` is uint32 with the invariant **0<=a<2q**. Every new patch preserves this signature and returns the canonical `[0,q)` type. The two main bodies are:

```go
// Signed mask:
x := int32(a) - q
return fieldElement(x + ((x >> 31) & q))

// Direct Select:
v := constanttime.LessOrEq(int(a), q-1)
return fieldElement(constanttime.Select(v, int(a), int(a)-q))
```

ML-KEM's signature remains `fieldReduceOnce(a uint16) fieldElement`, with its existing **a<2q** precondition. Same bodies apply. ML-KEM Select adds the internal constanttime import; ML-DSA already has it. For ML-DSA mask/direct comparison, remove the now-unused math/bits import **but preserve byteorder and unsafe required by the stack**.

### Range, width, timing and alias proof

* ML-DSA q=8380417: `a<16760834<2^24`. ML-KEM q=3329: `a<6658<2^13`. Thus int32/int conversions are exact, even on 32-bit targets. `int32(a)-q` lies in **[-q,q-1]**, never overflows.
* Signed shift yields -1 iff a<q, zero otherwise; AND q and add return a or a-q. All outputs canonical. Boundaries a=0,q-1,q,2q-1 yield 0,q-1,0,q-1.
* Direct comparison operands a and q-1 are nonnegative <=2^31-1, satisfying `constanttime.LessOrEq`'s contract. Its result is exactly 0/1, satisfying `Select`. `int(a)-q` can be negative only when it is unselected; negative selected-operand values are allowed by Select. No Go if is introduced.
* Borrow variants use b in {0,1}. For Sub32 on the new type, the patch explicitly calls `bits.Sub32(uint32(a),q,0)`. Underflow x may convert differently to int on 32-/64-bit targets but is unselected whenever a<q; the selected x for a>=q lies in [0,q). Sub64-mask `-b&q` is zero/q in uint64 and existing wrapping addition is preserved.
* ML-KEM uint16 variants retain wraparound: for a<q, x=a-q is in [65536-q,65535], so x>>15=1; otherwise x<q and top bit is zero. Negating that uint16 bit yields 65535/0 and AND q gives q/0.
* These helpers are scalar. No pointers/alias contracts, arrays, unsafe conversions, allocation, random consumption, key state, or validation checks change. Existing stack type distinctions, wider NTT bounds, accumulation proofs, canonicalization boundaries and lazy-reduction scheduling remain untouched.

### New stack helpers are NOT interchangeable with this reducer

Read the actual stack `mldsa/field.go`: `fieldPartialReduce` accepts arbitrary uint32 and uses q's sparse form; **do not apply the int32(a)-q proof to it**. Its input can exceed MaxInt32. `fieldMontgomeryPartialReduce` accepts values up to q*R and returns a partial coefficient without a final conditional subtraction. `fieldMontgomeryPartialMul`, NTT wide accumulators, and `nttReduce` intentionally keep partial values. Their q multiplications are real modular arithmetic, not 0/1 corrections removable by a mask.

The stack still calls canonical fieldReduceOnce from canonical fieldAdd/Sub, full Montgomery conversion/reduction, and boundary operations such as norms/encoding. Fresh profiles confirm these partial helpers are hot, but no body rewrite has a clear smaller instruction sequence. The optional `mldsa-inverse-final-scale.patch` instead combines two existing final-stage multiplications with a proven constant, leaving all partial-helper contracts and representations intact; see the follow-up proof.

## Primary-source/compiler evidence (technique evidence, not stack timing)

* `references/dilithium/ref/reduce.c:caddq`, official pq-crystals/dilithium **d35ba3fe5449bee3e6d43e1f296c3ca818bd36be**: signed-mask conditional addition. The proposed canonical helper first subtracts q, then uses this idiom. Independent adaptation, not a claim of novel cryptographic arithmetic.
* Current stack Go compiler source is inherited from pinned upstream: `crypto/internal/constanttime/constant_time.go`, `cmd/compile/internal/ssagen/intrinsics.go:1651`, SSA `_gen/AMD64.rules:397–439` and `_gen/ARM64.rules:310–311`. Select constructs CondSelect and has CMOV/CSEL lowering. `rewrite/generic/generic_helpers.go:491` does not turn these ±q selections back into conditional-add multiplication: its relevant gate requires a power-of-two constant.
* Primary compiler source establishes why the intrinsic is a plausible branch-free simplification, **not exact candidate codegen or speed**. Parent must inspect the actual stacked binaries and all relevant inlined callers.
* Earlier nonstacked binary inspection found ML-DSA correction did emit IMUL; ML-KEM already used CMOV to choose 0/q plus shift/test/add. This corrects the historical hypothesis but **must not be presented as fresh stacked machine-code/profile evidence**.

## 2. ML-KEM codecs and reciprocal — ready against stack

* `stack-patches/mlkem-pack-5-11.patch`: four wrappers, explicit fixed eight-coefficient groups, only 1024 operation paths. Same compression/decompression algorithms and output bytes; stack samplers unchanged. Encoders retain `sliceForAppend` prefix/length/capacity behavior, value polynomial inputs; decoders read fixed arrays without modifying input. Five-bit packing occupies only 40 bits of uint64; eleven-bit expressions retain all low required bits before byte truncation or mask to 2047. No unsafe aliasing or key storage.
* `stack-patches/mlkem-compress-reciprocal.patch`: n=(uint64(x)<<d)+q/2, c=ceil(2^35/q)=10321340, output `(n*c>>35)&((1<<d)-1)` for canonical x and d=1..11. With n<=6817408, delta=c*q-2^35=2492, n*delta<=n*(q-1)<=22688333824<2^35. The quotient perturbation is <1/q, so integer floor equals exact division by q. Max product 70364785886720<2^46. Same rounding/wrap, no division/table/secret branch. No broader d or unreduced-input contract.

Primary reference: `references/kyber`, official pq-crystals/kyber **3edd5af5991927164edd4aacebfcbee00b8064e7**, `ref/poly.c` and `ref/polyvec.c`, fixed-width codecs and reciprocal compression. The generic 35-bit reciprocal here is independently derived. Reference LICENSE files offer public-domain/CC0; no differently licensed source transplant is proposed.

Stack changes are matrix sampling/branchless parsing, not these codecs or the compression helper; no overlap with their arithmetic contracts. Fresh 1024 generic encoding is 11.67% cumulative, including compression; 768 compression is only 1.07% flat. Incremental A/B results are still required. Earlier unstacked attribution/scouts are not acceptance evidence.

## 3. Quick R2 arithmetic adaptation — ML-KEM ONLY

Prepared independent variants:

* `stack-patches/mlkem-r2-gamma-fusion.patch`: operation-local short-vector gamma precomputation plus fused canonical multiply-add. Shared field helpers + both 768 and generated 1024 call sites; **no inverse change**.
* `stack-patches/mlkem-r2-invscale.patch`: fold final inverse NTT scaling into its final butterfly, field.go only.
* `stack-patches/mlkem-r2-local-precompute.patch`: combined version. **Do not apply alongside either constituent**; it already includes both.

The old selected R2 patch failed apply-check only at its helper-append context because `sampleNTT` has been replaced by `sampleNTTMatrix/parseSampleNTT`; new patches append after the new parser, leaving both new samplers entirely unchanged. Both parameter sets' arithmetic call sites remain the old canonical nttMul+polyAdd pipeline; no lazy ML-KEM representation was introduced by this stack. All R2 adapted patches apply-check against 62c2afb8.

**Bounds/aliasing remain valid:** finished ML-KEM sampler outputs and all ordinary field/NTT operations are canonical [0,q). The parser's temporary rejected coefficient stores are not observed by arithmetic callers; only completed matrices enter multiplication. Each fused output sum is <=2(q-1)^2+(q-1)<2q², within unchanged Barrett reduction. Gamma precomputation is canonical. Each input pair is loaded before writes, preserving exact h==f/h==g/all-equal alias cases; production accumulators are separate. Gamma temporaries must correspond to original g at invocation; no unsafe partial overlap introduced. Scratch is operation-local 256*k bytes, no persistent key cache.

Final inverse stage uses zetas[1]=1729, scale=3303 and constant scaled zeta=1652. Canonical a+b<=2q-2 fits uint16; (a+b)*3303<2q²; other half retains fieldMulSub's canonical-input bound. No wide/partial ML-DSA math is borrowed. Both generated-1024 call sites were updated by matching the six parameterized transformations; parent should run/compare the existing generator when CPU is available (not done here).

**These are old audit ideas awaiting new incremental measurement, not new discoveries or already-proven stacked wins.** Test reducer alone on stack first, then add R2 arithmetic, measuring interaction instead of summing historic percentages. No ML-DSA private-t1 deletion appears anywhere in these patches; stack private t1 is intentionally left intact.

## External tests / central execution

`stack-tests/mlkem/`:

* `canonical_round3_test.go`, `select_round3_test.go`: exhaustive [0,2q) helper variants and actual production reducer against a%q.
* `encoding_round3_test.go`: all canonical x for all d=1..11 against exact rounded division; specialized/generic packing differential tests, append guards and read-only decoder checks.
* `arithmetic_round2_test.go`, `inverse_round2_test.go`: existing standalone R2 arithmetic alias/corner and full inverse-transform oracle tests, compatible with the canonical stacked ML-KEM types.
* `reference_round2_test.go`: original full keygen/PKE arithmetic oracles for 768/1024, **adapted matrix expansion to call stack sampleNTTMatrix** instead of removed sampleNTT. This intentionally tests R2 arithmetic against the old arithmetic with the same landed-stack sampler; stack's own sampler/KAT tests separately cover batched sampling correctness.

`stack-tests/mldsa/`:

* `canonical_round3_test.go`, `select_round3_test.go`: every candidate declaration and every candidate/production invocation now uses **fieldElementPartiallyReduced**. Sub32 explicitly converts to uint32. Entire [0,2q) oracle comparison remains unchanged. No tests incorrectly pass raw uint32 into the new typed API.

Files were written externally, not installed. Copy each directory's files into the corresponding internal package when parent is ready. Baseline-compatible helper names avoid requiring production changes to compile, **but no compile or test pass is claimed here**. Full ML-DSA exhaustive multi-ablation tests contain tens of millions of simple cases; schedule separately from benchmarks.

Use the new worktree with parent's selected toolchain and full public-operation benchmark files. Suggested gates after installing tests:

```sh
# In /home/exedev/go-pq-stack, CPU work performed only by parent:
bin/go test -p=1 crypto/internal/fips140/mlkem crypto/internal/fips140/mldsa -run '^TestRound3' -count=1
bin/go test -p=1 crypto/internal/fips140/mlkem -run '^TestRound2' -count=1
bin/go test -p=1 -short crypto/internal/fips140/mlkem crypto/internal/fips140/mldsa crypto/mlkem crypto/mldsa crypto/hpke
```

Public A/B comparisons must be **stack-only baseline vs stack+candidate**, same compiler/bench fixtures. Both ML-KEM sizes, cold parse+Encaps and valid/invalid Decaps; ML-DSA all parameter sets with representative deterministic-signing corpus, cold parse+Verify and seed-inclusive signing controls. Keep batched SHAKE enabled exactly as in the stack for native measurements; separately test purego, FIPS mode, stack allocation checks, arm64 codegen/correctness, deterministic signatures/KATs, rejected signatures, implicit rejection and concurrency. No helper timing accepted as API gain; no code path may omit required validation/CAST/PCT or change archived modules.

Preparation scripts: `pq-stack-prepare.py` (reducers/codecs/typed tests), `pq-stack-r2-prepare.py` (R2 adaptation/oracles). **Fresh stacked profiles have been read and summarized in `pq-stack-profile-followup.md`; incremental A/B measurements remain pending from parent.** That follow-up also documents optional `mldsa-inverse-final-scale.patch` and its external `inverse_round3_test.go`. Do not substitute historical unstacked evidence.
