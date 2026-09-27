# Original crypto opportunities — second pass

**September 27, 2026.** Follow-up under the relaxed bar: portable Go, ordinary amd64/arm64, localized algorithmic changes and precomputation allowed; no BoringCrypto or unusual-architecture-only claims. These are additional to the first four findings and the separately documented pending CLs.

Baseline **04a082e1**, i.e. upstream **2ff5743d** plus the four first-pass patches. Same Go compiler, AMD EPYC 9554P linux/amd64 VM. Headline numbers are complete public operations, **12 alternating A/B samples**, one pinned guest CPU, GOMAXPROCS=1, 200–250 ms/case. ARM64 compilation was checked, **ARM64 performance was not measured**. “Warm” means reusing an existing key/stream, not a helper-only benchmark; constructor-inclusive controls are explicitly named.

## What I would pursue

### 1. ML-KEM: reuse gamma products and fuse polynomial work

**Best portable algorithmic finding.** Three complementary changes, staying within existing coefficient/reduction bounds:

1. Replace `acc = polyAdd(acc, nttMul(a,b))` with pointer-based fused multiply-add, avoiding the temporary polynomial and a separate addition/reduction pass.
2. Precompute `gamma * odd-coefficient` for the **short vector**, once per keygen/encryption operation, and reuse it across matrix rows and the final inner product. Do not enlarge every stored public matrix/key.
3. Fold inverse NTT's final scaling into its final butterfly stage, saving another 128 multiplications/reductions per inverse transform.

All coefficients remain canonical `[0,q)`. The fused accumulator is bounded by `2(q−1)^2+(q−1)<2q²`, exactly the existing reducer's domain. No new arithmetic representation, assembly, random-consumption change, validation shortcut, or omission of decapsulation re-encryption/implicit rejection.

| Complete operation | Before → after | Time reduction |
|---|---:|---:|
| ML-KEM-768 Encapsulate, retained public key | 46.62 → 39.08 µs | **16.19%** |
| ML-KEM-1024 Encapsulate, retained public key | 69.92 → 58.20 µs | **16.76%** |
| 768 / 1024 public-key parse + encapsulate | 65.80→59.15 / 104.98→90.84 µs | **10.10% / 13.47%** |
| 768 / 1024 Decapsulate, retained private key | 68.82→62.10 / 101.44→90.76 µs | **9.76% / 10.52%** |
| HPKE Seal, ML-KEM-768 / 1024, 128-byte message | 55.62→46.35 / 76.87→65.62 µs | **16.67% / 14.64%** |
| HPKE Open, same suites | 75.81→68.61 / 109.55→99.93 µs | **9.50% / 8.78%** |

HPKE rows include KDF and AES-GCM, not just the KEM. Parse-inclusive HPKE Seal improves **9.10% / 7.65%**. Invalid-ciphertext implicit-rejection decapsulation also improves ~9%; acceptance/output behavior is unchanged. Keygen gains are smaller; do not present the encapsulation result as a uniform all-operations speedup.

**Cost:** roughly sixty added handwritten lines plus corresponding generated-1024 call sites; **768/1024 bytes of operation-local precomputation**, no retained key growth. Measured B/op and allocs/op unchanged. The generator-derived change matches the hand-updated generated file in all six changed hunks; unrelated pre-existing generator drift is preserved, not silently fixed.

Ablations are retained: fusion alone, fusion+gamma, and final-scale-only. Fusion+gamma already gave ~12% encapsulation / ~9% decapsulation gains; final-scale alone was mostly small/unresolved. **Do not add percentages from separate runs.** Combined figures above are separately measured.

Patch: `selected/mlkem-local-precompute.patch`. Evidence: `bench/mlkem-all-stat.txt`, `bench/hpke-all-stat.txt`, ablation logs, `pq.md`, `generator/result.txt`.

### 2. AES-CTR: retain the unused partial block across sequential calls

`XORKeyStream` currently invokes stateless `XORKeyStreamAt`, regenerating the same counter block when the next call begins partway through it. Keep a **16-byte per-stream output buffer** and use its unused tail on the next sequential call. The used prefix is ciphertext; only the unused suffix is keystream. This avoids an unnecessary extra XOR when producing the tail.

| Public XORKeyStream call size | AES-128 | AES-256 |
|---|---:|---:|
| 1 byte | **39.73%** less time | **41.35%** less time |
| 7 bytes | **20.48%** | **19.43%** |
| 17 bytes | **20.51%** | **14.40%** |
| 50 bytes | **10.28%** | **9.48%** |
| 1 KiB / 8 KiB | No significant change | No significant change |

