# Low-complexity Go crypto performance audit

**Snapshot:** Go `2ff5743d9fd52fac166225e75df0c2c1edf82abb`, fetched September 27, 2026. Go toolchain rebuilt from that source (go1.28-devel). Scope is the standard library's `src/crypto/...`, including its current FIPS implementation—not the separate `golang.org/x/crypto` repository.

**Acceptance bar:** no BoringCrypto; meaningful improvement to the complete public operation, not just an internal helper. No new assembly, cryptographic algorithms, validation shortcuts, mutable key caches, or removal of required self-tests. Source review and measurement are distinct: plausible candidates without an adequate whole-operation result are not recommendations.

## Profile-guided follow-up (PQ measured over the full pending stack)

See **[round3/README.md](round3/README.md)** and **[round3/PROFILE-NOTES.md](round3/PROFILE-NOTES.md)**. This is the authoritative current PQ baseline/comparison. RSA key-reuse caching has been declined and removed from the new branch.

## Further original work under the relaxed complexity bar

See **[round2/README.md](round2/README.md)**: portable ML-KEM arithmetic/precomputation, sequential CTR partial-block reuse, direct X.509 Name parsing, and a separately qualified RSA public-precomputation cache. New paired whole-operation results and validation; not the pending work below.

## Pending work already in Gerrit

See **[PENDING.md](PENDING.md)** for a separately verified queue of existing work: human authors, current status, actual whole-operation evidence, blockers, dependencies, and old-open changes already superseded by current code. It distinguishes pending work from the four new audit findings below.

## Shortlist — independently measured changes

All figures are **time/op reductions**, not throughput percentages. Linux/amd64, AMD EPYC 9554P VM; 12 alternating before/after samples, 250 ms per case, GOMAXPROCS=1, pinned to one guest CPU. Results are not ARM64 performance claims. Comparisons below use separate saved binaries; each row's measured path is changed only by its named candidate.

| Candidate | Complete measured operation | Before → after | Time reduction | Production change |
|---|---|---:|---:|---|
| Short public-exponent multiplication during RSA validation | `x509.ParsePKCS8PrivateKey`, RSA-2048 | 145.73 → 93.25 µs | **36.01%** | Six-line internal helper built from existing operations; two callers |
| Same | RSA-3072 / RSA-4096 imports | 314.7 → 209.2 / 561.3 → 353.9 µs | **33.53% / 36.95%** | Same patch |
| Recognize already-known RSA-PSS parameter encodings | `x509.ParseCertificate`, canonical PSS fixture | 9.879 → 7.166 µs | **27.47%** | Eight added lines, existing constants and unchanged fallback |
| Use existing accelerated XOR in PBKDF2 | `pbkdf2.Key` with SHA-256, 4096 iterations | 740.3 → 653.4 µs | **11.74%** | One import; replace byte loop with `subtle.XORBytes` |
| Delete unused ML-DSA private-key precomputation | `mldsa.NewPrivateKey(MLDSA44(), seed)` | 172.9 → 151.0 µs | **12.66%** | **Three deleted lines** |

All headline comparisons have benchstat p<0.001. The exact unrounded raw data, confidence intervals, and controls are in `bench/*-stat.txt` and the matching old/new logs.

### 1. RSA: do not multiply and reduce known-zero limbs

**Files/functions:** `internal/fips140/rsa/rsa.go:checkPrivateKey`, `internal/fips140/bigmod/nat.go:Mul` / proposed `MulShort`.

Validation checks `dP * E mod (p-1)` and `dQ * E mod (q-1)`. E fits one machine word, but the current code expands it to the entire prime width. Even-modulus Mul then forms a full double-width product and slowly reduces all of its known-zero high limbs. The proposed helper uses the existing `addMulVVW` and `Mod`, forming **n+1 limbs instead of 2n**. No new arithmetic core; lengths remain fixed by the announced operand size, not secret values.

This accelerates **import/initial validation**, not warmed RSA signing or verification. Every validation equation, rejection, and self-test remains. 4096-bit import currently gains two temporary allocations (576 B/op) because the carry extends beyond NewNat's preallocated capacity; the measured CPU benefit includes that cost. That is an explicit prototype tradeoff, not a hidden allocation improvement.

Patch: `patches/rsa-mulshort.patch`. Whole-operation data: `bench/rsa-stat.txt`. Detailed rationale, constant-time argument, property tests, and rejected alternatives: `rsa.md`.

### 2. X.509: recognize canonical PSS parameters instead of decoding them twice

**File/function:** `x509/x509.go:getSignatureAlgorithmFromAI`.

After checking the signature OID is RSA-PSS, compare the parameter bytes with the three DER encodings already stored in the same file. Exact matches imply all existing checks succeed. Anything else takes the **unchanged ASN.1 parser**. No accepting merely similar encodings or bypassing validation of arbitrary parameters.

