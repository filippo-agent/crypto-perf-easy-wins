# ML-KEM / ML-DSA / HPKE low-complexity performance audit

Source: `/home/exedev/go-crypto`, baseline `2ff5743d9fd52fac166225e75df0c2c1edf82abb`.
Audit date: September 27, 2026. All line numbers below refer to that baseline.

**Best original lead: delete an unused ML-DSA private-key precomputation. Three deleted lines remove 8 KiB per key and 4/6/8 NTTs per key generation.** The second distinct lead is avoiding known-key HPKE type-validation copies. **Do not count the initial signing-rejection or sampler-buffer findings as new:** open CL 822002 already implements the former, and CL 818724 subsumes the latter.

No production source modified by this audit. No benchmarks executed; parent owns all timing. Prepared patches are outside the repository, unapplied. Audit-only tests/benchmarks added in three owned directories and compiled successfully. The focused ML-KEM sampler equivalence test passed.

## 1. Strong: remove dead `PrivateKey.t1` and its precomputation

### Exact locations and reason

* `src/crypto/internal/fips140/mldsa/mldsa.go:62`: `t1 [maxK]nttElement` stores `NTT(t₁ ⋅ 2ᵈ)` in the private key.
* `mldsa.go:224`, `newPrivateKey`: calls `computeT1Hat(priv.t1[:k], t1)` after encoding and hashing the public key.
* `semiexpanded.go:113`, `TestingOnlyNewPrivateKeyFromSemiExpanded`: same precomputation. (See patch for exact context.)
* These are **the only two references to `.t1`** in this package. Neither reads it. `signInternal` reads A, s1, s2, t0, k and the public-key hash, not this field.
* `verifyInternal`, `mldsa.go:635–648`, reconstructs its own local `t1Hat` from public-key bytes. The comment in `newPublicKey` explicitly explains the move away from large public-key precomputation.

Initially I considered computing t1Hat as `polySub(tHat[i], t0[i])`, reusing the existing NTT results. The reference audit found the entire result is dead, so **deletion is strictly better and requires no algebraic argument**.

### Minimal diff

Unapplied patch: `/home/exedev/crypto-audit/mldsa-dead-t1.patch`.

```diff
 type PrivateKey struct {
     ...
-    t1   [maxK]nttElement // NTT(t₁ ⋅ 2ᵈ)
     ...
 }
```

Delete `computeT1Hat(priv.t1[:k], t1)` in the two constructors. **Do not delete `computeT1Hat` itself:** public verification needs it.

### Impact / confidence

* All `crypto/mldsa.GenerateKey` and `NewPrivateKey` parameter sets benefit.
* Removes k forward NTTs (4, 6, 8 for 44, 65, 87), the conversion loop feeding each transform, and 8192 bytes of private-key storage (`8 × 256 × 4`).
* The public wrapper stores the inner private key by value, so the saving also reduces its allocation/copy volume. There are currently two large key allocations in public key generation (explicitly noted in `crypto/mldsa/mldsa_test.go:157–176`).
* No expected signing/verification output changes. No percentage claimed before timing. This is the strongest maintenance/benefit ratio found.

### Benchmarks, tests, risks

Existing `crypto/mldsa` `BenchmarkKeygen/ML-DSA-{44,65,87}` uses public `NewPrivateKey`; run with `-benchmem`, separately from other work. `BenchmarkSign`/`BenchmarkVerify` are useful non-regression checks.

Run public `TestAccumulated` in short mode, `TestGenerateKey`, `TestSign`, `TestExternalMu`, `TestUninitialized`; internal `TestACVPRejectionKATs` and `TestCASTRejectionPaths`; semi-expanded import/export tests under the cross-version FIPS test suite. Known-answer hashing covers keys/signatures independently of the deleted cache.

Only an internal layout changes; no exported fields, serialized encodings, randomness, FIPS CAST/PCT calls, or constant-time paths change. Older frozen module snapshots should remain untouched; public wrappers use the module's exported types and do not name the deleted field. No assembly/layout dependencies exist in this owned package. `git apply --check` passed for the patch.

## Excluded A — already open: defer `cs2` computation until after `z` rejection

**WITHDRAWN AS A NEW DISCOVERY.** Downloaded and inspected the current patch of **CL 822002** (revision 4 in supplied metadata): it does this and the finer-grained cs1/cs2 loop fusion suggested below. Preserve the following only as audit history; do not spend benchmark budget or propose a duplicate CL. The local `mldsa-defer-cs2.patch` is superseded.

