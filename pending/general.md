# Pending general crypto/TLS/X.509 performance work — September 27, 2026

## Method and interpretation

Owned inventory: CLs 480095, 464835, 676055, 787380, 799801, 756360, 716900, 482875, 480535, 755040, 520269, 614085, 760101, 824126. All fourteen are Gerrit `NEW` (open), **not fourteen live opportunities**. Read current commit messages, review messages, all published inline comments, current patches, and the relevant current upstream source. `NEW`, old TryBot success, and even a review vote are not proof of current mergeability. The supplied detail responses do not report `mergeable`/`submittable`.

Evidence files: `<CL>.json` (supplied fresh detail), `<CL>.comments.json` and `<CL>.patch` (fetched directly from Gerrit during this review). `78141.issue.json` and `78141.issue-comments.json` are the freshly rechecked GitHub proposal state and complete comment thread. `general-current-baseline.txt` preserves source evidence from **origin/master 2ff5743d9fd52fac166225e75df0c2c1edf82abb (September 26, 2026)**, deliberately not the audit branch's later commits. No production edits, tests, or benchmarks were run by this worker. Numerical results below are attributed reports, not independently reproduced results.

Public author names come from the commit and Gerrit account, **not team membership guesses**. In particular, Gerrit Bot owns imported CLs 799801, 482875, 520269, and 614085; their actual authors are given below.

## Recommendations at a glance

1. **Contact Zeid Asseh about splitting CL 755040's existing internal HKDF loop optimizations from its blocked API proposal.** This is the most relevant small implementation opportunity here, but do not call it a new audit discovery or promise a significant common-case speedup. Current patch already hoists BOTH the info conversion and counter allocation.
2. **Review CL 787380 (Dimitri John Ledkov) as benchmark infrastructure.** Small test-only change, directly improves whole server-handshake coverage/FIPS usability. It is not a production speedup.
3. **Engage Naman Trivedi on CL 799801 if cold-start root loading matters.** It has unusually tangible operation-level timing evidence and recent review activity, but substantial semantic risk; not low-hanging fruit.
4. **Ask Quim Muntal whether WIP CL 756360 is ready to revive, with representative Windows `Certificate.Verify` measurements.** No quantitative result is attached, and this is cache/trust-store lifecycle work, not a tiny change.
5. **Triage away six effectively superseded proposals:** 480095, 464835, 676055, 716900, 482875, 480535. Their still-open status overstates the actionable queue.
6. **Do not headline 760101, 614085, or 824126 as speed wins.** Respectively: tiny registry cleanup already +2 but explicitly low-value; object-size saving with BoringCrypto lifecycle edits; binary-size tradeoff with a reviewer-observed verification-only regression. CL 520269 is an old HMAC idea worth attribution, not an as-is landable patch.

## Live implementation/design queue

### CL 755040 — Zeid Asseh (commit author `onyz`)
**crypto/hkdf: add ExpandBytes and KeyBytes**

- Source: https://go-review.googlesource.com/c/go/+/755040 ; proposal https://github.com/golang/go/issues/78141 .
- **State:** PS3; last activity April 6, 2026; no Code-Review approval. Daniel McCarney notes the proposal exists but is not accepted, so this change must wait. API naming is also discussed. Rechecked live GitHub API on September 27, 2026: still open with `Proposal` / `LibraryProposal`, no accepted label; last issue update March 13, 2026. Both issue comments are automated (CL link and related-issue suggestions), with no subsequent proposal decision. This confirms current proposal status rather than extrapolating only from the April Gerrit review.
- **Actual patch, not just title:** public and internal `ExpandBytes`/`KeyBytes`; existing string wrappers convert `[]byte(info)` once before calling the byte-based implementation. `counterBuf := make([]byte, 1)` is allocated outside the loop and reused. Thus **both info-conversion hoisting and counter reuse are already this author's pending work**.
- **Evidence:** no benchmark numbers in current commit or review. Expected benefit grows with multiple output blocks and nonempty/large info; it does not remove HMAC/hash work. Neither savings in allocated bytes nor a favorable synthetic many-block benchmark establishes a common one-block HKDF/TLS-handshake latency win.
- **Review burden/action:** small internal mechanics, but API proposal and FIPS surface make the submitted package broader. Coordinate an **API-neutral internal-only split**, preserve zero-output behavior and arbitrary binary info, and measure public `hkdf.Expand`/`Key` with realistic output lengths separately from stress cases. Existing audit extraction should be credited to this CL, not offered as novel work.

