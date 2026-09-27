# ML-KEM / ML-DSA / HPKE second original-performance pass

Date: September 27, 2026. Baseline: `04a082e1`. **No compilation, tests, or timing run; no production source edits by this audit.** Standalone patches were parsed/formatted in scratch directories and `git apply --check` passed. Six test-only files are present in the working tree; their recoverable patch is `round2/patches/pq-tests.patch`.

## Recommended central experiment order

1. **ML-KEM fused accumulation + per-operation gamma precomputation.** Best static lead: removes repeated arithmetic from complete Encapsulate/Decapsulate/keygen, not an unusual-architecture helper. No persistent key growth or cache synchronization. Compare baseline, fusion alone, then fusion+precomputation.
2. **ML-DSA challenge sampler buffering.** Small isolated patch outside the pending matrix/mask sampler CLs. Require a public representative-corpus Sign/Verify gain before promoting it.
3. Optional diagnostic ML-KEM pointer/pass-only control distinguishes removed copies from arithmetic fusion. Do not headline its helper performance.

No percentage claims: arithmetic counts below are exact source-level work differences, not timing predictions. No new HPKE-only candidate cleared the threshold; complete HPKE benchmarks are supplied to measure the ML-KEM improvements through its wrappers/KDF/AEAD.

All patch paths below are relative to `/home/exedev/crypto-audit/round2/patches/`. **Each production patch independently applies to baseline; do not apply the three ML-KEM variants together.** The ML-DSA patch is independent of those variants.

| Patch | Purpose | Production scope |
|---|---|---|
| `mlkem-fused-precompute.patch` | Main combined candidate | Shared field helper + 768 + equivalent generated 1024 edits |
| `mlkem-fused.patch` | Separate fusion from precomputation | Same paths, no new temporary gamma arrays |
| `mlkem-pointer-accumulate.patch` | Optional copy/pass-only control | Same call sites, retains old reduction arithmetic |
| `mldsa-ball-buffer.patch` | Independent sampler candidate | `mldsa/field.go:sampleInBall` only |
| `pq-tests.patch` | Baseline-compatible test/benchmark files already installed | Six new `*_round2_test.go` files |

## 1. Main lead: ML-KEM gamma precomputation, local to one operation

### Actual repeated work and proposed identity

`crypto/internal/fips140/mlkem/field.go:nttMul` processes each pair as

```
h0 = a0*b0 + (a1*b1 mod q)*gamma mod q
h1 = a0*b1 + a1*b0 mod q
```

This costs three Barrett reductions per coefficient pair: inner `fieldMul`, then two `fieldAddMul`. In `mlkem768.go:kemKeyGen`, every s[j] participates in k matrix products. In `pkeEncrypt`, every r[j] participates in k matrix-row products and a further t inner product. Reassociate the even term as `a1*(b1*gamma mod q)`, computing the gamma-scaled odd coefficients once per vector polynomial. A helper fills a `[128]fieldElement` (256-byte) temporary through pointers; another adds products into the accumulator using that temporary.

We deliberately precompute the **short vector**, not the k×k public matrix. `sGamma` and `rGamma` hold k half-polynomials and are discarded after the operation. This does not change persistent key layouts, public-key import cost, serialized bytes, or immutable-key sharing.

| Core operation | Reused vector | Removed `fieldMul` / Barrett reductions, 768 | 1024 |
|---|---|---:|---:|
| `kemKeyGen` | s across k rows | 128(k²−k) = 768 | 1536 |
| `pkeEncrypt` | r across k rows plus t dot product | 128k² = 1152 | 2048 |
| `pkeDecrypt` | None in this patch | 0 precompute savings | 0 |

Encapsulate calls `pkeEncrypt`; Decapsulate calls both `pkeDecrypt` and unconditional re-encryption, so both public operations benefit from the encryption saving. Keygen benefits independently. Public GenerateKey in FIPS mode additionally executes the existing PCT; do not interpret the core-work table as the entire FIPS GenerateKey operation count.

### Memory / cold-warm tradeoff

Extra live raw temporary storage is 256k = **768/1024 bytes** in keygen/encryption, plus slice metadata. Expected stack residence must be checked centrally with escape output and `-benchmem`; **not asserted as measured**. Stack growth and spills could offset the saved multiplications. No additional retained per-key bytes, laziness, locks, global cache, or interface dispatch. Cold public-key parse+encapsulation receives the same arithmetic improvement but unchanged matrix expansion dilutes its percentage. Warm encapsulation and warm decapsulation should expose the change more clearly.

### Why not persist the cache in keys?

