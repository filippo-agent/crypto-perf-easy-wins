# Profile-guided crypto opportunities, with the pending PQ stack applied

**September 27, 2026.** RSA public-key caching was declined and is **absent** from this work. No findings require repeated public-key identities. Profiles, primary implementation reading, prototypes and paired public-operation benchmarks—not a collection of helper-only speed claims.

## Baseline correction: all PQ numbers below are incremental over Filippo's stack

Clean worktree `/home/exedev/go-pq-stack`, baseline **62c2afb8f1975532a30f7b0ba70dd33d11562ffd** = upstream **2ff5743d** plus all **13 current CLs**:

`818720 → 818721 → 818722 → 818723 → 818724 → 818725 → 822000 → 818920 → 818921 → 818922 → 822001 → 822002 → 822040`.

Exact fetched revisions/patchsets/parents: `references/pending-stack.json`. They cherry-picked without conflicts. This baseline contains **none of our previous PQ improvements**; in particular it still has the dead private t1 field. New PQ patch files preserve the stack's partial-reduction types, widened bounds and batching. **Unstacked scout results are not evidence for the claims below.**

Non-PQ baseline is **f6653cda**, retaining previous low-cost findings but excluding the rejected RSA cache. Same rebuilt Go compiler throughout. Timings: linux/amd64 EPYC9554P VM, GOMAXPROCS=1, pinned guest CPU, **12 alternating before/after samples, 200–250 ms/case**. Profile runs were separate. ARM64 builds/codegen checked, not ARM64 runtime performance.

## First priority: very small changes backed by profiles

### 1. Select the reduced coefficient directly — best tiny PQ finding

Current canonical reduction computes a subtraction/underflow correction. Use the existing guaranteed-constant-time compiler intrinsics to directly select a or a−q:

```go
v := constanttime.LessOrEq(int(a), q-1)
return fieldElement(constanttime.Select(v, int(a), int(a)-q))
```

Two-line body, one import in ML-KEM; no new representation, reduction schedule, table, cache or algorithm. The existing a<2q invariant fits signed32 on all targets. ML-DSA keeps its `fieldElementPartiallyReduced` argument type. AMD64 emits CMP/CMOV; ARM64 CSEL was checked. These are **not secret-dependent Go if statements**.

The distinction was visible in actual assembly: ML-KEM already used a CMOV to select **0 or q**, with extra shift/test/add work; the new version selects the **final result**. ML-DSA's borrow-times-q really emitted an IMUL. A signed-mask alternative was separately tested and is not assumed equivalent in performance.

**Whole operations, on top of the full pending stack:**

| Operation | Before → after | Time reduction |
|---|---:|---:|
| ML-KEM-768 encapsulation | 45.32 → 37.55 µs | **17.14%** |
| ML-KEM-1024 encapsulation | 69.60 → 54.22 µs | **22.10%** |
| 768 / 1024 parse+encapsulate | 57.58→50.27 / 87.47→74.34 µs | **12.69% / 15.02%** |
| 768 / 1024 decapsulation | 66.35→54.81 / 100.21→83.34 µs | **17.40% / 16.83%** |
| ML-DSA-44 / 65 / 87 deterministic signing | 244.9→234.7 / 383.2→353.3 / 408.4→382.8 µs | **4.18% / 7.80% / 6.28%** |

ML-KEM keygen also improves **11.18% / 20.17%**. Invalid-ciphertext implicit rejection follows the same unchanged re-encryption/selection logic. Allocations unchanged.

**Important changed expectation:** your stack reduced ML-DSA's canonical-reduction profile fraction from ~48% to **12% of Sign44 / 4.7% of parse+Verify44**. Its remaining gain is modest; do not repeat the earlier unstacked 20%-ish scout. ML-DSA verification/key-expansion results mostly unresolved; only signing is a headline here.

Evidence: `stack-profiles/`, `bench/stack-mlkem-select-stat.txt`, `bench/stack-mldsa-select-stat.txt`. Patches: `selected/pq-stack/*canonical-compare-select.patch`. Every value in each helper's entire [0,2q) domain was tested against integer modulo.

### 2. P-384: use existing Mul for Square on amd64

Profiles suggested generated Square was slower than Mul(x,x), and isolated checks confirmed ~85–96 ns versus ~55–57 ns on this compiler/CPU. Source operation counts alone did not predict this: generated routines have the same arithmetic counts; register allocation/code generation matter.

Use `p384Mul(&e.x,&t.x,&t.x)` in the existing Square wrapper, **gated by compile-time cpu.AMD64**, and update the generator template. Existing verified arithmetic and alias behavior, no new formula/assembly. ARM64 and other architectures keep their current Square until measured. Purego amd64 still exercises the same generated Go fields.

Whole operations: **P384 Sign −9.98%; Verify −12.89% with an existing key / −13.04% with public-key parsing included; complete ECDH benchmark −13.53%**. No allocation change. This is a common-architecture compiler-codegen optimization, not a claim squaring is mathematically slower or that every compiler will reproduce it.