### CL 799801 — Naman Trivedi (imported by Gerrit Bot)
**crypto/x509: defer directory scan when cert bundle provides roots**

- Source: https://go-review.googlesource.com/c/go/+/799801 .
- **State:** PS18; last update August 13, 2026, following substantive Emmanuel Odeke and Daniel McCarney reviews. No approval/current positive TryBot label. PS15/16 previously passed TryBots; not evidence PS18 is ready. Current diff is +462/-21 across five files.
- **Meaningful operation evidence, from author's current commit:** certificate-root loading about **12 ms → 3 ms** on standard Fedora/RHEL; **1,510 ms → 398 ms** on a CPU-constrained Amazon Linux 2023 environment (example 128 MB / 0.08 vCPU). These are **cold/root-loading timings**, not steady-state Verify or full-handshake benchmark results. The separate ~820 ms observation concerns redundantly reading/parsing directory files in a constrained environment, not an additional independent saving to sum with 1,510→398 ms.
- **Design:** use bundle roots first, lazily load default directories upon chain-build failure; explicit `SSL_CERT_DIR` stays eager. Current PS18 already adds `x509lazydirscan=0` opt-out, `CertPool.Equal` handling, slices.Clone, and preservation of original errors. Do not ask for those as though still absent.
- **Important review concern remains substantive despite resolved thread counters:** Daniel identified chain-filtering cases (EKU/policy/name constraints) where bundle-built paths exist but are later rejected, so fallback is not triggered, plus different `verifiedChains` passed to caller callbacks when bundle-only success returns fewer chains. Author agrees these are real gaps and added an opt-out rather than implementing full semantic equivalence. Reviewer is wary of the overall direction even with GODEBUG.
- **Review burden/action:** **significant**, trust-root/verification semantics, fallback state, pool cloning/equality, platform/environment behavior, tests and compatibility. Worth pursuing if deployment cold starts justify it, but not a one-line performance win. Next review should settle acceptable semantics/opt-out policy and examine coverage, not just rubber-stamp the reported speedup.

### CL 756360 — Quim Muntal (commit author `qmuntal`)
**crypto/x509: cache certificate stores on Windows**

- Source: https://go-review.googlesource.com/c/go/+/756360 .
- **State:** **WIP**, PS1; March 18, 2026 last activity; TryBots +1 but no review approval/discussion.
- **Actual mechanism:** cache a custom certificate chain engine via `sync.OnceValue`; open current-user CA store and enable auto-resync; pass cached engine to `CertGetCertificateChain`. The current patch relies on the engine's default root-store behavior, not simply a static snapshot of every root store.
- **Evidence:** author explains that repeatedly enumerating large stores is expensive and lies on `Certificate.Verify`/certificate-authenticating TLS paths; **no numerical Verify or handshake benchmark** supplied. Do not generalize to every handshake (e.g. resumed handshakes do not all perform certificate verification).
- **Review burden/action:** **significant platform-specific cache/lifetime/refresh correctness work** (+115/-2, syscall definitions included). Ask whether WIP can progress; request large-store Verify/certificate-authenticating handshake results plus trust-store mutation/auto-resync/failure/fallback/lifetime tests. Not ready to label landable.

### CL 520269 — Mateusz Poliwczak (imported by Gerrit Bot)
**crypto/hmac: allocate hmac struct on the stack**

- Source: https://go-review.googlesource.com/c/go/+/520269 .
- **State:** PS2; last activity February 19, 2024; no approval; historical TryBots +1. Published comments contain no substantive human review—only bot feedback and the author's “Done.” **Dormant, predates current FIPS implementation.**
- **Reported whole-MAC-construction evidence:** Linux/amd64 i5-4460, `NewWriteSum`: **3.432 µs → 2.513 µs (-26.78%)**, with substantial sample spread (±27% / ±18%); **544 → 448 B/op**, **7 → 6 allocs/op**. Reused `HMACSHA256_1K` and `_32` timings are **statistically unchanged**, as are their allocations. Do not advertise a universal 27% HMAC improvement or use the mixed benchmark geomean as a whole-operation claim.
- **Actual patch:** outline initialization into `(*hmac).init`, making constructor allocation amenable to caller stack allocation. Only +6/-2 in old code.
- **Current relevance:** public `crypto/hmac` no longer contains that struct/constructor implementation; it delegates to generic `crypto/internal/fips140/hmac.New`. **Not directly applicable.** Idea could be ported, but current compiler inlining/escapes and FIPS wrapper path require new evidence.
- **Review burden/action:** potentially small private implementation change after port, but larger validation than its old diff suggests. Contact original author if reviving; request fresh public New/Write/Sum vs reset/reuse measurements. Historical data are not current speed proof.

