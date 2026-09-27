# Pending PQ/SHA3 CL inventory — 2026-09-27

Scope: 14 assigned changes. All 14 are `NEW` in the supplied fresh Gerrit details; 12 are performance or performance infrastructure, 2 excluded non-performance changes. All listed PQ/SHA3-stack commits are authored by **Filippo Valsorda**. CL778420 is authored by **Neal Patel**; CL839786 by **Cristian Girlea** (Gerrit owner is Gerrit Bot, not the author). No team-membership inference. No benchmarks run; no production files changed.

Sources: `<CL>.json` (current detail/commit/labels/messages), `<CL>-comments.json` (actual inline discussion), `<CL>.patch` (fresh patch fetched by exact current revision), `<CL>-mergeable.json` (fresh Gerrit mergeability), `pq-related.json` (actual parent chain), and downloaded benchmark source files in this directory. Existing audit-root patches for 822001,822002,822040,818724,818725,818920,818921,818922,822000,839786 were checked and match current revision hashes. 778420/839786 NEW status additionally rechecked. Every link below is a primary Gerrit source.

## Ranked actionable list

**State shared by the 12 Filippo performance/infrastructure/benchmark-cleanup CLs:** rebased September 21, 2026; currently NOT WIP, no nonzero Code-Review vote. Current trybot +1 except CL818921 (−1, author applied TryBot-Bypass +1 and called it a flake). Hence “open for review,” not approved/ready-to-land. No performance measurements are in current commit messages or discussion for 822002/822001/822040. Do not replace this missing evidence with our earlier local measurements or claim them as author results.

All percentages below are **reductions in elapsed sec/op**, not throughput increases; author-reported, not independently reproduced. `A` = exact author host `linux-amd64_c2s16`; `R` = `linux-arm64_c4as16`. Author gives those host names and benchmark suffix `-16`, **not CPU model strings**; do not silently extrapolate to all x86/Arm or identify a particular CPU model without another source. Measurements cite older revision hashes in the commit body, not the September 21 rebases. Do not add percentages across this stack.