Patch: `selected/main/ecc-p384-square-mul-amd64.patch`. Data: `bench/p384-square*-stat.txt`. `ecc-square.md` includes identical-arithmetic and alias reasoning.

## Next tier: localized but more specialized implementation

### 3. PBKDF2-SHA256: exploit the fixed digest recurrence

Native profiles show about **47%** of complete PBKDF2 in compression, with most remaining work in generic Sum/Write/finalization/copies. Checkpoint restore alone was only ~4%; previous native-HMAC cache experiments targeted the wrong fraction.

After U1, every round hashes exactly a **32-byte digest** from the precomputed ipad/opad states. Reuse the fixed final-block layout `digest || 0x80 || zeros || BE64(768)`, invoke the **existing SHA256 block dispatcher twice**, and accumulate eight XORed words before final encoding. No new compression implementation or persistent key cache.

Public PBKDF2.Key, SHA256, 4096 iterations, 32-byte result: **670.8 → 435.8 µs, −35.03%**. Iteration-one and other-hash/wrapped-hash controls do not establish broad gains and stay on the existing path. SHA512's small statistical movement is unchanged-code/layout noise, not a claimed feature.

**Cost:** about 76 added lines across three internal module files; meaningful KDF/hash-layer specialization review. Partial/multiblock output, long passwords/salts, iterations<=1, exact SHA256 identity and fallback behavior tested against independent raw-HMAC oracles. Normal service indicators and all SHA256 implementations remain. The original prototype exposed an extra HMAC method and failed `TestExtraMethods`; v2 uses an **internal package function** and passes without weakening the test. No public API/method-set change.

Patch: `selected/main/pbkdf2-fixed-digest-v2.patch`; data `bench/pbkdf2-fixed-stat.txt`; rationale/reference reading `symmetric.md`.

### 4. ML-KEM-1024 fixed 5-/11-bit codecs

The 768 codecs are specialized already; 1024 still uses generic bit cursors. Direct fixed layouts give **7.63% lower encapsulation time / 12.28% lower decapsulation time** on top of the stack. The 768 controls are unchanged. More code/review than the tiny reducer: prioritize the latter first. Exact byte layouts, prefix ownership, every coefficient and randomized decoding tested against the generic routines.

Patch: `selected/pq-stack/mlkem-pack-5-11.patch`. Primary inspiration: algorithm authors' Kyber reference, not BearSSL (which has no PQ implementation).

### Combining PQ work, measured rather than adding percentages

A separate build combines **the tiny canonical Select + fixed1024 codecs + the previous round's rebased gamma/fused-multiply-add/inverse-scale changes**. Compared with **your stack alone**:

| Whole operation | ML-KEM-768 | ML-KEM-1024 |
|---|---:|---:|
| Encapsulation | **29.18%** less time | **33.85%** less time |
| Parse+encapsulation | **24.45%** | **28.18%** |
| Decapsulation | **27.19%** | **36.29%** |
| HPKE Seal, 128-byte message | **25.12%** | **29.27%** |
| HPKE Open, same suite | **24.16%** | **33.55%** |

HPKE uses pure ML-KEM, HKDF-SHA256 and AES256-GCM; not all possible HPKE suites. No public-key reuse cache; parsing-inclusive results included. Prior-round arithmetic is **re-evaluated, not counted as a newly discovered idea**. Do not add any of the individual patch percentages. The selected ML-DSA build uses only the tiny canonical change; a separate inverse-final-scale experiment did not show enough consistent incremental benefit.

Data: `bench/stack-mlkem-combined-stat.txt`, `bench/stack-hpke-combined-stat.txt`. Constituent patches apply to the stack baseline in `selected/pq-stack/`.

## ECDSA: your variable-time observation is correct, but the profile matters

Ed25519 Verify calls **VarTimeDoubleScalarBaseMult**. ECDSA verifyGeneric invokes the same **constant-time ScalarBaseMult/ScalarMult** used for secret inputs.

However, P256 direct table scanning is only **3.00% flat** in the complete Verify profile; Q multiplication is ~70%, point doubling ~48%, fixed-base multiplication ~13%. Existing generator tables already precompute away **all generator doublings**. Simply using direct indexing or calling a joint algorithm therefore does not halve the existing work.

Measured prototypes, no key reuse:

- **P256 public sparse/direct-index path:** about 1–9% depending on benchmark, ordinary valid Verify unresolved. ~150 duplicated/public-only lines do not clear the low-cost bar. Not selected.
- **P384/P521 width-5 public wNAF engine:** ~96 handwritten core lines plus generated methods, using existing complete Add/Double and existing immutable G table. **P384 Verify −17.03%, parse+Verify −18.57%; P521 −10.87% / −10.59%.** Allocations decrease. Private scalar routines are untouched.
- **wNAF + amd64 P384 Square fix**, separately measured: **P384 parse+Verify −23.40%** (valid), −24.81% (tampered hash); P521 parse+Verify −14.29% in that build. Existing-key cases vary somewhat across builds; do not add the separate percentages. No per-key retained precomputation.

