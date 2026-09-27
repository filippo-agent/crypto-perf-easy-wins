# Pending Go crypto performance work

**Checked September 27, 2026.** Screened the 336 open Go changes returned by the crypto query; fetched current revisions/reviews for **63 performance-related or adjacent changes**. This is a curated queue, not a claim that all 63 are useful speedups. All listed changes were `NEW` (open) when checked. Authors are named so maintainers can identify work they have not seen; no team membership is inferred. Gerrit Bot is not credited as a human author.

**Evidence rule:** unless explicitly marked “our extracted experiment,” numbers below are historical author/reviewer reports, not new measurements of the pending CL. They are reductions in time/op, not throughput percentages. Operation, hardware, date, WIP state and dependencies matter. Allocation/binary-size savings are not CPU wins. “Applies” below means only `git apply --check` against the audit's pinned Go source plus four disjoint local changes—not approval, compilation, tests or correctness.

## Most useful items to surface to the team

| CL / human author | What is pending | Evidence at the complete-operation level | State / useful next action |
|---|---|---|---|
| [520269](https://go-review.googlesource.com/c/go/+/520269) — **Mateusz Poliwczak** | Outline HMAC initialization so the HMAC object can stay on the caller's stack. Original change is +6/−2. | Reported **26.78% less time for NewWriteSum**, 7→6 allocations, on i5-4460; reused HMAC benchmarks unchanged. Samples are noisy, ±27%/±18%. | **Dormant since February 19, 2024**, no substantive human review. Does **not** apply to today's FIPS-backed HMAC layout. Worth porting and rebenchmarking, not advertising as a current 27% gain. |
| [755040](https://go-review.googlesource.com/c/go/+/755040) — **Zeid Asseh** (`onyz`) | HKDF byte-info APIs **and both loop-allocation optimizations**: convert info once, reuse counter storage. | No measurements attached to CL. **Our API-neutral extracted experiment:** public SHA256 Expand, 8 blocks: −13.30% with 16-byte info; −11.75% with 1-KiB info. One/two-block cases mostly unchanged. These are **not measurements of the full API CL**. | Last activity **April 6, 2026**; patch applies. Proposal #78141 remains unaccepted (fresh issue check). **Coordinate an implementation-only split** rather than let the internal fix wait on API/naming discussion. Credit this pending work; it is not a new audit discovery. |
| [835565](https://go-review.googlesource.com/c/go/+/835565) — **XiaolinZhao / sophie zhao** | Build Loong64 AES-CTR counter blocks directly in vector registers instead of storing/reloading stack scratch. One existing assembly file, net code deletion. | Actual `crypto/cipher` AESCTR: **5.89–10.11% less time** on 3C6000/S; **3.86–6.03%** on 3A5000, depending on key/message size. | Updated **September 21, 2026**; not WIP; patch applies. Best bounded architecture-specific cleanup found. Needs a Loong64 reviewer/hardware validation; not a portable-Go change or approved yet. |
| [799801](https://go-review.googlesource.com/c/go/+/799801) — **Naman Trivedi** | Defer system-root directory scans when a bundle supplies roots. | Reported cold root loading **12→3 ms** on Fedora/RHEL; **1510→398 ms** on constrained Amazon Linux 2023. **Not a steady-state Verify/handshake gain.** | PS18, **August 13, 2026**; patch applies. Significant **trust/chain-selection semantics** review remains despite opt-out and fallback handling. Worth visibility, **not low-hanging fruit**. |
| [756360](https://go-review.googlesource.com/c/go/+/756360) — **Quim Muntal** | Cache a Windows certificate-chain engine/store, with auto-resync. | Targets repeated `Certificate.Verify` over large stores; **no quantified result attached**. | **WIP**, last update **March 18, 2026**; patch no longer applies cleanly. Ask about readiness and request Verify/store-mutation measurements. Significant platform/lifetime/cache review. |
| [778420](https://go-review.googlesource.com/c/go/+/778420) — **Neal Patel** | SIMD/archsimd ML-KEM polynomial/NTT implementation. | Ryzen 9950X, ML-KEM-768: **parse+encapsulation −34.43%, retained-key decapsulation −61.10%**; Alice/Bob composites −46.05%/−35.02%. The reported “KeyGen” is internal deterministic keygen, **not public GenerateKey768**. | **WIP**, **May 16, 2026**; patch applies. Experimental `goexperiment.simd && amd64.v3 && !purego`; much greater compiler/vector/unsafe review burden. Large potential, not a cheap fix. |

### Architecture queue with major operation-level evidence

**Meng Zhuo's dependent RISC-V vector-crypto stack:**

[752981](https://go-review.googlesource.com/c/go/+/752981) SHA256 →
[755840](https://go-review.googlesource.com/c/go/+/755840) SHA512 →
[765200](https://go-review.googlesource.com/c/go/+/765200) AES →
[767700](https://go-review.googlesource.com/c/go/+/767700) CTR →
[771900](https://go-review.googlesource.com/c/go/+/771900) GCM.

On **Spacemit X100**, author reports public hash/mode results: SHA256 ~26–78% less time by message size; SHA512 ~27–58%; AES block Encrypt/Decrypt 84–87%; CTR 60–76%; GCM Open/Seal 81–89%. These are **hardware-extension-specific**, not generic RISC-V or TLS speedups, and percentages are not additive.

The SHA CLs have +2 reviews, but the **last September 12–14 discussion explicitly waits for the Zvk CI builder**; AES/GCM also have outstanding substantive comments. Approvals on two parents do not make the whole stack ready. SHA512 requires at least 256-bit vectors. Detailed states/feature gates are in `pending/arch.md`.

Other architecture work worth tracking, but not the small-win queue:

- **XiaolinZhao / sophie zhao:** [806280](https://go-review.googlesource.com/c/go/+/806280), Loong64 GHASH assembly. Reported **36–46% less time for AESGCM Open/Seal** on two Loongson CPUs. **Maintainer design objection** to introducing a one-architecture arithmetic boundary; last update August 6, 2026.
- **Julian Zhu:** [671275](https://go-review.googlesource.com/c/go/+/671275), RISC-V scalar SHA512 Zbb path, **4–6% public-hash gains**, unresolved simplification/unaligned-path feedback since February 20. MIPS64x assembly [743760](https://go-review.googlesource.com/c/go/+/743760) SHA1, [738362](https://go-review.googlesource.com/c/go/+/738362) SHA512, [738363](https://go-review.googlesource.com/c/go/+/738363) SHA256 report larger public-hash gains on Loongson-3A3000, but have not moved since March; SHA1 has an outstanding potential-segfault review finding.
- **Weihong Qiu:** [733960](https://go-review.googlesource.com/c/go/+/733960), RISC-V P256 multiplication. Reported **12.91% ScalarMult improvement**, not ECDSA/ECDH. January review objects to hand-written assembly inside autogenerated fiat; needs architectural placement resolution.

## Existing PQ/SHA3 optimization stack

All authored by **Filippo Valsorda**, rebased September 21, 2026. The small consumer diffs must not conceal their shared infrastructure cost.

| CL(s) | Pending change | Evidence / cost |
|---|---|---|
| [822002](https://go-review.googlesource.com/c/go/+/822002) | Defer each cs1/cs2 computation until it survives preceding ML-DSA signing rejection checks. | **Closest to the original low-cost theme**, +5/−11 in one Go file. **No public Sign timing in current CL/discussion**. Could be considered as an independent extraction; review output/rejection-order invariants. |
| [822001](https://go-review.googlesource.com/c/go/+/822001), [822040](https://go-review.googlesource.com/c/go/+/822040) | Remove/defer NTT reductions and carry wider representations. | **Not tiny math changes:** hundreds of changed lines, partial-reduction types/bounds, unsafe aliases and accumulation invariants. No attached whole-operation measurements. |
| [818724](https://go-review.googlesource.com/c/go/+/818724) | Batch ML-KEM matrix sampling. | ML-KEM-768 Alice/Bob composite costs **−6.50%/−10.76% on the author's amd64 host**, −2.05%/−3.92% on arm64. Depends on shared batched SHAKE machinery. |
| [818920](https://go-review.googlesource.com/c/go/+/818920) | Batch ML-DSA matrix sampling. | Public **parse+Verify −15.65–22.11% amd64**, −4.40–5.93% arm64; private-key seed expansion −11.36–17.89% amd64, −3.45–4.92% arm64. |
| [818725](https://go-review.googlesource.com/c/go/+/818725), [818921](https://go-review.googlesource.com/c/go/+/818921) | Branchless ML-KEM/ML-DSA samplers. | Incremental **~1–5% whole-workload** improvements over their respective batch changes; not huge standalone wins. |
| [818922](https://go-review.googlesource.com/c/go/+/818922) | Batch signing-mask expansion. | Public ML-DSA **SignDeterministic −3.04–4.31% amd64**, only −0.44–0.65% arm64. |
| [818720](https://go-review.googlesource.com/c/go/+/818720), [818721](https://go-review.googlesource.com/c/go/+/818721), [818722](https://go-review.googlesource.com/c/go/+/818722) | ReadMulti API/generic implementation, arm64 two-lane Keccak, amd64 four-lane AVX2 Keccak. | **Shared review/maintenance cost** behind batch consumers: state/dispatch/tests, assembly and an approximately thousand-line generator/assembly change. Kernel parallelism is not another independent public-operation gain. |

Actual Git stack (not a claim all conceptual dependencies are necessary):

`818720 → 818721 → 818722 → 818723 tests → 818724 → 818725 → 822000 benchmark cleanup → 818920 → 818921 → 818922 → 822001 → 822002 → 822040`.

Some descendants are not currently cherry-pick-mergeable according to Gerrit; unresolved/unlanded prerequisites can explain that. 818921 currently has a failed TryBot plus author bypass for a stated flake. Resolve/recheck the stack rather than call it all merge-ready. **Do not sum its benchmark percentages.** Public-operation definitions, exact parent comparisons and states: `pending/pq.md`.

## Open does not necessarily mean useful pending work

The review found several changes still marked NEW whose intended improvement is already in today's tree:

- **480095**, Marten Seemann, old HKDF-label preallocation: current TLS13 module already preallocates exactly. Its historical **6% is allocation count, not time**; all reported handshake timings were unchanged.
- **464835**, Jorropo, embedded `atLeastReader`: current TLS no longer uses the helper.
- **676055**, qiu laidongfeng, pooled rawInput: current TLS already has a pool with a different lifecycle strategy. Old isolated P521 handshake figures are not remaining gains.
- **482875**, Mateusz Poliwczak, eliminate reflection in name constraints: old helper is gone; current implementation is generic.
- **480535**, Marten Seemann, omit TLS≤1.2 cipher suites for TLS1.3-only configs: current code already does this.
- **716900**, Roland Shoemaker, trie constraints: WIP predecessor; current sorted/pruned prefix-set design explicitly rejects tries on memory/adversarial-fanout grounds. Not an easy pending optimization.

Lower-priority or non-CPU work:

- **787380 — Dimitri John Ledkov:** small **benchmark-only** improvement to TLS server-handshake coverage, FIPS support and setup-error handling. Relevant to measuring real operations; not production speedup.
- **760101 — Olivier Mengué:** static hash registry arrays, +2 review, tiny cleanup; no demonstrated whole-hash benefit, reviewer explicitly calls it low-value.
- **733845 — Jorropo:** WIP word-wide subtle loops with two byteorder prerequisites. Long-slice microbench wins but **large short-slice regressions** and failed try results; no demonstrated whole-crypto-op win.
- **Neal Patel's other SIMD experiments:** 778260 AES has improved block operations but slower construction and neutral/slower GCM; 778100 SHA-NI SHA256 and 778120 AVX2 SHA256 regress; 778102 SHA1 is essentially neutral. All WIP. ML-KEM's results do not establish this entire family as faster.
- **824126 — Filippo Valsorda:** RSA CAST **binary-size/first-use CPU tradeoff**, not a speedup. Reviewer observes verification-only binary-size regression.
- **810621 — Josh Bleecher Snyder:** disable MD5 assembly on RISC-V/s390x as compiler/maintenance work; author explicitly lacks proper hardware testing. **No measured speed win**, not eligible under this audit's bar.
- **785780 — Michael Podtserkovskii:** WIP dependency reduction; reports faster forced-rebuild time for `crypto/internal/impl`, **not runtime crypto performance**.

The detailed archive also preserves older P256 restructuring, AES/IFMA proposals and 2020 X.509 parsing experiments. Their old numbers do not describe current Go. For example, 272726 reports 81% faster AppendCertsFromPEM but deliberately defers malformed-certificate errors; that is a semantic change, not a free parser optimization. 508235 is a missing-unlock correctness fix, not a missing performance optimization. None is quietly promoted into the low-cost queue.

## Artifacts and next actions

- `pending/inventory.csv`: all 63 inspected candidates with human submitter, commit author, status/WIP, exact updated timestamp, patch set, size, direct parent when indexed, and clickable URL.
- `pending/general.md`, `pending/pq.md`, `pending/arch.md`: detailed source/review evidence, actual benchmark scopes and outstanding feedback.
- `pending/<CL>.json`, comments, revision patches: saved primary sources. `*-applycheck.txt`: explicit applicability checks for selected candidates.
- Fresh proposal state: `pending/issue-78141.json` and the independently fetched issue/comments files.

**First follow-ups I would choose:** contact Zeid Asseh about the API-neutral HKDF split; revive/rebenchmark Mateusz Poliwczak's HMAC idea against the FIPS implementation; get a Loong64 specialist on 835565. Keep the Windows/root-loading and SIMD/vector efforts visible as separate higher-review-cost projects. Close/mark superseded old proposals where appropriate instead of treating every NEW CL as an unclaimed optimization.