## Small / supporting work, not demonstrated significant speedups

### CL 787380 — Dimitri John Ledkov
**crypto/tls: improve BenchmarkHandshakeServer**

- Source: https://go-review.googlesource.com/c/go/+/787380 .
- **State:** PS1, June 5, 2026; no human review or approval yet. +37/-17, test files only.
- **Value:** makes server-handshake benchmarks usable in FIPS mode, prevents failed client setup from deadlocking the pipe, uses default cipher selection, skips unsupported cases, adds X25519MLKEM768 and SecP256r1MLKEM768 coverage. Current baseline still lacks these benchmark changes.
- **Review burden/action:** **low**, useful to the operation-level measurement agenda; prioritize an ordinary test review. Explicitly **not a production performance improvement** and carries no measured speedup.

### CL 760101 — Olivier Mengué
**crypto: static alloc and size for hashes registry**

- Source: https://go-review.googlesource.com/c/go/+/760101 .
- **State:** PS1; last activity May 13, 2026; **Alan Donovan Code-Review +2**; no TryBot result in current labels. Registry/digest-size slice-to-array change is still absent from baseline.
- **Evidence:** no benchmarks. Static arrays instead of slice globals; hash lookup overhead is not meaningful evidence of hash throughput. Reviewer explicitly calls change benign and low-value; author agrees lookup time is negligible vs hashing.
- **Review burden/action:** **very low**, +2/-2; administratively closest to approval but do not assert submittable. Finish normal landing process if desired, not a headline performance recommendation; no startup or binary-size measurement substantiates those possible effects.

### CL 614085 — Mateusz Poliwczak (imported by Gerrit Bot)
**crypto/ecdh: remove 8 byte pointer overhead for non-boringcrypto builds**

- Source: https://go-review.googlesource.com/c/go/+/614085 .
- **State:** PS1; last activity October 8, 2024; Jorropo +1, historical TryBots +1. Dormant.
- **Evidence:** claims **8 bytes smaller each for PublicKey and PrivateKey** in the pointer-size setting described by the title, not a per-ECDH operation or whole-handshake timing/allocs result. No measured speedup.
- **Actual burden:** +69/-56, value wrappers replacing BoringCrypto pointers; changes finalizers/KeepAlive/C-object access and disabled-build stubs. Current baseline still has the pointer fields, so the saving is not already present, but it is **not merely deleting a field**.
- **Action:** low priority for a non-BoringCrypto, low-complexity, public-operation speed audit. Needs BoringCrypto lifetime/compatibility review for modest object-size benefit; not worth calling a straightforward speed win.

### CL 824126 — Filippo Valsorda
**crypto/rsa: reduce size of FIPS 140-3 CAST**

- Source: https://go-review.googlesource.com/c/go/+/824126 .
- **State:** PS1; last activity August 31, 2026; TryBots +1, no approval. Daniel McCarney's concern was explicitly reopened/acknowledged by Filippo.
- **Evidence:** reviewer roughly reproduced **~5 KB binary-size saving for signing-capable users but ~24 KB increase for verification-only users**, due to newly retaining private-key initialization/check machinery. Not timings or heap allocations; provisional reviewer measurements, not a universal effect.
- **Tradeoff:** commit says extra CPU at init in FIPS mode; reviewer corrects timing to **first RSA use in FIPS mode**, not package init. No quantitative CPU measurement supplied.
- **Review burden/action:** **not a speed win**; unresolved binary reachability tradeoff, requires signing AND verification-only executable-size checks and first-use cost characterization. Do not present as a ready low-risk size/startup improvement.

## Open but superseded: remove from the actionable speedup queue

All these CLs remain `NEW`; the classifications below are based on current source, not an assertion that Gerrit formally closed them.