I would list the generic public engine as the **larger option for consideration**, separate from the cheap Square wrapper. Rare r+n, infinity/equal/opposite points, 0/n-1/n/n+1/max scalars, receiver aliases and fresh/reparsed keys have differential tests; complete formulas remain. It adds public-scalar timing only to verification, never signing/ECDH/keygen.

**Larger still, not implemented/measured:** a coherent public-only Jacobian/mixed-coordinate P384/P521 engine. Current homogeneous Double costs10M+3S; BearSSL's a=-3 Jacobian Double uses4M+4S. The profile supports investigating roughly **25–35% overall** as a model, not a measured result/guarantee. New representation/formulas, table normalization and exceptional-case handling make this a substantially larger review.

Pornin's half-size lattice tricks were also checked against primary crrl code. The attractive supplied-R Schnorr/FROST path does **not** transfer directly to ECDSA, which transmits only x mod n: recovering R, both signs, and rare x>=n add work and affect invalid-signature costs. No unsupported “half the scalar size, twice the speed” claim.

Patches/evidence: `selected/main/ecc-engine-wnaf.patch`, `ecc-engine.md`, `ecc-lowcost.md`, `bench/ecc-wnaf-stat.txt`, `bench/ecc-combined-stat.txt`.

## BearSSL-inspired larger arithmetic candidate: cold RSA setup, not a cache

RSA2048 public Verify profiles spend **29.44% cumulative in RR setup**. BearSSL's i31/i62 conversion uses word-at-a-time quotient-estimated reduction instead of repeatedly squaring to build RR. Independently derived a narrower **constant-time normalized word reducer**, with a fixed-work bit divider and two masked corrections. It keeps Go's current fully initialized Modulus invariant and does not assume key reuse.

Conservative gate: normalized widths **>=3072 bits only**. Thus common private prime widths and2048public setup retain their old path. This is a **74-line arithmetic helper**, not a trivial cleanup; merits specialist review despite passed tests.

Whole public operations, recomputing setup every call:

- RSA3072 /4096 Verify: **−18.58% / −19.13%**.
- DER parse+Verify: **−14.39% / −14.06%**.
- OAEP encryption: **−12.53% / −13.75%**.
- 2048, ordinary precomputed Sign2048, keygen2048/3072/4096: no statistically significant change.

No hardware divide or data-dependent correction loops are introduced into secret-prime setup. Algebraic/domain review is in `candidates/rsa/rr-word-review.md`. Property tests use math/big; an independent exhaustive toy-base model checked **1,294,276 cases**, including saturation and0/1/2corrections. This is not a replacement for formal review or platform coverage.

Patch: `selected/main/rsa-rr-word-ct-wide.patch`. Data: `bench/rsa-rr-wide-stat.txt` plus private/keygen controls. Reusing two existing large kernels was tried separately and failed the whole-operation performance gate; not promoted.

## Validation, scope and artifacts

- All selected main-tree changes passed entire `crypto/...` short suite, affected purego/FIPS-on/race suites.
- Selected PQ changes passed stacked internal/public/HPKE/SHA3/FIPS test suites, purego, FIPS-on and race.
- Public-method/allocation/security tests were not relaxed. Inlined native reducer machine code inspected; ARM64 uses CSEL. ARM64 cross-build is **not** an ARM64 performance result.
- Frozen modules are not edited. Internal helper/point changes are coherent current-module changes, but normal upstream FIPS review is still needed. Full non-short external ACVP/BoGo certification is not claimed.
- `tests/summary.txt`, `PROFILE-NOTES.md`, `profiles/`, `stack-profiles/` preserve commands, results and corrected profile labels. Benchstat/raw evidence is under `bench/`. Scouts/unstakedPQ data are explicitly non-headline evidence.
- Primary comparisons: official BearSSL at **7bea48e5e850ab4cafbe68d3765cdaba13a86d6f**, official Kyber/Dilithium, pinned BoringSSL wNAF and Pornin crrl source; exact paths/revisions in area reports. Concepts guided independent Go prototypes; other-library timings are not used as Go claims.
- Source trees: `/home/exedev/go-crypto` (non-PQ) and `/home/exedev/go-pq-stack` (all13 pending CLs). Independent candidate patches in `selected/`; experimental alternatives elsewhere are not recommendations. No CL submitted.

## Local commits

Main branch `crypto-perf-round3`: `ce495827` PBKDF2 recurrence, `eec7900c` P384 Square, `53bd0027` public wNAF prototype, `2532e0de` wide RR prototype.

PQ branch `pq-stack-optimizations`: parent `62c2afb8` is the untouched pending-stack baseline; `602ad848` canonical Select, `f9278f11` fixed codecs, `db19b48d` rebased previous arithmetic. Independent patches are available so the tiny changes need not wait for the larger prototypes.