The whole certificate parse drops from **89 to 77 allocations**. This is specific to those canonical parameter encodings: the existing OpenSSL fixture without NULL parameters takes the fallback and shows no significant change. Google and root-certificate controls also show no significant change. This is not an RSA-PSS modular-exponentiation speedup or a claim about every PSS certificate.

Patch: `patches/x509-pss.patch`. Data: `bench/x509-stat.txt`. Details and malformed/mutation/fallback probes: `x509.md`.

### 3. PBKDF2: replace the bytewise XOR inside every iteration

**File/function:** `internal/fips140/pbkdf2/pbkdf2.go:Key`.

Use `subtle.XORBytes(T, T, U)` instead of looping byte-by-byte. Exact destination/input overlap is supported, U and T remain separate, and no algorithm, iteration count, or key-length behavior changes. This cost is paid on **each** iteration, so the gain survives measuring the full KDF. The existing public benchmark uses a 32-byte output, 4096 iterations, and SHA-256.

SHA-1 is a control, not a claimed winner: no statistically significant change in this experiment. Do not extrapolate the SHA-256 result to all digests or purego/other architectures without timing them.

Patch: `patches/pbkdf2-xor.patch`. Data: `bench/pbkdf2-stat.txt`. Details: `symmetric.md`.

### 4. ML-DSA: delete a precomputation with no readers

**Files:** `internal/fips140/mldsa/{mldsa.go,semiexpanded.go}`.

`PrivateKey.t1` stores `NTT(t₁⋅2ᵈ)`. Both constructors populate it, but no operation reads it: signing uses other private components and verification reconstructs a local value from the public key. Delete the field and the two writes; keep `computeT1Hat` itself because verification uses it.

This removes **8 KiB of private-key state** and 4/6/8 forward NTTs per expansion. Public expansion currently makes two large key allocations, so allocated bytes/op fall **196,608 → 180,224** (16 KiB saved); allocation count remains two. No new formula, cache, wire format, or changed randomness.

ML-DSA-44 has the cleanest CPU result, 12.66%. ML-DSA-87 improves 6.57% (p=0.008); ML-DSA-65's median improves but is **not statistically resolved** (p=0.078). Do not advertise a uniform gain across parameter sets or a signing speedup.

Patch: `patches/mldsa-dead-t1.patch`. Data: `bench/mldsa-stat.txt`. Details: `pq-hpke.md`.

## Filtering mattered

The original audit deliberately generated more leads than recommendations. Area reports are research notebooks and include early, subsequently rejected hypotheses. This file is the authoritative final ranking.

- **QUIC record-key derivation:** demonstrably unused (a full public handshake works with all eight record-AEAD constructions replaced with nil). Removing it saves 160 allocations and ~9 KiB per two-endpoint handshake, but time/op is statistically unchanged (394.0 → 387.3 µs, p=0.630). **Not a qualifying CPU win under the user's bar.**
- **HPKE trusted-key constructors:** discard fewer expanded-key copies, but most complete imports show no significant time change. Do not sell a copy microbenchmark as an HPKE speedup.
- **ECDSA lazy final DRBG update:** output-equivalence probes pass and the source even suggests deferral, but most full-sign results are small/noisy. It also changes post-call secret state and needs backtracking/FIPS review. Not a first-tier low-review-cost recommendation.
- **HKDF loop-allocation hoisting:** already included in open CL755040 (confirmed from its actual diff), so **not new**. A smaller API-neutral extraction may still be useful, but it is not counted here.
- **ML-DSA rejection deferral:** already CL822002. **ML-KEM rate-sized reads:** subsumed by CL818724. Neither counted.
- **BoringCrypto:** removed from the scope and final working changes on user instruction.
- **Entropy buffering, relaxed validation, skipped FIPS CAST/PCT, hand-written assembly, new key caches:** explicitly excluded, even if faster.

### Additional measured candidates that did not clear the bar

- **TLS ≤1.2 duplicate transcript hashing + final unused PRF HMAC:** measured complete client/server handshake pairs, both full and resumed, X25519/P-256 and SHA-256/SHA-384, with real entropy, verification and ticket handling. No convincing whole-handshake improvement. Not recommended; `bench/tls-pair-stat.txt` includes the unfavorable results too.
- **SHA256/SHA512 direct-buffer padding:** removing temporary padding/copies looked attractive in scouting, but twelve paired samples did **not** establish a broad public hash/HMAC win. Some isolated cases improve; others regress. Not recommended. See `bench/sha2-stat.txt` and `bench/sha2-hmac-stat.txt`.
- **X.509 raw-DER OID map keys:** whole certificate parses mostly unchanged; one fixture improves ~6%. Below the shortlist's return for the added parsing rationale. `bench/x509-oid-stat.txt`.
- **Fiat equality in Montgomery form / literal canonical bounds:** independent public P-384 key-import gains of 11.73% / 10.59%, but no broad full ECDSA Verify improvement. P-521 Verify in the exploratory binaries shows large regressions; those binaries also contain the unrelated lazy-DRBG setup experiment, so these numbers need further isolation/code-layout investigation, not a claim of a proven arithmetic regression. Field-import-only gains are not promoted as ECDH/signature-operation speedups. Raw reports: `bench/fiat-*-stat.txt`.
- **sysrand first-use Load guard:** two-goroutine 4-byte reads improve 15.58%, but serial and ordinary 32-byte reads do not show a comparable broad win. Narrow workload, not ranked with the shortlist. `bench/rand-stat.txt`.