| Priority | CL / author | Whole public workload evidence | Review / maintenance cost and next action |
|---|---|---|---|
| 1: smallest deferred-work win | [822002](https://go-review.googlesource.com/c/go/+/822002), Filippo | **No author-reported whole-operation numbers.** ML-DSA signing: compute each cs1 only before its z rejection check; defer each cs2 until after earlier rejection opportunities. | **Low relative maintenance cost**, +5/−11 in one Go file. Review rejection ordering/side-channel invariants, request public SignDeterministic data. PS4, try +1, mergeable true. Currently stacked after 822001; can assess a carefully extracted version without committing to SIMD stack. |
| 1: generic arithmetic, not “tiny” | [822001](https://go-review.googlesource.com/c/go/+/822001), Filippo | **No author whole-operation numbers.** Removes NTT/inverseNTT reductions. | **Medium/high mathematical review; medium maintenance**, +291/−97 including bounds diagram/tests. Partial-reduction types, unsafe alias conversion, unrolling and widened intermediate bounds need proof review. PS4, try +1, mergeable true; parent 818922. |
| 1: generic arithmetic follow-on | [822040](https://go-review.googlesource.com/c/go/+/822040), Filippo | **No author whole-operation numbers.** Carries partial reductions across NTT operations/matrix products. | **Medium/high review and maintenance**, +355/−40; representation invariant changes to [0,2q), uint64 double-Montgomery accumulators and serialization/normalization obligations. PS3, try +1; Gerrit **not mergeable**: restack/rebase/check prerequisite resolution. Depends on reduction series, parent 822002. |
| 1: localized branchless sampling | [818725](https://go-review.googlesource.com/c/go/+/818725), Filippo | ML-KEM-768 Alice **−4.67% A / −3.25% R**; Bob **−3.74% A / −1.68% R** (whole composite workloads defined below). | **Low/medium**, +49/−33 in one Go file; review accepted-sample sequence, bounds/tail handling. These are incremental **over 818724 batching**, not standalone baseline gains. PS6, try +1; not mergeable, needs stack resolution. |
| 1: localized branchless sampling | [818921](https://go-review.googlesource.com/c/go/+/818921), Filippo | ML-DSA-44/65/87 parse+Verify **−3.00/−3.53/−4.20% A; −1.63/−2.04/−2.47% R**. Seed→NewPrivateKey **−1.80/−2.40/−3.07% A; −1.34/−1.50/−2.05% R**. | **Low/medium**, +28/−8. Incremental over 818920. PS6, **try −1 / bypass +1, author says flake**, not mergeable; resolve/recheck before landing. |
| 2: batched consumers | [818724](https://go-review.googlesource.com/c/go/+/818724), Filippo | ML-KEM-768 Alice **−6.50% A / −2.05% R**; Bob **−10.76% A / −3.92% R**. | Consumer +52/−40, **medium**, but relies on higher-cost shared SHA3 kernels; **not** a free standalone 52-line optimization. PS6, try +1, mergeable true (does not imply dependency-free). |
| 2: batched consumers | [818920](https://go-review.googlesource.com/c/go/+/818920), Filippo | ML-DSA-44/65/87 parse+Verify **−15.65/−18.31/−22.11% A; −4.40/−5.13/−5.93% R**. Seed→NewPrivateKey **−11.36/−12.67/−17.89% A; −3.45/−4.07/−4.92% R**. | Consumer +47/−22, **medium** plus shared-kernel cost. PS6, try +1, mergeable true; parent benchmark cleanup 822000. |
| 2: batched consumers | [818922](https://go-review.googlesource.com/c/go/+/818922), Filippo | ML-DSA-44/65/87 **SignDeterministic** **−4.31/−3.04/−3.51% A; −0.65/−0.44/−0.59% R** on retained private key, representative rejection-workload messages. | Consumer +17/−7, **low/medium** plus shared infrastructure. Small Arm gains: weigh complexity. PS6, try +1, mergeable true; incremental after 818921. |
| 2: shared prerequisite | [818720](https://go-review.googlesource.com/c/go/+/818720), Filippo | **No standalone public-operation benchmark.** Internal ReadMulti batches SHAKE squeezing; generic path plus dispatch/testing support. | **Medium/high API-state/testing review**, +480/−0. **Three unresolved Neal Patel comments**: dot-import choice, missing test vectors, deletion of a test-code fragment. Author says tests were mostly Claude-written and only skimmed (PS3); rest rewritten/reviewed. PS4, try +1, mergeable true. Resolve these explicitly. |
| 2: shared prerequisite | [818721](https://go-review.googlesource.com/c/go/+/818721), Filippo | **No standalone whole public-operation result.** The commit’s approximate 2× claim is a **two-lane Keccak kernel claim**, not SHA3/ML-KEM/ML-DSA public API gain. | **Medium/high assembly/CPU-dispatch review**, +86/−12; arm64 SHA3 instructions, paired-state implementation shared with single-state Darwin path. PS4, try +1; not mergeable. |
| 2: highest shared maintenance cost | [818722](https://go-review.googlesource.com/c/go/+/818722), Filippo | **No standalone whole public-operation result.** Four-state AVX2 Keccak prerequisite of consumer gains above. | **High**, +1050/−11: generator, generated assembly, runtime AVX2 dispatch, stack/state layout. Author explicitly identifies generator as stack’s main complexity cost and by far most Claude-authored file (PS3). PS5, try +1; not mergeable. Requires full human assembly/generator review, not just consumer CL review. |
| 2 / experimental follow-up | [778420](https://go-review.googlesource.com/c/go/+/778420), Neal | **AMD Ryzen 9 9950X**, Linux/amd64, pinned CPU0 and GOMAXPROCS=1, n=6: ML-KEM-768 **parse+Encapsulate −34.43%, Decapsulate with retained key −61.10%, Alice −46.05%, Bob −35.02%**. **KeyGen −33.26% is internal deterministic keygen + public-key serialization, NOT public GenerateKey768** (exclude as public-API headline). | **High experimental/portability cost**, +407/−11; AVX2 polynomial/NTT code with unsafe vector loads and `simd/archsimd`, build gated `goexperiment.simd && amd64.v3 && !purego`. **WIP**, PS2, last update May 16, 2026; no CR approval or trybot success in current labels, mergeable true. Ask author readiness and current toolchain plan; baseline `b/mlkem/scalar` vs `b/mlkem/native`, not combined with SHA3 series. |

“Not mergeable” above is the exact Gerrit endpoint result, **not proof every CL has a standalone source conflict**: all use CHERRY_PICK, so unlanded prerequisite edits can themselves make a child unmergeable. Restack/land prerequisites/recheck before declaring rebase complete. Conversely mergeable=true is not a compiler, test, approval, or dependency-readiness guarantee.

## Exact workload scope (verified in current-revision benchmark source)

* **ML-KEM rows above are 768, not 1024.** `RoundTrip/Alice`: `GenerateKey768()` + `dkS.EncapsulationKey().Bytes()` + decapsulation on a **separate previously prepared key/ciphertext**. It is an Alice-side composite cost proxy, not a full freshly matched KEM exchange or TLS handshake. `RoundTrip/Bob`: `NewEncapsulationKey768(ekBytes)` + `Encapsulate()`. CL778420 `Encaps` has the same parse+encapsulation scope; `Decaps` excludes key construction/parsing. `KeyGen` calls **internal** `mlkem.GenerateKeyInternal768(&d,&z)` with pre-generated fixed seeds, then serializes public key: it does not measure public GenerateKey768’s randomness cost. Source: `778420-mlkem_test.go` and `818724-mlkem_test.go`.
* **ML-DSA Verify**: each timed iteration does `NewPublicKey(params,pub)` + `Verify` over **128 zero bytes** with context `"context"`; not pre-parsed verification. CL822000 removes Precomputed subbenchmarks and flattens Whole into this name. **Keygen** is public `NewPrivateKey(params, make([]byte,32))`, a **zero seed expansion**, not randomness-inclusive GenerateKey. **Sign** uses retained private key from zero seed, cycles/shuffles the fixed representative short-message corpus, and calls public **SignDeterministic(message,nil)**; not randomized signing, not key construction. Source `818920-mldsa_test.go`.
* CL818721’s device-family discussion applies only to paired Keccak permutations; do not present it as another public-operation benchmark or multiply it into consumer gains. No helper-only percentages are used as public-operation headlines here.

## Dependencies / overlap — DO NOT SUM

Current actual Git parent chain from Gerrit related changes:

```
818720 ReadMulti → 818721 arm64 x2 → 818722 amd64 x4
 → 818723 TestAllocations [unassigned test-only prerequisite, also NEW]
 → 818724 ML-KEM batch → 818725 ML-KEM branchless
 → 822000 ML-DSA benchmark cleanup → 818920 ML-DSA batch
 → 818921 ML-DSA branchless → 818922 signing-mask batch
 → 822001 NTT reductions → 822002 defer rejected signing work
 → 822040 wider/lazier NTT representations
```

This is a **Git stack**, not proof each conceptual optimization needs every earlier unrelated ML-KEM/ML-DSA change. Branchless samplers currently modify helper structure introduced by corresponding batch CLs. Deferred signing work is a candidate for independent extraction; check against baseline rather than promise conflict-free independence. Reductions need their own overflow/representation review. Batch consumers depend on ReadMulti for operation, and on architecture kernels for measured benefit. 778420 optimizes ML-KEM NTT/poly arithmetic, whereas 818724/818725 optimize sampling, but both affect the same public workloads and `field.go`: neither empirical composition nor no-conflict independence is established. No additive totals.

Author benchmark baselines confirm separate incremental comparisons: 818724 `6a4ff9ce36d → 5b88a56f91f`; 818725 `5b88a56f91f → 00bf12301b5`; 818920 `6a4ff9ce36d → 2813ea98081`; 818921 `2813ea98081 → 2081e90e215`; 818922 `2081e90e215 → 4bdb0753894`. These are not current PS hashes. Commit geomeans for some ML-DSA CLs visibly include a different/full set of rows than the displayed subset; use individual operation rows, not those geomeans, as headlines.

## Assigned non-performance changes — explicitly excluded

* **[822000](https://go-review.googlesource.com/c/go/+/822000), Filippo Valsorda:** benchmark cleanup, +10/−26. Removes precomputed verification benchmark, retains parse+verify whole workload. NEW, not WIP, PS3, rebased September 21; no CR vote, try +1, mergeable true. **Not production speedup**; useful scope fix / stack prerequisite.
* **[839786](https://go-review.googlesource.com/c/go/+/839786), Cristian Girlea:** capacity-limited returned shared-key slices (`G[:32:32]`) plus tests, +49/−2. **Correctness/secret-slice hygiene, not performance**. NEW, not WIP, PS1; September 27; Filippo CR+2, Auto-Submit+1, try +1, mergeable true, no current Commit-Queue vote. Approved and awaiting landing, not already merged. No benchmark claim.

## Source-extracted current commit messages (verbatim supporting benchmark text)

The following extracts are retained for exact numbers, original hardware labels, and baseline attribution. They are author reports; no new measurements were made.

### CL818725 — PS6, ff68a3549457069c50b9ebdc650e15c0deaa409c

```text
crypto/mlkem: add a branchless parseSampleNTT fast path

host: linux-amd64_c2s16
                   │ 5b88a56f91f │            00bf12301b5             │
                   │   sec/op    │   sec/op     vs base               │
RoundTrip/Alice-16   118.8µ ± 0%   113.3µ ± 0%  -4.67% (p=0.000 n=20)
RoundTrip/Bob-16     58.94µ ± 0%   56.73µ ± 0%  -3.74% (p=0.000 n=20)
geomean              83.67µ        80.16µ       -4.21%

host: linux-arm64_c4as16
                   │ 5b88a56f91f │            00bf12301b5             │
                   │   sec/op    │   sec/op     vs base               │
RoundTrip/Alice-16   120.1µ ± 0%   116.2µ ± 0%  -3.25% (p=0.000 n=20)
RoundTrip/Bob-16     59.52µ ± 0%   58.52µ ± 0%  -1.68% (p=0.000 n=20)
geomean              84.53µ        82.45µ       -2.47%

benchmark \ host    linux-amd64_c2s16  linux-arm64_c4as16
                              vs base             vs base
RoundTrip/Alice                -4.67%              -3.25%
RoundTrip/Bob                  -3.74%              -1.68%

Change-Id: I441952e8033404bec2f881f0c3ced5326a6a6964

```

### CL818921 — PS6, 1e1c6353ecd74479b6aca981016dcd9c77d243bb

```text
crypto/mldsa: add a branchless parseSampleNTT fast path

host: linux-amd64_c2s16
                      │ 2813ea98081 │     2081e90e215      │
                      │   sec/op    │   sec/op     vs base               │
Verify/ML-DSA-44-16     111.1µ ± 0%   107.7µ ± 0%  -3.00%
Verify/ML-DSA-65-16     168.9µ ± 0%   162.9µ ± 0%  -3.53%
Verify/ML-DSA-87-16     258.1µ ± 0%   247.3µ ± 0%  -4.20%
Keygen/ML-DSA-44-16     164.7µ ± 0%   161.7µ ± 0%  -1.80%
Keygen/ML-DSA-65-16     263.1µ ± 0%   256.8µ ± 0%  -2.40%
Keygen/ML-DSA-87-16     350.0µ ± 0%   339.3µ ± 0%  -3.07%
geomean                 256.8µ        250.5µ       -2.44%

host: linux-arm64_c4as16
                      │ 2813ea98081 │     2081e90e215      │
                      │   sec/op    │   sec/op     vs base               │
Verify/ML-DSA-44-16     96.56µ ± 0%   94.99µ ± 0%  -1.63%
Verify/ML-DSA-65-16     152.0µ ± 0%   148.9µ ± 0%  -2.04%
Verify/ML-DSA-87-16     243.7µ ± 0%   237.7µ ± 0%  -2.47%
Keygen/ML-DSA-44-16     124.1µ ± 0%   122.5µ ± 0%  -1.34%
Keygen/ML-DSA-65-16     199.2µ ± 0%   196.3µ ± 0%  -1.50%
Keygen/ML-DSA-87-16     295.0µ ± 0%   288.9µ ± 0%  -2.05%
geomean                 217.0µ        213.8µ       -1.44%

benchmark \ host      linux-amd64_c2s16  linux-arm64_c4as16
                                vs base             vs base
Verify/ML-DSA-44                 -3.00%              -1.63%
Verify/ML-DSA-65                 -3.53%              -2.04%
Verify/ML-DSA-87                 -4.20%              -2.47%
Keygen/ML-DSA-44                 -1.80%              -1.34%
Keygen/ML-DSA-65                 -2.40%              -1.50%
Keygen/ML-DSA-87                 -3.07%              -2.05%

Change-Id: Ib6050f49086b6d20e03f2e4d4f1ccceb6a6a6964

```

### CL818724 — PS6, 33573a11f009f1f91013c3b76e32e1c2de4a8f4c

```text
crypto/mlkem: batch sampling of matrix A

host: linux-amd64_c2s16
                   │ 6a4ff9ce36d │             5b88a56f91f             │
                   │   sec/op    │   sec/op     vs base                │
RoundTrip/Alice-16   127.1µ ± 0%   118.8µ ± 0%   -6.50% (p=0.000 n=20)
RoundTrip/Bob-16     66.04µ ± 0%   58.94µ ± 0%  -10.76% (p=0.000 n=20)
geomean              91.60µ        83.67µ        -8.65%

host: linux-arm64_c4as16
                   │ 6a4ff9ce36d │            5b88a56f91f             │
                   │   sec/op    │   sec/op     vs base               │
RoundTrip/Alice-16   122.6µ ± 0%   120.1µ ± 0%  -2.05% (p=0.000 n=20)
RoundTrip/Bob-16     61.95µ ± 0%   59.52µ ± 0%  -3.92% (p=0.000 n=20)
geomean              87.14µ        84.53µ       -2.99%

benchmark \ host    linux-amd64_c2s16  linux-arm64_c4as16
                              vs base             vs base
RoundTrip/Alice                -6.50%              -2.05%
RoundTrip/Bob                 -10.76%              -3.92%

Change-Id: I812938c88bdd332b9f6ce4e1a35eb48f6a6a6964

```

### CL818920 — PS6, 4925b062759751aad4a690a61b6f6f32bec1a43e

```text
crypto/mldsa: batch sampling of matrix A

host: linux-amd64_c2s16
                           │ 6a4ff9ce36d │      2813ea98081     │
                           │   sec/op    │   sec/op     vs base │
Verify/ML-DSA-44-16         131.7µ ± 0%   111.1µ ± 0%  -15.65%
Verify/ML-DSA-65-16         206.7µ ± 0%   168.9µ ± 0%  -18.31%
Verify/ML-DSA-87-16         331.3µ ± 0%   258.1µ ± 0%  -22.11%
Keygen/ML-DSA-44-16         185.8µ ± 0%   164.7µ ± 0%  -11.36%
Keygen/ML-DSA-65-16         301.2µ ± 0%   263.1µ ± 0%  -12.67%
Keygen/ML-DSA-87-16         426.3µ ± 0%   350.0µ ± 0%  -17.89%
geomean                     296.6µ        256.8µ       -13.42%

host: linux-arm64_c4as16
                           │ 6a4ff9ce36d  │     2813ea98081     │
                           │    sec/op    │  sec/op     vs base │
Verify/ML-DSA-44-16         101.01µ ± 0%   96.56µ ± 0%  -4.40%
Verify/ML-DSA-65-16          160.2µ ± 0%   152.0µ ± 0%  -5.13%
Verify/ML-DSA-87-16          259.1µ ± 0%   243.7µ ± 0%  -5.93%
Keygen/ML-DSA-44-16          128.6µ ± 0%   124.1µ ± 0%  -3.45%
Keygen/ML-DSA-65-16          207.7µ ± 0%   199.2µ ± 0%  -4.07%
Keygen/ML-DSA-87-16          310.2µ ± 0%   295.0µ ± 0%  -4.92%
geomean                      225.4µ        217.0µ       -3.74%

benchmark \ host          linux-amd64_c2s16  linux-arm64_c4as16
                                    vs base             vs base
Verify/ML-DSA-44                    -15.65%              -4.40%
Verify/ML-DSA-65                    -18.31%              -5.13%
Verify/ML-DSA-87                    -22.11%              -5.93%
Keygen/ML-DSA-44                    -11.36%              -3.45%
Keygen/ML-DSA-65                    -12.67%              -4.07%
Keygen/ML-DSA-87                    -17.89%              -4.92%

Change-Id: Ifabf349562141449c5e5bf4e595454af6a6a6964

```

### CL818922 — PS6, f55bd140c763ffa9edcaad0e8c9c0450123da78e

```text
crypto/mldsa: batch expansion of signing masks

host: linux-amd64_c2s16
                   │ 2081e90e215 │            4bdb0753894             │
                   │   sec/op    │   sec/op     vs base               │
Sign/ML-DSA-44-16    438.8µ ± 0%   419.9µ ± 0%  -4.31% (p=0.000 n=20)
Sign/ML-DSA-65-16    712.3µ ± 0%   690.6µ ± 0%  -3.04% (p=0.000 n=20)
Sign/ML-DSA-87-16    797.8µ ± 0%   769.8µ ± 0%  -3.51% (p=0.000 n=20)
geomean              250.5µ        248.3µ       -0.87%

host: linux-arm64_c4as16
                   │ 2081e90e215 │            4bdb0753894             │
                   │   sec/op    │   sec/op     vs base               │
Sign/ML-DSA-44-16    346.6µ ± 0%   344.3µ ± 0%  -0.65% (p=0.000 n=20)
Sign/ML-DSA-65-16    572.5µ ± 0%   570.0µ ± 0%  -0.44% (p=0.000 n=20)
Sign/ML-DSA-87-16    647.3µ ± 0%   643.5µ ± 0%  -0.59% (p=0.000 n=20)
geomean              213.8µ        213.6µ       -0.14%

benchmark \ host   linux-amd64_c2s16  linux-arm64_c4as16
                             vs base             vs base
Sign/ML-DSA-44                -4.31%              -0.65%
Sign/ML-DSA-65                -3.04%              -0.44%
Sign/ML-DSA-87                -3.51%              -0.59%

Change-Id: Ie8f62bf724fa2a55de7e2769996711376a6a6964

```

### CL778420 — PS2, aa4341418cdb713b481df600968b51c7ccdf6b65

```text
crypto/internal/fips140/mlkem: add accelerated simd/archsimd implementation

To eliminate any type of icache or core migration noise,
I used `GOMAXPROCS=1 taskset -c 0 go test ...`

goos: linux
goarch: amd64
pkg: crypto/mlkem
cpu: AMD Ryzen 9 9950X 16-Core Processor
                │ b/mlkem/scalar │           b/mlkem/native           │
                │     sec/op     │   sec/op     vs base               │
KeyGen               26.41µ ± 1%   17.63µ ± 0%  -33.26% (p=0.002 n=6)
Encaps               31.06µ ± 0%   20.37µ ± 0%  -34.43% (p=0.002 n=6)
Decaps               33.45µ ± 0%   13.01µ ± 0%  -61.10% (p=0.002 n=6)
RoundTrip/Alice      64.31µ ± 0%   34.70µ ± 0%  -46.05% (p=0.002 n=6)
RoundTrip/Bob        31.12µ ± 0%   20.22µ ± 0%  -35.02% (p=0.002 n=6)
geomean              35.31µ        20.10µ       -43.09%

Updates #79413

Change-Id: Ib181d43a8883fdaa4a33da3d6267d5f84487efb8

```