### Exact locations and minimal change

`src/crypto/internal/fips140/mldsa/mldsa.go:489–521`, `signInternal`:

```go
cs1 := make([]ringElement, l, maxL)
for i := range cs1 {
    cs1[i] = inverseNTT(nttMul(c, s1[i]))
}
// Currently computes all cs2 here.
z := make([]ringElement, l, maxL)
for i := range y {
    z[i] = polyAdd(y[i], cs1[i])
    if coefficientsExceedBound(z[i], γ1β) {
        // existing hook
        continue sign
    }
}
// Move the following existing block here:
cs2 := make([]ringElement, k, maxK)
for i := range cs2 {
    cs2[i] = inverseNTT(nttMul(c, s2[i]))
}
```

Unapplied patch: `/home/exedev/crypto-audit/mldsa-defer-cs2.patch`.

### Benefit and correctness

Saves k inverse NTTs and k pointwise products **on every attempt rejected for z**. Successful attempts execute exactly the same work. No extra state, different arithmetic, reordered rejection checks, changed random consumption, or changes to the returned deterministic signature. The `cs2` result is first consumed only after the z rejection loop.

Use existing `BenchmarkSign/ML-DSA-{44,65,87}`: unlike a single deterministic-message microbenchmark, these use representative message collections engineered to match real rejection distributions (`crypto/mldsa/mldsa_test.go:744–778`). Run the ACVP rejection KATs and accumulated signing tests. Randomized signing can be a supplementary check, not the primary stable benchmark.

Timing changes only according to the existing permitted rejection reason. The source explicitly permits disclosure of rejection check/index (`signInternal` rejection-loop comment); this does not add a new secret-dependent branch or disclose coefficient values. Still request normal cryptographic review.

An optional follow-up is to compute each `cs1[i]` inside the z loop and each `cs2[i]` inside the r0 loop, avoiding unused later polynomials after an early coefficient rejection. Not included in the minimal patch: first measure the clearer block move alone.

## Excluded B — subsumed by open sampling work: align ML-KEM sampler reads to the SHAKE rate

**NOT AN ORIGINAL DISCOVERY FOR THE FINAL REPORT.** Inspected **CL 818724** (revision 6 in supplied metadata). It replaces sampleNTT with batched matrix sampling, explicitly squeezing three 168-byte blocks, then 168-byte refill blocks. Thus it already removes the small-read issue more comprehensively. CL 818725 adds the associated branchless parse fast path. Our one-line change is smaller in isolation, but overlaps the open work and should not be counted as new. Preserve the following only as audit history; sampler bench files/patch are optional diagnostics, not priorities.

`src/crypto/internal/fips140/mlkem/field.go:491–548`, `sampleNTT`, especially line 522.

```diff
- var buf [24]byte // buffered reads from B
+ var buf [168]byte // buffered reads from B, matching the rate of SHAKE-128
```

Unapplied patch: `/home/exedev/crypto-audit/mlkem-sample-rate.patch` (gofmt afterward).

`internal/fips140/mldsa/field.go:sampleNTT` already uses exactly this 168-byte buffering approach. Both sizes are divisible by 3, the sampler's read unit; 168 is also exactly 7 × 24. No rejection/decoding logic needs changing.

Why it could help:

* Every ML-KEM matrix entry reads roughly 0.5 KiB of SHAKE output, currently through about twenty small `Read` calls rather than usually three rate-sized calls.
* Each SHAKE `Read` invokes `RecordApproved`, then squeezing/copy logic (`internal/fips140/sha3/shake.go:74–79`, `sha3.go:121–143`). These calls can be amortized.
* Does not add Keccak permutations in the generic implementation: both buffers partition the same 168-byte sponge blocks, and squeezing doesn't permute after a completely consumed final output block. Inspected the s390x read path too; it also avoids a final permutation for rate-sized outputs. It does copy unused bytes at the tail and uses 144 more stack bytes, so **measure rather than assume a win**.
* Affects ML-KEM-768/1024 private-key expansion and public-key parsing (9 or 16 sampled matrix entries), hence HPKE PQ key setup too. Not normal encapsulation/decapsulation with already-expanded keys.