Rejected prototype diffs are retained in `deferred/`. The Go working tree's **production changes contain only the four shortlisted candidates**.

## Method and coverage

Started by fetching both supplied CLs and current Go master. CL814601 was already merged in the pinned tree; CL839765 remained open and its duplicate-R encoding was not counted as a new discovery. Split source review by ECC; RSA/DSA/bigmod; symmetric/hash/KDF; PQ/HPKE; TLS; X.509; and shared randomness/FIPS infrastructure.

- Inventory: **352 non-test Go source/generator files and 69 assembly files** under `src/crypto` at the baseline. `coverage.csv` records paths and scope; area reports give detailed coverage and rejected leads.
- Runtime Go paths were traced through public entry points. Generated arithmetic and assembly were inspected for representation contracts, dispatch, and call structure—not re-proved or instruction-by-instruction tuned. Test-only schemas/fixtures are support, not performance targets.
- Checked 336 open Gerrit crypto-related records, then inspected actual relevant diffs and targeted queries to disqualify overlaps. This is a documented screening, not a guarantee no overlapping work exists elsewhere.
- Used the **same rebuilt toolchain and benchmark source** on both sides. Setup and fixture generation are outside timers; no helper-only percentage is presented as a complete-operation result.
- Alternated old/new order and rotated operation order across repetitions. No concurrent compile/test/benchmark jobs during timed runs. Guest CPU affinity is controlled; host frequency/noise is not, which is why unresolved changes are not wins.
- Current-module default mode is the measured configuration. Functional validation of purego, FIPS mode, and additional architectures is reported separately; it does not establish their performance.

## Reproduction / artifacts

- `/home/exedev/go-crypto`: branch `crypto-perf-audit`, four local production commits atop the pinned baseline; audit benchmark/test files remain separate from those minimal commits.
  - `d465a03d`: ML-DSA dead precomputation
  - `494fe60f`: PBKDF2 XOR
  - `a775eb6c`: canonical PSS parameters
  - `04a082e1`: RSA short multiplication
- `patches/`: the four shortlisted, independent **production-only** diffs against the pinned commit. None submitted upstream. Non-shortlisted prototypes are in `deferred/`.
- `bench/`: raw per-operation results, benchstat summaries, and manifests. `preliminary/` contains interrupted/scouting data and is **not** the reported dataset.
- `bench-operations.py`, `bench-wave2.py`: exact paired measurement drivers. `bin/` holds their saved binaries locally and is intentionally not tracked in git.
- `tests/`: functional-test logs and exit status summary. `benchmark-sources/` preserves every audit test/benchmark source, including discarded experiments.
- `ecc.md`, `rsa.md`, `symmetric.md`, `pq-hpke.md`, `tls.md`, `x509.md`, `infrastructure.md`: source rationale, coverage, risks, alternative ideas, and overlaps.

To reproduce one candidate elsewhere: check out the pinned commit, copy the applicable audit benchmark/test files, build Go from `src/make.bash`, compile a baseline test binary, apply **only** its production patch, and compile a second binary with the same toolchain. Run matched public benchmark names, alternating the two binaries, then benchstat. The scripts/logs specify exact names and flags.

## Validation status

The selected four-patch tree passed:

- `go test -short -p=2 -count=1 crypto/...` (entire tree, default configuration).
- Full short tests for the affected public/internal packages with `-tags=purego`.
- The same affected-package tests with `GODEBUG=fips140=on`.
- Focused arithmetic property tests, PSS canonical/mutation/truncation/fallback probes, PBKDF2 vectors/equivalence, and ML-DSA accumulated/KAT paths.

The 386 packages cross-compiled but could not execute on this VM (`exec format error`); **no 386 runtime-test pass is claimed**. Frozen module snapshots were not modified or separately rerun. Short-mode/external-network skips are not full ACVP/BoGo certification runs. Race tests also passed for `crypto/rsa`, `crypto/x509`, `crypto/pbkdf2`, `crypto/mldsa`, and internal bigmod; logs are in `tests/race.log` and `tests/race.exit`.

Exact commands/exits are in `tests/summary.txt`. No certification or complete security-audit claim is made.