These are complete sequential stream calls with in-place buffers. **This is a fragmented-input win, not a bulk AES/CTR throughput claim.** Aligned and large-buffer controls matter. Steady calls remain allocation-free; the stream gains 16 raw state bytes.

**Cost:** one Go file, small shared worker; existing hardware block routines untouched. Random-access calls remain stateless and do not touch/invalidate the sequential cache. RoundToBlock, overflow ordering, overlap checks, all key sizes and IV carry behavior are preserved. Tests include interleaved seek/sequential use, forced offset overflow, byte-sized/in-place/disjoint fragmentation and the full AES/CTR_DRBG suites.

Patch: `selected/ctr-partial-cache.patch`. Final data: `bench/ctr2-stat.txt`. The earlier `ctr-stat.txt` is a superseded first prototype, not the reported implementation.

### 3. X.509: populate Name directly instead of building and flattening RDN slices

Every production caller of private `parseName` immediately passes its temporary `RDNSequence` to `FillFromRDNSequence`. Populate the existing destination `pkix.Name` while parsing, reusing the same mapping routine one attribute at a time. Remove only temporary grouping, not DER validation, exported names, writable OID ownership, or retained raw encodings.

Complete public parse results:

- Existing OpenSSL-PSS certificate fixture: **9.972 → 8.323 µs, −16.53%**.
- Existing GTS root fixture: **5.751 → 4.932 µs, −14.25%**.
- Rich-name generated certificate / CSR / CRL: **−14.43% / −9.19% / −13.13%**.
- Existing Google leaf and CN-only certificate/CSR controls: **no statistically resolved improvement**. Do not advertise this for every certificate or as a signature-verification win.

**Cost:** private helper signature plus four callers, two files, **net deletion**. No new state or public API. Differential tests compare exact errors and complete Name values across every truncation/bit mutation of a diverse corpus; public issuer/subject/CSR/CRL paths and independent mutable slices are covered.

Patch: `selected/x509-direct-name.patch`. Data: `bench/x509-name-stat.txt`. Details: `x509-tls.md`.

## Larger tradeoff: cache RSA public-modulus precomputation

`rsa.fipsPublicKey` constructs a new modulus and its Montgomery constants on every Verify/Encrypt. Reuse **existing** `fips140cache.Cache` keyed by the public-key object's weak identity; retain an immutable converted key plus a copied N/E snapshot. A hit checks E and `N.Cmp(snapshot)` without encoding, so sequential field/in-place-limb mutation still invalidates it. No new public field/API or cache machinery, and all per-operation checks still run.

**Complete public operations with the same retained key:**

- RSA PKCS#1 verification, 2048/3072/4096: **30.59% / 33.29% / 35.27% less time**.
- PSS verification: **29.58% / 31.99% / 29.56%**.
- OAEP encryption: **26.51% / 32.54% / 24.94%**.
- Full `x509.Certificate.Verify` with retained RSA issuer: **28.48% (2048)**, **32.00% (4096)**.

**Real costs, not hidden:**

- Fresh 2048-bit PublicKey on every call: **8–12% slower** in the tested operations. Fresh issuer/pool + full X.509 Verify is **7.25% slower**. Larger-size cold differences were unresolved, not proven zero.
- Warm 2048-bit PKCS#1 verification: **1376→512 B/op, 9→2 allocations**. Fresh-struct verification instead increases allocations **10→17**, and B/op **1392→1880**.
- Isolated 1024-live-key heap probes suggest approximately **1.1 / 1.5 / 1.9 KB extra retained heap per live 2048/3072/4096-bit key**, including cache/cleanup metadata. These are noisy process heap deltas, not exact object sizes. Old multi-size sequential probes are contaminated by asynchronous cleanup and are not used for this estimate.
- Weak lifetime is not prompt/bounded eviction: live key identities keep entries; dead entries await GC/cleanup. A key-churn service may not want this tradeoff. The fresh-key benchmark already includes ordinary GC/cleanup costs; full memory-pressure characterization remains worthwhile before landing.

**Cost:** one production file, +27/−2 plus the existing helper body; moderate lifetime/mutation/cold-path review. Prototype passes concurrency, mutation, race and GC-eviction tests, but **this is not an unconditional recommendation**. Best for long-lived verification/encryption keys and issuer pools. Separate patch allows choosing policy independently from the first three.

The repeated-setup bottleneck was historically noted in merged CL492935. The new proposal is this bounded current-tree use of existing weak-cache infrastructure, **not discovery of Montgomery precomputation**. No matching open implementation was found in the checked Gerrit queries.