Prepared `internal/fips140/mlkem/field_audit_test.go`: exact sampler copy with only the buffer size changed, equivalence test for 64 seeds × 16 index pairs, and paired sampler benchmarks. Equivalence test passed. The microbenchmark is only diagnostic; acceptance should depend on whole public operations.

Prepared `crypto/mlkem/mlkem_audit_test.go`: `BenchmarkAuditMLKEM/{768,1024}/{NewPrivateKey,ParseAndEncapsulate}`. Existing `BenchmarkEncaps` also includes parsing, but only covers 768. Run accumulated ML-KEM tests, Wycheproof and CAST with the actual patch before adoption. No cache state or new cryptographic algorithm. Public matrix rejection timing is already variable.

## 2. Distinct smaller lead: avoid reconstructing ML-KEM public keys merely to validate known HPKE private keys

### Locations

`src/crypto/hpke/pq.go`:

* `hybridKEM.NewPrivateKey:279` calls `newHybridPrivateKey`.
* `newHybridPrivateKey:283–303` calls `pq.Encapsulator()` for a type assertion.
* `mlkemKEM.GenerateKey:492–498` and `NewPrivateKey:500–506` call `NewMLKEMPrivateKey`.
* `NewMLKEMPrivateKey:481–490` calls `priv.Encapsulator()` to discover the parameter set.

These callers just created the private key through the selected KEM's own trusted constructors. Their parameter set is already known. However, the public ML-KEM `Encapsulator` wrapper constructs a new expanded public-key object via `internal/fips140/mlkem/mlkem768.go:127–133` (and generated 1024 equivalent): it copies the entire public matrix and t vector. Raw struct sizes are 6208/10304 bytes, plus the outer wrapper; allocator-rounded sizes may differ.

### Minimal diff

Unapplied patch: `/home/exedev/crypto-audit/hpke-known-private.patch`.

* In `hybridKEM.NewPrivateKey`, return `&hybridPrivateKey{kem, bytes.Clone(priv), k, pq}, nil`.
* In the two concrete ML-KEM KEM private-key constructors, return `&mlkemPrivateKey{kem, pq}, nil`.
* **Retain all validation in the public generic constructors** `NewHybridPrivateKey` and `NewMLKEMPrivateKey`; these accept hardware/custom implementations and genuinely need their checks.

Expected: avoid discarded expanded-key copy/allocation per constructor, no public-key parse or polynomial arithmetic removed. Smaller CPU improvement than candidates 1–2, but meaningful allocation reduction if present in measurements. Interface dispatch here makes the discarded object difficult for the compiler to eliminate; allocation counts should confirm it, not static assumptions.

Prepared `crypto/hpke/pq_audit_test.go`, `BenchmarkAuditPQNewPrivateKey`, covers all five PQ/hybrid KEMs through their public `KEM.NewPrivateKey`. Existing HPKE round-trip and vectors exercise import/export, deterministic key derivation and KEM identity. Check seed ownership: the patch deliberately preserves `bytes.Clone(priv)` for hybrids. No FIPS enforcement boundary removed; ECDH still runs in the same `WithoutEnforcement` closure.

## Open-CL novelty check (September 27, 2026)