A private `sGamma` cache would cost 768/1024 raw retained bytes per key and could save a further 384/512 reductions in every decryption. It would also need initialization in both seed and testing-only expanded-key import paths, with memory/constructor/PCT review. Public matrix/t caches would cost 256(k²+k) = 3072/5120 raw bytes per expanded public component, duplicating much more state to avoid a **small transient vector cache**. Neither is needed for the main benefit. Defer these retained-cache variants unless the local precomputation already proves a convincing whole-operation gain. This is materially stronger than simply moving constructor work off a warm benchmark.

## 2. Companion: pointer-based fused ML-KEM nttMulAdd

The four call sites in each 768/1024 implementation currently use `acc = polyAdd(acc, nttMul(a,b))`: matrix-vector keygen, matrix-vector encryption, t inner product, and secret-key decryption inner product. Each polynomial is 512 bytes and is passed/returned by value at the source level. Whether each source-level copy survives optimization remains a compiler question; no disassembly or compile claim is made here.

`nttMulAdd(h,f,g *nttElement)` writes directly into the accumulator and combines the accumulator coefficient into the existing Barrett input. It eliminates the separate polynomial-add pass and two final `fieldReduceOnce` calls per coefficient pair. The pointer-only control retains `fieldAdd(h[i], fieldAddMul(...))` to isolate pass/copy removal from the stronger arithmetic identity.

### Bound proof (no lazy representation change)

Every input coefficient, gamma, cached gamma product, and accumulator is in `[0,q)`. Each fused even/odd sum is at most

```
2(q−1)² + (q−1) = 2q²−3q+1 < 2q².
```

That is exactly the documented domain of the existing ML-KEM `fieldReduce`, and safely fits uint32. The inner product term in the non-precomputed variant is reduced before multiplying gamma. All outputs remain fully canonical `[0,q)`. No reducer implementation, NTT representation, serialization invariant, or timing-dependent normalization changes.

**Do not sum an entire k-term dot product before reducing:** that would exceed the current reducer's proven domain. This patch reduces once per output per multiply-add; it does not recreate the pending ML-DSA wide-accumulator representation work.

Fusion removes k²·256 = 2304/4096 coefficient-add reductions per core keygen, (k²+k)·256 = 3072/5120 per encryption, and k·256 = 768/1024 per decryption. These savings are separate from the table above but must **not** be converted into additive timing estimates.

### Aliasing, concurrency, security, FIPS

* Each coefficient pair is loaded before either output is written. Exact `h == f`, `h == g`, and all-three-equal aliasing work; test cases cover these. Production callers use separate accumulators. Partial unsafe-overlap aliases are neither created nor promised.
* Precomputed gamma values match the original g at call time. Inputs and immutable key matrices are never modified. There is no shared mutable cache; concurrent operations retain current behavior.
* Loops and indices depend only on dimensions/coefficient position. No secret-dependent branches, division, rejection shortcut, random-consumption change, or skipped decapsulation re-encryption/fallback. Extra temporaries contain already-present secret-derived values and receive the same existing memory lifecycle policy.
* FIPS CAST/PCT and RecordApproved calls remain intact. Current module source changes only; do not edit archived snapshots. Full FIPS-mode/public tests remain mandatory.
* Both generated parameter sets are patched equivalently without running the Go generator during the no-compile window. Parent should verify regeneration when CPU work is authorized; pending CL831724 is generator maintenance, not a performance discovery.

## 3. Independent ML-DSA sampleInBall buffering

Current `mldsa/field.go:sampleInBall` performs an eight-byte SHAKE256 read followed by a separate one-byte `Read` for every accepted or rejected candidate index. Every SHAKE `Read` calls `RecordApproved` and sponge read/copy logic. The challenge has τ = 39/49/60 nonzero coefficients, and signing resamples it on every rejection attempt.

Patch reads **one 136-byte SHAKE256 rate block**, copies the first eight sign bytes into a separate `[8]byte`, then uses the rest for index candidates. On exhaustion it refills all 136 bytes; the sign copy is not overwritten. No fixed cap on rejection is introduced. Sequential accepted indices and signs are exactly unchanged. The common amd64/arm64 generic squeeze logic does not permute merely because the final rate-sized block has just been exhausted; it permutes on a subsequent read. Thus buffering does not introduce an extra Keccak permutation for the same consumed prefix, although it copies unused tail bytes.

This adds a 136-byte raw buffer and cursor, compared with the previous eight sign bytes and one-byte candidate temporary. No key-object growth. Signing and verification call it; seed-only `NewPrivateKey` is the negative control. GenerateKey's core expansion is unchanged, **but FIPS-mode GenerateKey includes signing/verification PCT and can therefore benefit**. No special-architecture path is proposed.