Patch: `selected/rsa-public-cache.patch`. Data: `bench/rsa-cache-stat.txt`, `bench/rsa-cache-x509-stat.txt`, isolated `tests/rsa-memory-*-*.txt`. Details: `rsa-cache.md`.

## Tested and rejected/deferred

A slightly higher complexity budget did not make every plausible idea worthwhile. Retain the negative evidence:

- **Native HMAC cached Digest copies / selective ResetTo:** mostly flat complete HMACs; only ~5–6% PBKDF2 gains for the stronger variant, with extra cold object/state cost. Not worth promoting this machinery over the known pending constructor/loop fixes. `bench/hmac*-stat.txt`, `bench/pbkdf2*-stat.txt`.
- **RSA trial division before MR/Montgomery setup:** removes ~70% allocations in the 2048-bit corpus but complete keygen time is statistically unchanged. Six-prime grouping gives only ~5% at 2048, unresolved at larger sizes. This is a memory-allocation lead, not a claimed large keygen CPU win. Neither changes prime confidence/randomness/validation.
- **65537 final-Montgomery multiply folding:** saves one actual multiplication; full Verify results unresolved. Not promoted on arithmetic counts alone.
- **ECDSA projective final-X comparison:** correct inversion-free argument and crafted rare r+n/infinity tests, but broad variant has curve-dependent regressions. Narrow P256-only follow-up gives ~4.7% median valid-Verify improvement, **p=.101**, so not a qualified win. Variable-time public-s inverse adds allocations/regresses P256; signing's secret inverse was never changed.
- **Ed25519 public-point weak cache:** functionally correct probes, but **fails the existing zero-allocation test (0→7 allocations)** when Public() returns fresh storage. Rejected; test not weakened and production restored. No headline benchmark claim.
- **ML-DSA challenge-byte buffering:** no significant complete representative Sign/Verify win. Not promoted despite sampler-level plausibility.
- **Guarded mTLS certificate-cache reuse:** no convincing complete TLS1.2/1.3 mTLS handshake improvement. Callback ownership and existing cache-alias concerns add review cost; do not resurrect the unconditional one-liner.
- **CertPool direct DER identity keys:** assessed but not implemented; extra retained DER copy and cold insertion work need justification. No speculative speed claim.

None of these experiments remains in the selected production diff. Pending HMAC stack allocation/HKDF hoists, PQ batch samplers, ML-DSA reduction series, and architecture-specific work are **not repackaged as new findings**. This pass's identities are ordinary known mathematics/techniques applied to new Go call sites, not novel cryptographic algorithms.

## Validation and artifacts

Selected tree passed:

- Entire `go test -short -p=2 -count=1 crypto/...`.
- Full short affected-package suites with **purego** and **GODEBUG=fips140=on**, including cross-version FIPS test package/CTR_DRBG coverage.
- Full short **race** tests of cipher, ML-KEM, HPKE, RSA and X.509.
- Focused public cache/name/CTR tests against **GOFIPS140=v1.26.0**; archived modules untouched.
- Native differential/KAT/property tests for both ML-KEM sizes, altered ciphertexts, accumulator aliasing, inverse-NTT corners/roundtrips; X.509 error/value/ownership differential checks; RSA key mutation/GC/concurrency; CTR seek/round/overflow.
- **ARM64 cross-compilation** of all affected public packages. Not ARM64 runtime testing or timing.

No certification, full non-short ACVP/BoGo run, or independently verified universal performance claim. Logs and exact commands/exits: `tests/summary.txt`. Generator parity: `generator/result.txt`; pre-existing drift shown separately.

`selected/` contains four production-only diffs against **04a082e1** (the ML-KEM diff bundles the independently explored arithmetic changes). `patches/` and other root patch files are exploratory variants. `bench/` contains raw results, benchstat summaries and exact operation manifests; `scout-*` files are short exploratory runs and **not headline evidence**. `bin/` is local saved binaries, not tracked. All benchmarks were run serially without concurrent compilation/tests; source reviews continued while the CPU was reserved.

### Local source commits

Branch `crypto-perf-round2` in `/home/exedev/go-crypto`:

- `0160378c` — ML-KEM local arithmetic/precomputation.
- `386be88e` — sequential CTR partial-block reuse.
- `f6653cda` — direct X.509 Name population.
- `6bc864b4` — RSA weak public-precomputation cache, deliberately separate because of cold/memory tradeoffs.

No CL submitted. The preceding commit lets you inspect/use the first three without the cache. Test/benchmark harnesses are preserved separately in `benchmark-sources/`; rejected experiments remain available for reproducibility, not as recommendations.