| CL / author | Last activity, state | Historical evidence | Why no longer an as-is pending win |
|---|---|---|---|
| **480095 — Marten Seemann**, preallocate TLS 1.3 HKDF label | PS3, March 31, 2023; no review votes | Whole server TLS 1.3 handshakes saved **33 allocs/op**, **6.20–6.61%** allocation count; about **1.58–1.71% B/op**. **All time/op comparisons statistically unchanged.** | Current `internal/fips140/tls13.ExpandLabel` already exact-capacity preallocates `hkdfLabel`. Old `cipherSuiteTLS13.expandLabel`/cryptobyte target is gone. The 6% figure is **not a speedup**. |
| **464835 — Jorropo**, retain `atLeastReader` in Conn | PS2, February 25, 2024; +1; historical TryBots +1. Previously abandoned as duplicate of 409334, then restored after that closed. | Reviewer reports local allocation improvement and asks for BenchmarkThroughput benchstat; **none supplied**. | Current `readFromUntil` directly implements the read loop; no `atLeastReader` is used. Do not revive an embedded-reader optimization to a removed helper. |
| **676055 — qiu laidongfeng** (commit `qiulaidongfeng`), pool Conn.rawInput | PS1, July 25, 2025 last ping; historical TryBots +1, no reviewer | Windows/amd64 Ryzen 7840HS server-handshake results: P-521 TLS1.3 **2.938→2.691 ms (-8.43%)**, TLS1.2 **2.918→2.582 ms (-11.52%)**; most other cases statistically unchanged; P-256/RSA TLS1.2 **+0.19% slower**. No allocation results supplied. | Baseline now has `rawInputPool` and explicit record-buffer release/reuse (plus handPool). This old patch instead registers `runtime.AddCleanup` on Close to return a buffer after Conn collection. Different/superseded lifecycle strategy; **do not sell old numbers as remaining gains**. Pool retention/cleanup/concurrency is significant review burden even though old diff is short. |
| **716900 — Roland Shoemaker**, trie-based name constraints | **WIP**, PS3; November 6, 2025; no votes/discussion | Adds a constraints benchmark, but **no before/after timing** in commit or review. +817/-245. | Current `constraints.go` already uses generic sorted/pruned prefix sets and explicitly explains rejecting tries because of memory costs and adversarial high-fanout growth. This experimental predecessor is not an active low-complexity opportunity; substantial algorithm/security review. |
| **482875 — Mateusz Poliwczak**, generics instead of reflect in checkNameConstraints | PS4, October 30, 2023; Ian Lance Taylor +1 | **No benchmark evidence** in commit/review. +18/-33. | Current Verify no longer has that reflective helper; new generic constraint machinery supersedes the target entirely. |
| **480535 — Marten Seemann**, only TLS1.3 cipher suites when minimum TLS1.3 | PS3, March 30, 2023; reviewer requested a test and author supplied one | **No benchmark evidence**; ClientHello/wire-size cleanup, not a proven handshake speedup | Current `makeClientHello` already resets cipher suites when `minVersion >= VersionTLS13`. Goal implemented independently; close/mark superseded rather than add again. |

CL sources: https://go-review.googlesource.com/c/go/+/480095 ; https://go-review.googlesource.com/c/go/+/464835 ; https://go-review.googlesource.com/c/go/+/676055 ; https://go-review.googlesource.com/c/go/+/716900 ; https://go-review.googlesource.com/c/go/+/482875 ; https://go-review.googlesource.com/c/go/+/480535 .

Baseline primary-source cross-checks (immutable upstream revision):

- https://go.googlesource.com/go/+/2ff5743d9fd52fac166225e75df0c2c1edf82abb/src/crypto/internal/fips140/tls13/tls13.go — exact label preallocation.
- https://go.googlesource.com/go/+/2ff5743d9fd52fac166225e75df0c2c1edf82abb/src/crypto/tls/conn.go — direct read loop and existing buffer pools.
- https://go.googlesource.com/go/+/2ff5743d9fd52fac166225e75df0c2c1edf82abb/src/crypto/x509/constraints.go — replacement constraint algorithm and trie memory rationale.
- https://go.googlesource.com/go/+/2ff5743d9fd52fac166225e75df0c2c1edf82abb/src/crypto/tls/handshake_client.go — TLS1.3-only cipher list handling.
- https://go.googlesource.com/go/+/2ff5743d9fd52fac166225e75df0c2c1edf82abb/src/crypto/hmac/hmac.go — public HMAC now delegates to FIPS implementation.

## Claim hygiene for parent summary

- Scope the headline to **author / current status / actual operation / review burden**; do not label people outsiders.
- **HKDF attribution correction is mandatory:** CL755040 already contains both hoists, not merely the API feature.
- **Allocation count, B/op, retained heap, binary size, and ns/op are different.** Do not translate a decrease in any one into an unmeasured decrease in another. None of the numbers above establish retained-heap reduction.
- A server `BenchmarkHandshakeServer` result measures that benchmark's server operation; do not turn it into a general end-to-end client/server/network handshake latency claim.
- No SHA384 or other unrelated correctness-only work included.