The challenge sampler is already explicitly non-constant-time; its variable behavior is based on the challenge output. The byte sequence and existing permitted rejection decisions are preserved. Fewer FIPS-approved hash Read calls do not bypass the enclosing approved operation or self-tests. All SHAKE data consumed is local to this sampler; discarding unused squeezed bytes does not affect another consumer.

This is a plausible small win, not yet a strong measured public-operation improvement. Most Verify cost remains elsewhere. Reject it if only the sampler looks faster or normal Verify/Sign does not improve robustly.

## Novel-vs-known check

Read prior `pq-hpke.md`, `PENDING.md`, `pending/pq.md`, and actual relevant saved patch bodies. Fresh Gerrit query `project:go status:open (message:mlkem OR message:mldsa)` saved as `round2/pq-open.json`; it lists the same relevant pending performance family plus generator/DIT/API work. Supplemental Gerrit message query for `sampleInBall` or ML-KEM precomputation (saved in `pq-supplementary.json`) returned no results; this is **not proof of worldwide algorithmic novelty**.

* **Excluded exactly:** ML-DSA `nttMulAdd`/wide accumulation is already in **822040**, including pointer operands and matrix-loop replacements. No ML-DSA arithmetic patch proposed. 822001/822002 and removed private dead t1 remain excluded.
* **818724/818725:** ML-KEM matrix sampler batching/branchless parsing; neither implements this gamma-vector cache or scalar mul-add fusion.
* **818920/818921/818922:** ML-DSA A sampling/branchless parsing/mask expansion; none changes `sampleInBall` in the inspected patch bodies. This is the previously deferred separate challenge-byte reader, now justified for a higher-complexity pass.
* **778420:** inspected SIMD base multiplication still multiplies odd×odd and then applies gamma (in vector Montgomery form). It does not perform this once-per-short-vector precomputation or replace the matrix loops with this scalar fused helper. No SIMD/assembly proposed; do not mix its gains into ours. There is conceptual shared polynomial arithmetic and likely textual coexistence work if combined later.
* The experiment is original relative to the checked Go patch set, **not a claim that gamma precomputation or buffered sampling is a novel cryptographic technique**.

## Other hypotheses rejected / bounded

* Broadly changing every ring/NTT function to pointer-in/pointer-out is too invasive without compiler evidence; many ntt transforms necessarily need a private working copy. Fused pointer accumulation directly targets repeated large operands without changing the whole representation/API.
* ML-DSA conversion/NTT caching in public keys would shift work from Verify to constructors and grow keys (t1 alone 4/6/8 KiB; A much more). Cold parse+Verify cannot remove that work, and it reverses the project's documented one-use-public-key decision. No new cache candidate promoted.
* ML-DSA private-key A/s1/s2/t0 already use retained NTT/Montgomery representations. The dead private t1 was already removed. No repeat discovery.
* HPKE known-private constructor copies were previously too small/noisy overall; do not retry them. Static suite/hash caching would add state/dispatch for minor setup work; no compelling complete-operation benefit identified. Nonce-buffer alias tricks and record-only helper wins remain below threshold.
* ML-KEM keygen's temporary public-key encoding and HPKE constructor copies remain unpromoted: do not claim source-level struct copying is an actual allocation/CPU bottleneck without compiler and public-operation evidence.

## Prepared correctness experiments (not run)

Files listed in `round2/pq-artifacts.txt` and bundled in `pq-tests.patch`:

1. `internal/fips140/mlkem/arithmetic_round2_test.go`: candidate helpers shared with prepared patch text; 512 deterministic random/corner trials, all-zero/all-q−1 combinations, every gamma position, four successive accumulations, exact pointer aliasing in both positions and all operands equal. Compared with untouched baseline `polyAdd(nttMul(...))`.
2. `internal/fips140/mlkem/reference_round2_test.go`: complete saved baseline keygen/PKE encrypt/decrypt bodies for **both 768 and 1024**. Sixteen deterministic seed/message/randomness cases compare every expanded-key field, every ciphertext byte, and decryption for valid and bit-mutated ciphertexts. Candidate production arithmetic is therefore checked against the old operation, not only a roundtrip against itself.
3. `internal/fips140/mldsa/ball_round2_test.go`: saved original byte-read oracle versus buffered helper **and production sampleInBall**, 1024 challenge seeds for all three parameter sets; exact coefficients/weight checked. Structural copies with an injected finite reader force acceptance just before/at/after block boundaries, three refills, and zero/all-one/alternating sign bytes. Synthetic reader tests target the exact buffering loop copied from the patch; actual production SHAKE refill on such rare streams is not directly forced. All finite test streams are long enough for full reads; no generic reader API is added to production.
4. `crypto/mlkem/operations_round2_test.go`: public 768/1024 seeded roundtrips; same-length corruption returns a stable different implicit-rejection key; short ciphertext rejects; public coefficient 4095 rejects under modulus checking. Complete public benchmark suite.
5. `crypto/mldsa/operations_round2_test.go`: public complete benchmark suite with existing representative rejection corpora. Build-tagged out for FIPS v1.0, matching existing public ML-DSA tests.
6. `crypto/hpke/operations_round2_test.go`: all five pure/hybrid PQ KEMs, complete public one-shot Seal/Open with 128-byte plaintext, HKDF-SHA256/AES256GCM, warm and import/parse-inclusive cold paths.