Read the supplied metadata `/home/exedev/crypto-audit/open-crypto-cls.json` after stripping its four-byte Gerrit prefix. Downloaded current patch bodies to `cl-NUMBER.patch` in the audit directory (no Git fetch, compilation, tests, or timing during the parent's rand benchmark).

* **822000:** changes verification benchmarks and an outdated test comment only. It does **not** remove `PrivateKey.t1` or either initialization call. This is a particularly useful negative check because its title mentions dropped verification precomputation.
* **822001 / 822040:** NTT range/reduction improvements and fused polynomial operations. Checked touched keygen/semiexpanded code; neither removes the private-key t1 field or its constructors' computeT1Hat calls.
* **822002:** exact overlap and extension of initial signing lead. Excluded.
* **818724 / 818725:** batched rate-sized ML-KEM sampling plus branchless parser. Subsumes the initial small-read buffer lead. Excluded.
* **818920 / 818921 / 818922:** ML-DSA matrix sampling, branchless parsing and signing-mask expansion; no dead t1 deletion. No new claims made for any of these optimizations.
* **839786:** limits capacity of ML-KEM shared-key slices. Independent of the two surviving candidates; not claimed as an audit discovery.
* No supplied open subject addresses HPKE's discarded expanded-key copies. The inspected relevant numerical/KEM patches do not touch that wrapper path. This is a check against the supplied open-CL set, not a proof that nobody has ever proposed it elsewhere.

**Surviving shortlist for central benchmarks:** `mldsa-dead-t1.patch` and `hpke-known-private.patch` only. No compilations/tests/timings were run after the parent requested the rand-benchmark pause.

## Rejected / deferred findings

### ML-DSA

* Public-key matrix precomputation is deliberately absent: constructor comment documents the >68 KiB cost and typical one-use certificate verification. Adding caches is outside the brief and reverses that tradeoff.
* Public `PrivateKey.PublicKey` copies its small public component deliberately to avoid retaining the private key; do not replace it with a pointer alias.
* Public private-key wrappers currently copy a large internal struct. A pointer-based redesign might remove a second allocation, but changes zero-value handling, representation and broader tests; dead-field deletion is dramatically easier to review.
* `computePublicKeyHash` already runs once per key; message μ once per operation outside the rejection loop. No repeated key/message hashing in signing.
* Signature verification expands A before `sigDecode`, and checks z bounds near the end. Moving public signature checks earlier could cheaply reject malformed inputs, but does not improve valid verification. Keep as a separate invalid-input optimization, not a claimed normal-path win.
* `sampleInBall` reads SHAKE one byte at a time. Buffered reads could amortize calls but require additional state/refill logic; not as low-maintenance as the existing one-line ML-KEM buffer change. Deferred.
* `field.go` already has Montgomery representation, fused multiply-subtract/add-multiply, NTT unrolling, specialized pack/unpack and HighBits decomposition; replacing these is algorithmic optimization beyond the brief.
* Semi-expanded key validation recomputes consistency deliberately for untrusted expanded encodings. Do not remove it. Only its unused t1 cache should disappear.

### ML-KEM

* Matrix A, decoded secret/public polynomials and H(ek) already persist in expanded key objects. Public `NewEncapsulationKey` is the validation boundary; no repeated modulus check in ordinary encapsulation.
* Decapsulation explicitly omits the redundant H(ek) validation for validly constructed keys. No additional expensive known-input validation to remove there.
* Re-encryption and fallback SHAKE in decapsulation are necessary for CCA security and implicit rejection. Do not skip or conditionally compute these based on secret validity.
* `kemKeyGen` calls `dk.EncapsulationKey().Bytes()` for H(ek), introducing an intermediate expanded-key copy. It is not duplicated hashing. Avoiding it requires a new shared encoding helper or duplicated encoding loop, and compiler elimination of some copies must first be inspected. Lower priority than the one-line rate buffer.
* `mlkemtest` reconstructs an internal key from `ek.Bytes()` for deterministic testing; known-valid reparsing is indeed wasteful, but only affects an explicitly testing-only API and changing encapsulation boundaries would be disproportionate.
* 1024's 5-/11-bit serialization uses generic routines unlike specialized 768 packing. New specialized routines would add substantial low-level code and maintenance, not an existing tiny fast path.
* The duplicate `ConstantTimeCompare` in 768 `kemDecaps` is only repeated when the testing hook is set. Not a production duplicate; generated 1024 already has one compare.
* CAST/PCT execution is required FIPS behavior, not removable verification overhead. Self-tests already use `sync.OnceFunc`.

### HPKE

* DH ephemeral public encoding is already computed once and reused in context/return data. ECDH inputs are attacker-supplied; point validation cannot be dropped.
* Hybrid encapsulation likewise reuses ctT. Private-key public access may invoke a hardware `KeyExchanger`, so globally caching results would add state/API assumptions.
* HKDF labels and outputs differ: combining extracts/expands would change the protocol. SHAKE one-stage scheduling already derives its combined key/nonce/exporter output in one pass. Cached pskIDHash per suite would add cache state for a modest setup cost.
* `nextNonce` allocates a new small slice per message. Reusing/mutating the base nonce complicates state ownership and retry-after-authentication-failure behavior. Fixed-size stack storage may still escape through `cipher.AEAD`; no measured tiny win established.
* Context `suiteID` field is never read (the export closure separately captures sid). Deleting its field and two assignments is harmless cleanup/small object-size reduction, but does not remove suite-ID construction or hashing because the closure still needs sid. Not ranked with substantive leads.
* One-shot Seal concatenation incurs an allocation/copy; building the output directly in a preallocated ciphertext would need plumbing across Sender/AEAD boundaries. Deferred rather than propose a larger redesign.
* Modern AES-GCM glue already takes the `NewGCMForHPKE` fast path; old FIPS v1.0 glue correctly uses supported public AES/GCM APIs. No snapshot-breaking bypass proposed.

## Coverage map

All **21 production/generator Go files** in the owned directories were read. No assembly/platform-specific numerical implementations are present here. Dependencies such as SHA3 were inspected only to confirm a candidate's call behavior, not claimed as fully audited.

| Area | Production / glue files reviewed | Scope |
|---|---|---|
| `crypto/mlkem` | `mlkem.go` | Both parameter sets; wrappers, key ownership, encoding, import, encapsulation and decapsulation |
| `crypto/mlkem/mlkemtest` | `mlkemtest.go` | Both testing-only deterministic encapsulation bridges and FIPS-only rejection |
| `crypto/mldsa` | `mldsa.go`, `mldsa_fips140v1.26.go`, `mldsa_fips140v1.0.go` | Parameters/options; modern wrappers, seed/public-key parsing, equality, zero-key validation, signing variants, verification; old-module unavailable stubs |
| `crypto/hpke` | `hpke.go`, `kem.go`, `pq.go`, `kdf.go`, `aead.go` | Entire context/schedule/export/record flow, DH and PQ/hybrid constructors/encap/decap/derive, all KDF and AEAD variants |
| `crypto/hpke` module glue | `aead_fips140v1.0.go`, `aead_fips140v1.26.go` | Old/new AES-GCM setup paths |
| `internal/fips140/mlkem` | `mlkem768.go`, `field.go`, `cast.go` | All keygen/import/encoding/KEM/PKE paths, field/NTT/samplers/packers, CAST/PCT |
| Same, generated/tools | `mlkem1024.go`, `generate1024.go` | Full generated 1024 implementation and generator mapping; generation-sensitive changes must start in 768. The candidate buffer change is in shared field.go, so no regeneration required |
| `internal/fips140/mldsa` | `mldsa.go`, `field.go`, `semiexpanded.go`, `cast.go` | All parameter sets, keygen/precomputation, signing/rejection and verification, arithmetic/encoding/sampling, testing-only expanded-key parsing and CAST/PCT |

Test/example inventory (harnesses and relevant benchmarks/edge cases inspected; static vector payloads are fixtures, not separately re-audited cryptographic specifications):

* `crypto/mlkem/{example_test.go,mlkem_test.go,mlkem_wycheproof_test.go}`.
* `crypto/mldsa/{example_test.go,mldsa_test.go,mldsa_wycheproof_test.go,mldsa_fips140v1.0_test.go}`.
* `crypto/hpke/hpke_test.go`; its two JSON vector files are consumed by the existing vector harness and were not manually revalidated.
* `internal/fips140/mlkem/{field_test.go,cast_test.go}`.
* `internal/fips140/mldsa/{field_test.go,mldsa_test.go}`.

## Prepared artifacts and validation

Outside repository, in `/home/exedev/crypto-audit/`:

* `mldsa-dead-t1.patch`, `mldsa-defer-cs2.patch`, `mlkem-sample-rate.patch`, `hpke-known-private.patch`.
* `pq-make-patches.py` generates those diffs without editing production files.
* `pq-prepare-benches.py` generated the temporary sampler variant.
* `pq-compile-test.log` records successful compilation and sampler equivalence.

Added only:

* `src/crypto/internal/fips140/mlkem/field_audit_test.go`
* `src/crypto/mlkem/mlkem_audit_test.go`
* `src/crypto/hpke/pq_audit_test.go`

Executed (not a performance benchmark):

```sh
bin/go test -p=1 crypto/internal/fips140/mlkem crypto/mlkem crypto/hpke \
  -run '^TestAuditSampleNTTRate$' -count=1
```

All three packages passed/compiled. No candidate production patch applied or timed. Parent should apply and compare **the two surviving candidates separately**, run package known-answer tests, then consider combined changes. The signing and sampler artifacts are retained as historical diagnostics only; their ideas overlap open work. Avoid reporting sampler-only numbers as public-operation speedups.