Parent correctness gates after selecting/applying a variant:

```
bin/go test -p=1 crypto/internal/fips140/mlkem crypto/internal/fips140/mldsa \
  crypto/mlkem crypto/mldsa -run '^TestRound2' -count=1
bin/go test -p=1 -short crypto/internal/fips140/mlkem crypto/internal/fips140/mldsa \
  crypto/mlkem crypto/mldsa crypto/hpke
```

Then existing public accumulated/KAT/Wycheproof suites, ML-DSA ACVP rejection KATs and CAST rejection paths, ML-KEM CAST, HPKE vectors; repeat FIPS mode and purego; race/concurrent key use; normal arm64 validation before portable claims. Public ML-DSA existing negative tests cover changed message/context, signature corruption, length/hint/z bounds and external-mu behavior. Preserve deterministic signatures and rejection paths exactly. These are instructions, not successful-test claims.

## Central timing and memory plan

Use parent's serialized pinned-CPU/GOMAXPROCS=1 methodology and existing baseline controls, alternating independent old/new binaries. No compile concurrently with timings. Run at least 10 repetitions at 1s for chosen public groups (or parent's established longer control schedule), compare medians/confidence with benchstat. Keep a control rerun of baseline before/after; avoid treating randomized Sign variance as a sampler effect.

* `BenchmarkRound2MLKEM`: both sizes; GenerateKey, SeedExpand, EncapsWarm, ParseEncapsCold, DecapsWarm, DecapsRejectWarm, SeedExpandDecapsCold. All report allocs/bytes. Compare **baseline→fused**, **fused→fused-precompute**, optionally **baseline→pointer-only**. Final candidate must improve whole public operations, especially cold/typical use, without merely spending persistent memory to inflate warm results.
* `BenchmarkRound2MLDSA`: 44/65/87 GenerateKey, SeedExpand negative control, SignDeterministicWarm (representative message corpus), SignRandomizedWarm supplementary, SeedExpandSignCold, VerifyWarm, ParseVerifyCold. Existing `BenchmarkSign` and `BenchmarkVerify` provide independently written controls. Preserve rejection corpus; do not benchmark a single favorable deterministic signature.
* `BenchmarkRound2HPKE`: five PQ KEMs, SealWarm/ParseSealCold/OpenWarm/SeedExpandOpenCold. These measure full KDF/AEAD/wrapper dilution, not a claim of a new HPKE algorithm.
* “Cold” here means key parsing/seed expansion included, **not CPU-cache flushing**. Add a rotating-key workload if investigating actual large working sets; report it separately from constructor-inclusive cold results.
* Capture B/op and allocs/op and compiler escape/frame diagnostics separately. Raw key object size must remain unchanged for these patches. Verify no escaping gamma arrays/buffer and inspect stack-frame changes rather than infer them from fewer source copies. Test FIPS mode separately because PCT changes GenerateKey workload substantially; steady-state harness setup intentionally warms one-time CASTs. Cold process first-use CAST cost is not measured by these benchmarks.

**Acceptance threshold:** robust complete-operation win on ordinary amd64, plausible/verified arm64 follow-up, no cold-path or memory regression large enough to erase benefit. The main ML-KEM candidate deserves central CPU budget; the ML-DSA sampler deserves a small bounded experiment, not automatic adoption.

## Follow-up: fold ML-KEM inverseNTT scaling into the final butterfly

Prepared during the parent's benchmark pause, **without compiling, testing, formatting tools, disassembly, or timing**. Only source inspection and small artifact-generation/file-writing commands were used. The earlier apply-check status covers the original four variants, **not this newly prepared follow-up**.

New independent artifacts:

* `patches/mlkem-inverse-final-scale.patch`: shared `mlkem/field.go` only, no production edit applied. Orthogonal to either fused-accumulation patch; also valid as a standalone baseline experiment.
* `patches/mlkem-inverse-final-scale-tests.patch`: seventh test-only file, already present as `src/crypto/internal/fips140/mlkem/inverse_round2_test.go`. This addition is separate from the original six-file `pq-tests.patch`.
* `pq-inverse-prepare.py`: source-only preparation script, no compiler/test invocation.

### Last-stage index and identity verified statically

The len=2,4,8,16,32,64 stages have 64+32+16+8+4+2 = **126 groups**. Starting at k=127, they consume zetas[127] through zetas[2], leaving **k=1** for the single len=128 group. `zetas[1] = 1729`. The final scale is 3303 = 128⁻¹ mod 3329.

Keep the first six stages unchanged, then compute each final pair from canonical a,b:

```
out0 = fieldReduce(uint32(a+b) * 3303)
out1 = fieldMulSub(zetaScaled, b, a)
zetaScaled = 1729 * 3303 % q = 1652
```

`zetaScaled` is a **compile-time constant**, so this does not spend one runtime field multiplication to obtain it. The new constant/table relationship has an explicit test. A version that instead computes `fieldMul(zetas[1],3303)` once at runtime would save 127 rather than 128 field multiplications/reductions per invocation, absent compiler folding.

Both identities follow from modular distributivity/associativity. `a+b <= 2q−2` fits uint16; `(a+b)*3303 < 2q²`, satisfying the existing Barrett reducer bound. `fieldMulSub(1652,b,a)` has its existing documented canonical-input bound: `b−a+q` represents an integer in [1,2q−1], multiplied by a coefficient below q. Outputs remain canonical. No partial representation, table mutation, input-output alias change, secret-dependent branch, or additional allocation/key state is introduced. Final outputs overwrite exactly the existing two halves of the local by-value array.

### Work scope, not runtime proof

Each final pair previously performed a multiplication/reduction for its difference and two subsequent scale multiplications/reductions. The fused pair needs two, removing **128 Barrett multiplications/reductions** per inverseNTT. It also removes 128 `fieldAdd` single reductions and the separate final whole-array scaling pass. This count is not a speedup estimate.

* Core keygen/seed expansion has no inverseNTT: unchanged negative control for this independent patch. FIPS GenerateKey's existing PCT can benefit via encapsulation/decapsulation.
* Encryption uses k+1 inverseNTTs: saves 512/640 Barrett multiplications/reductions for 768/1024.
* Decapsulation executes decryption plus re-encryption, using k+2: saves 640/768 for 768/1024. Existing CCA re-encryption and fallback behavior is untouched.
* No persistent or array-sized transient memory increase. No generator update required because field.go is shared by both parameter sets. Current module only; frozen snapshots remain untouched.

### Pending SIMD overlap check

Inspected saved exact-current-revision **CL778420** (`pending/778420.patch`). Its generic inverseNTT is only renamed `inverseNTTGeneric`; the separate scale pass is retained. Its added `inverseNTTArchsimd` runs `length <= 128`, then explicitly has a separate **“Final multiplication of every coefficient by 128⁻¹ mod q”** loop using `invScaleMont`. Thus this last-stage scaling fusion is **not implemented in that inspected pending change**. This is a check against its saved revision, not a claim that the underlying algebraic idea is novel in cryptography. Pending ML-DSA representation/reduction work remains excluded.

### Tests prepared, not run

`TestRound2InverseNTTScaleConstants` explicitly checks the final zeta index/value, the inverse scale, and scaled zeta. `TestRound2InverseNTTFinalScale` compares the candidate **and actual production inverseNTT** against a frozen complete baseline implementation with its old separate scale pass. Cases include all-zero, all-one, all-q−1, opposite halves/alternating combinations drawn from {0,1,q/2,q−2,q−1}, every basis position at 1 and q−1, and 512 fixed-seed random canonical NTT arrays. It checks canonical outputs, NTT(inverseNTT(f))==f, and inverseNTT(NTT(r))==r. These test the full transform, not only a standalone final-pair helper.

When authorized, run new `TestRound2InverseNTT*`, existing field tests and full public ML-KEM accumulated/KAT/implicit-rejection tests for both sizes. Then run the same complete `BenchmarkRound2MLKEM` and PQ `BenchmarkRound2HPKE` suite in three isolated configurations: baseline, inverse-only, and accepted precompute+fusion plus inverse. The parent reports initial precompute+fusion operation improvements; those are **not measurements of this new follow-up**, and no extrapolated/additive runtime claim is made here.
