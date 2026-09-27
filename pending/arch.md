# Architecture / SIMD pending-CL audit — 2026-09-27

## Scope and interpretation

This is the explicitly assigned **26-CL subset**, not an exhaustive Gerrit queue search. All 26 supplied fresh detail records report `status: NEW`. Read: current commit messages, file inventories, change messages, and separately fetched **inline review comments** (the detail records only say “N comments”). Downloaded each exact current revision's patch; inspected the architecture gates and representative changed code. No Go code changes or benchmarks were performed.

Sources are the public Go Gerrit records. `N.json`, `N-comments.json`, and `N.patch` in this directory preserve the evidence. The final appendix pins every current revision, patch set, parent and exact file scope. Updated dates below are **Gerrit's change-updated date**, which can be a vote or bot action rather than author activity. “No CR” / “no try result” mean absent nonzero current labels, not proof that no review/testing happened. Unresolved counts are the change-level counts; individual old comments retain `unresolved:true` even when a later reply resolves the thread. A green generic TryBot result does not establish testing on the accelerated hardware.

Names are **public commit authors**, with Gerrit owner aliases clarified where relevant. No inference about team membership or employment is made. All performance figures are author-reported **time/op reductions**, unless explicitly labeled otherwise; benchmark environments and scope matter. Primitive/hash/AEAD benchmarks are not application or TLS-handshake results.

## Triage conclusion

* **Best bounded assembly follow-up:** CL **835565**, Loong64 AES-CTR stack-roundtrip removal. One assembly file; existing entry points; reported 4–10% faster CTR on two CPUs. This is a relatively small specialist review, **not portable-Go low-cost work**, and lacks approval/try labels.
* **Largest currently reviewed family:** CLs **752981 → 755840 → 765200 → 767700 → 771900**, RISC-V vector SHA/AES/CTR/GCM. Large author-reported operation wins, but **explicitly waiting for appropriate CI hardware/builder**, with outstanding AES/GCM review. Do not promote approvals on the SHA CLs into “ready to land.”
* **Not wins to pick up casually:** the amd64 `simd/archsimd` rewrites are all WIP; SHA256 currently regresses and SHA1 is essentially neutral. The word-wide subtle stack is WIP with serious short-input regressions and failing try results.
* **Architecture/design work rather than easy wins:** Loong64 GHASH has a maintainer objection to introducing an architecture-specific arithmetic boundary; RISC-V P-256 has a placement objection and depends conceptually on nistec restructuring. Older P-256 and pre-FIPS AES/RSA experiments belong in the archive, not a ready queue.

## 1. Loong64: bounded CTR cleanup versus GHASH design decision

### CL 835565 — AES-CTR counter construction

[Current PS2](https://go-review.googlesource.com/c/go/+/835565/2). Commit author **XiaolinZhao**, Gerrit owner **sophie zhao**; updated **2026-09-21**. Not WIP; 0 unresolved; no CR approval or current try result.

Replaces stack scratch stores/reloads with direct scalar-to-vector-lane insertion in `ctrBlocks1/2/4/8Asm`; frames shrink to zero. Scope: `src/crypto/internal/fips140/aes/ctr_loong64.s`, +35/−50 lines. Author benchmarks are actual `crypto/cipher` **AESCTR** operations, all key sizes at 50 B / 1 KiB / 8 KiB: **5.89–10.11%** lower time on Loongson-3C6000/S, **3.86–6.03%** on 3A5000; geomeans −7.51% and −4.97%. Only inline review was whitespace, answered as fixed; author mentions formatting CL 835845. Worth assigning an architecture reviewer, not declaring merge-ready.

### CL 806280 — GHASH carry-less multiply assembly

[Current PS3](https://go-review.googlesource.com/c/go/+/806280/3). **XiaolinZhao** / owner **sophie zhao**; updated **2026-08-06**. Not WIP; 1 unresolved; no approval or try result. Four files introduce an assembly `ghashMul` boundary and generic wrapper.

Although the optimized unit is 32×32→64 carry-less multiplication, the commit provides **AESGCM Open/Seal** results, not merely arithmetic: **35.97–41.93%** lower time on 3C6000/S and **39.71–45.86%** on 3A5000 across 64/1350/8192-byte payloads and AES-128/256. On August 6, Filippo Valsorda objected to adding a generic/assembly cutoff point for one architecture, citing maintenance experience. **Design blocked; do not confuse small assembly size with low integration cost.**

## 2. RISC-V vector crypto: one dependent five-CL stack

All five are by **Meng Zhuo**, not WIP, current TryBot **+1**. Their current commit parents form exactly **752981 → 755840 → 765200 → 767700 → 771900**. All benchmark tables are linux/riscv64 **Spacemit X100**. Gains across the stack are **not independent/additive**, and every CL must be evaluated against its own parent.

| CL / current PS | Updated | Reported operation benefit | Current review state |
|---|---|---|---|
| [752981 / 23](https://go-review.googlesource.com/c/go/+/752981/23), SHA256 Zvknha | 2026-09-14 | `crypto/sha256` New/Sum224/Sum256: ~26–30% less time at 8 B, ~72% at 1 KiB, ~78% at 8 KiB–1 MiB | CR +2 Joel Sing and Julian Zhu, +1 Junyang Shao; **1 unresolved, explicit builder blocker** |
| [755840 / 14](https://go-review.googlesource.com/c/go/+/755840/14), SHA512 Zvknhb | 2026-09-18 | `crypto/sha512` New/Sum384/Sum512: ~27–30% at 8 B, ~52% at 1 KiB, ~57% at 8 KiB | CR +2 Joel Sing and Julian Zhu, +1 Cherry Mui and Junyang Shao; 0 unresolved, but depends on blocked SHA256 parent |
| [765200 / 16](https://go-review.googlesource.com/c/go/+/765200/16), AES Zvkned | 2026-09-08 | `crypto/aes` single-block Encrypt/Decrypt **84–87%** less time; CreateCipher **21–66%** less | No CR approval; **12 unresolved** |
| [767700 / 14](https://go-review.googlesource.com/c/go/+/767700/14), AES-CTR Zvkned | 2026-09-08 | `crypto/cipher` AESCTR **60–76%** less time, key sizes 128/192/256, 50 B / 1 KiB / 8 KiB | No CR approval; 0 unresolved; depends on AES |
| [771900 / 7](https://go-review.googlesource.com/c/go/+/771900/7), AES-GCM Zvkg | 2026-09-12 | `crypto/cipher` AESGCM Open/Seal **81–89%** less time at 64/1350/8192 B, AES-128/256 | No CR approval; **2 unresolved** |

**Actual blocking review:** September 12–14 discussion on 752981 asks whether the Zvk CI builder exists. Author says hardware is ready but builder configuration is not; Filippo explicitly says to wait until the builder is ready rather than carry code not exercised by CI. This is stronger evidence than general speculation about feature support. The later SHA512 +1 does not resolve that parent blocker.

**Hardware/implementation scope verified in patches:** SHA256 checks Zvknha + Zvbb and VLENB ≥16; SHA512 checks Zvknhb + Zvbb and VLENB ≥32 (**256-bit vector minimum**). AES checks V + Zvkned + Zbb and VLENB ≥16; GCM additionally requires Zvkg. All are `!purego` paths with scalar/generic fallback. SHA512's review explicitly considered but did not implement a VLEN=128 alternative.

**Remaining substantive review:** On AES, Joel's September 8 review asks to simplify/rethink reversed decryption keys, improve names/comments/register conventions; earlier minimum-vector-length feedback was addressed. On GCM, Filippo's September 12 comments ask why `crypto/tls.hasAESGCMHardwareSupport` is not updated and why extra handling is RISC-V-specific. These are not just invisible pending approver clicks.

## 3. RISC-V scalar / P-256: older 2026 follow-ups

### CL 671275 — SHA512 Zbb REV8 / aligned loads

[PS7](https://go-review.googlesource.com/c/go/+/671275/7), **Julian Zhu**, updated **2026-02-20**; not WIP, Try +1, no CR approval, **3 unresolved**. Four files add feature dispatch and modify existing assembly. Actual SHA512/SHA384 hash operations improve **4.04–6.31%** on the author's linux/riscv64 run (commit table does not identify CPU).

Joel's latest review asks for simpler per-load fallback, says the simpler version costs only ~0.5–1% on BananaPi, and flags a required `OR` fix. Also wants unaligned benchmark coverage. **Unaddressed since February: follow-up, not ready.** This is a different scalar-Zbb path from the vector stack above.

### CL 733960 — P256 field multiplication

[PS1](https://go-review.googlesource.com/c/go/+/733960/1), **Weihong Qiu (Qiuweihong)**, human commit author/submitter (imported by Gerrit Bot); updated **2026-01-08**. Not WIP, no approval or try label, 2 unresolved. Six files, including 418 lines of new RISC-V assembly under `nistec/fiat`.

The benchmark is **nistec ScalarMult/P256**, 564.7→491.8 μs, **12.91%** less time on SG2044; it is higher-level than field multiplication but **not ECDSA/ECDH/TLS**. Filippo's January 5 review says manually written assembly does not belong in autogenerated `fiat`, and his field-level P-256 restructuring should provide the right hooks. Author asks to be CC'd. **Placement/architecture blocked; dormant since January.** Patch also warrants purego-gate review: generic wrapper has `!riscv64`, assembly declaration has `!purego` (observation only; no compile executed).

## 4. MIPS64x hash assembly: useful reported gains, dormant reviews

All three are **Julian Zhu**, not WIP, Try +1, **no CR approval**, each three files adding a new assembly implementation and changing dispatch build tags. Benchmarks are linux/**mips64le**, Loongson-3A3000 @1400 MHz, not proof of equivalent results on every MIPS64 machine. These are actual public hash New/Sum operations, not compression-only figures. They have not moved since March.

* [743760 PS1](https://go-review.googlesource.com/c/go/+/743760/1), SHA1; updated **2026-03-19**, **5 unresolved**. ~32% less time at 8 B, 56% at 320 B, 62% at 1 KiB, 65% at 8 KiB. Joel says generally good but identifies an **`end:` placement bug causing a possible segfault**, runtime/linker-reserved-register concerns, and sorting. Not ready.
* [738362 PS1](https://go-review.googlesource.com/c/go/+/738362/1), SHA512/SHA384; updated **2026-03-11**, 0 unresolved. ~15–19% less time at 8 B, 35–37% at 1 KiB, 40% at 8 KiB. No substantive inline review in fetched comments.
* [738363 PS1](https://go-review.googlesource.com/c/go/+/738363/1), SHA256/SHA224; updated **2026-03-11**, 0 unresolved. ~28–32% at 8 B and ~48–49% at 1 KiB–256 KiB, but **only ~2–3% at 1 MiB**. Preserve that exception; do not advertise a blanket 2× hashing improvement. No substantive inline review in fetched comments.

## 5. amd64 `simd/archsimd` rewrite experiments (all WIP)

All by **Neal Patel**, updated **2026-05-15**, no CR or try result and 0 unresolved inline threads. Patches introduce experimental SIMD/native-vs-avo selection; this is a compiler/intrinsics integration family, not ordinary small Go-loop cleanup. Commit tables use linux/amd64 **Ryzen 9 9950X**, pinned core with GOMAXPROCS=1. Baselines are author's named avo variants. All update issue #79413.

* [778260 PS2](https://go-review.googlesource.com/c/go/+/778260/2), AES-NI: block Encrypt/Decrypt **14.5–17.3%** less time, but **CreateCipher 19.6–36.7% slower**. Public cipher benchmarks: CTR ~2.9–9.2% less, CBC decryption 21.3% less; **GCM approximately neutral to 3.8% slower**, not an AEAD speedup. Author explicitly leaves CTR/GCM investigation and TODOs. Twelve files, including 800-line CTR intrinsic implementation.
* [778100 PS3](https://go-review.googlesource.com/c/go/+/778100/3), SHA256 SHA-NI: public SHA224/256 hashing **regresses ~11–13% for 8 B**, ~2.6% at 1 KiB and ~0.9–1.2% on larger messages. Eight files. No current performance win.
* [778120 PS2](https://go-review.googlesource.com/c/go/+/778120/2), SHA256 AVX2: hashing **38–55% slower**. Author says logical translation needs SROA and mem2reg to match original performance. Five files; compiler-optimization dependency, not ready.
* [778102 PS3](https://go-review.googlesource.com/c/go/+/778102/3), SHA1 SHA-NI: public hash benchmarks essentially parity (time geomean **+0.04%**, individual deltas roughly ±0.07%). Three files; potential maintainability experiment, not a meaningful current speedup.

## 6. Portable word-wide subtle experiment: not low-cost win despite no assembly

**Jorropo**, all three updated **2026-01-23**, no CR approval, current TryBot **−1**. Exact parent chain **733843 → 733844 → 733845**; 733843 itself has a compiler/constanttime genericization parent, recorded below, so this is not a standalone two-file patch.

* [733843 PS5](https://go-review.googlesource.com/c/go/+/733843/5): uint-sized byteorder helpers, two files; not WIP; no independent operation benefit claimed.
* [733844 PS5](https://go-review.googlesource.com/c/go/+/733844/5): native-endian byteorder helpers, three files; not WIP; no independent benefit. Review raised compatibility of exported `fips140deps` APIs with older FIPS modules; author says accidental removals/duplicates fixed. Both helper CLs' latest try messages report loong64 misccompile failure (not independently root-caused here).
* [733845 PS7](https://go-review.googlesource.com/c/go/+/733845/7): **WIP**, subtle word-wide loops plus benchmarks, two files. Ryzen 5 3600: ConstantTimeCompare/64–1024 improves **42–74%**, but 1–16-byte compare regresses **67–166%**. ConstantTimeCopy improves **17–32% at 128–1024 B**, but regresses **20–325% at 1–64 B**. These are **primitive microbenchmarks**, no complete crypto-operation gain shown. Author explicitly notes short-slice overhead and possible help from #77090. Latest failure is x/tools tryjob. Not a simple unqualified win.

## 7. Archive: old-open proposals and long-dormant WIP, not ready recommendations

### P-256 restructuring (last updated 2025-08-07)

All by **Filippo Valsorda**, all **WIP**, no CR approvals, 0 unresolved, no performance tables in current commit messages or inline discussion.

* [627936 PS3](https://go-review.googlesource.com/c/go/+/627936/3): reapply scalar-multiplication refactor with better assembly assumptions/comments and loop simplification; intentionally excludes earlier loop inversion due to #60717. One `p256_asm.go` file; Try +1. Refactor/correctness groundwork, **no measured win claimed**.
* [627943 PS9](https://go-review.googlesource.com/c/go/+/627943/9): dismantle P-256 assembly, 11 files across Go, generators, amd64/arm64 and small ppc64le/s390x changes; Try +1. Parent is current 627936. Broad architectural reshaping, not a bounded optimization.
* [669535 PS3](https://go-review.googlesource.com/c/go/+/669535/3): compile P-256 formulas to assembly; 11 files including generated amd64/arm64 code; Try −1 (latest linux-amd64_avx512 failure). Parent is a separate inversion-move commit, **not directly 627943**; do not assert these three form an immediate-parent-only stack. Relevant conceptual background for 733960, but no fresh readiness evidence.

### Pre-FIPS older assembly proposals

All benchmark claims in this subsection are **historical and unverified against current Go**. No patch-applicability test was performed; no assertion that rebasing is required is made. Old file paths and old baselines are review cautions, not applicability-test results.

* [519615 PS2](https://go-review.googlesource.com/c/go/+/519615/2), **Jorropo**, updated **2024-02-25**, not WIP; CR +1 Mauri de Souza Meneguzzo, Try −1, 0 unresolved. One old `src/crypto/aes/asm_amd64.s` file uses inline memory loads. Author reports AES Encrypt/Decrypt **2.76/2.88%** less time on Zen2 Ryzen 3600. Latest failed try is x/tools; historical success does not make it current. **Old baseline/path, re-evaluate against modern implementation before considering resurrection.**
* [481618 PS1](https://go-review.googlesource.com/c/go/+/481618/1), commit author **ted**, owner **Ted Painter**, updated **2023-06-23**, not WIP, **Hold +1 Russ Cox**, 1 unresolved, no try result. AVX-512 IFMA RSA-2048 private operation for SignPKCS1v15; five files, >2,000 added lines of RSA/CPU-feature code. **No numeric benchmark in current commit/discussion.** Russ's April 4 blocking review rejects OpenSSL-licensed code in Go. This is historical review evidence, not independent legal advice; no readiness recommendation.
* [334610 PS1](https://go-review.googlesource.com/c/go/+/334610/1), commit author **ted**, owner **Ted Painter**, updated **2023-04-28**, not WIP, no approvals/try result, 0 unresolved. Six-file AVX-512 VAES/VPCLMULQDQ AES-GCM implementation, >3,000 new assembly lines. Commit claims improved GCM throughput without numbers; **review participant Ting Zhou**, not the author, later reports **28–57% less time** for AESGCM Open/Seal on Xeon Platinum 8358, roughly 2× on many payloads. Preserve attribution and historical baseline; no claim of current Go gain.
* [413594 PS9](https://go-review.googlesource.com/c/go/+/413594/9), **Boris Nagaev**, human commit author/submitter (imported by Gerrit Bot), updated **2024-10-26**, not WIP, no approval/try label, 1 unresolved. Six files adding amd64/arm64 pipelined CTR plus generators/tests and `XORKeyStreamAt`. Author's old CTR 1 KiB/8 KiB: **79–80%** less time on i7-7820HQ, **56–59%** on Neoverse-N1, **66–68%** on Apple M1. Review discussion mixes performance with the observable random-access API and formal proposal/compatibility questions, plus missing pure-Go/BoringCrypto method support. Filippo's October rounds-count concern was explicitly retracted; **do not cite it as an outstanding bug**. Old implementation/path, not evidence that today's CTR is still unoptimized.

## Evidence reproduction / exact scope

The artifacts are plain Gerrit REST JSON (XSSI prefix removed) and base64-decoded patch responses. Public endpoints:

```text
https://go-review.googlesource.com/changes/CL/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS
https://go-review.googlesource.com/changes/CL/comments
https://go-review.googlesource.com/changes/CL/revisions/EXACT_SHA/patch
```

Reproducible *inspection* scope, not a benchmark command: read `.current_revision`; retrieve `.revisions[SHA].commit.message`, `.commit.parents`, `.files`; inspect `.messages`, `.labels`, `.work_in_progress`, `.unresolved_comment_count`; fetch comments separately. `fetch-arch.py` pins patch retrieval to the saved detail's exact SHA. Source changes after this snapshot must be recorded separately. The following manifest gives exact local/public evidence and files; parent-first comparisons avoid attributing a whole dependent stack's gain to one CL.

### 733845 — PS7

Current revision: `5030d83bc748cb4b96aa3b6baeed7956a97e882f`. Updated: `2026-01-23 20:09:03.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/733845/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/733845/comments), [exact patch](https://go-review.googlesource.com/changes/733845/revisions/5030d83bc748cb4b96aa3b6baeed7956a97e882f/patch). Local: `733845.json`, `733845-comments.json`, `733845.patch`.

Parent: `34aee3a9360ed69e8609a5ea3b35915b7796b695` — internal/byteorder,crypto/internal/fips140deps/byteorder: add native endian operations.

Changed files:
- `src/crypto/internal/fips140/subtle/constant_time.go` (+42/−21)
- `src/crypto/internal/fips140/subtle/constant_time_test.go` (+46/−0)

### 733844 — PS5

Current revision: `34aee3a9360ed69e8609a5ea3b35915b7796b695`. Updated: `2026-01-23 20:25:02.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/733844/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/733844/comments), [exact patch](https://go-review.googlesource.com/changes/733844/revisions/34aee3a9360ed69e8609a5ea3b35915b7796b695/patch). Local: `733844.json`, `733844-comments.json`, `733844.patch`.

Parent: `02b4a2ca3adf1273736a536cb6a29312d1f7526e` — internal/byteorder,crypto/internal/fips140deps/byteorder: add uint sized operations.

Changed files:
- `src/crypto/internal/fips140deps/byteorder/byteorder.go` (+7/−0)
- `src/internal/byteorder/native_endian_big.go` (+55/−0)
- `src/internal/byteorder/native_endian_little.go` (+55/−0)

### 733843 — PS5

Current revision: `02b4a2ca3adf1273736a536cb6a29312d1f7526e`. Updated: `2026-01-23 20:24:18.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/733843/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/733843/comments), [exact patch](https://go-review.googlesource.com/changes/733843/revisions/02b4a2ca3adf1273736a536cb6a29312d1f7526e/patch). Local: `733843.json`, `733843-comments.json`, `733843.patch`.

Parent: `0b6c51678e6f176533da8f0158730584cc2bf441` — crypto/internal/constanttime,cmd/compile: make constanttime.* generic.

Changed files:
- `src/crypto/internal/fips140deps/byteorder/byteorder.go` (+21/−24)
- `src/internal/byteorder/byteorder.go` (+68/−0)

### 627936 — PS3

Current revision: `738f456a757d9c14fde903f241adccc8ba5757eb`. Updated: `2025-08-07 16:01:36.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/627936/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/627936/comments), [exact patch](https://go-review.googlesource.com/changes/627936/revisions/738f456a757d9c14fde903f241adccc8ba5757eb/patch). Local: `627936.json`, `627936-comments.json`, `627936.patch`.

Parent: `6fbad4be75e7746512bbe55794694ed788ea5c5b` — cmd/compile: remove no-longer-necessary call to calculateDepths.

Changed files:
- `src/crypto/internal/fips140/nistec/p256_asm.go` (+85/−57)

### 627943 — PS9

Current revision: `770273e785d59d4e835ebfb411d420e3faffc602`. Updated: `2025-08-07 15:56:10.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/627943/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/627943/comments), [exact patch](https://go-review.googlesource.com/changes/627943/revisions/770273e785d59d4e835ebfb411d420e3faffc602/patch). Local: `627943.json`, `627943-comments.json`, `627943.patch`.

Parent: `738f456a757d9c14fde903f241adccc8ba5757eb` — Reapply "crypto/internal/nistec: refactor scalar multiplication".

Changed files:
- `src/crypto/internal/fips140/nistec/_asm/p256_asm.go` (+102/−2637)
- `src/crypto/internal/fips140/nistec/_asm/p256_asm_field.go` (+599/−0)
- `src/crypto/internal/fips140/nistec/_asm/p256_asm_ord.go` (+652/−0)
- `src/crypto/internal/fips140/nistec/p256.go` (+200/−208)
- `src/crypto/internal/fips140/nistec/p256_asm.go` (+130/−602)
- `src/crypto/internal/fips140/nistec/p256_asm_amd64.s` (+600/−1737)
- `src/crypto/internal/fips140/nistec/p256_asm_arm64.s` (+118/−530)
- `src/crypto/internal/fips140/nistec/p256_asm_ppc64le.s` (+1/−1)
- `src/crypto/internal/fips140/nistec/p256_asm_s390x.s` (+1/−1)
- `src/crypto/internal/fips140/nistec/p256_noasm.go` (+53/−0)
- `src/crypto/internal/fips140/nistec/p256_table_test.go` (+1/−4)

### 669535 — PS3

Current revision: `4bf7f48a035a18aad900f509ceb31b835da56bcc`. Updated: `2025-08-07 15:48:12.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/669535/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/669535/comments), [exact patch](https://go-review.googlesource.com/changes/669535/revisions/4bf7f48a035a18aad900f509ceb31b835da56bcc/patch). Local: `669535.json`, `669535-comments.json`, `669535.patch`.

Parent: `947ed43fd50029a6ba03ac62e88cb20f22c7a1db` — crypto/internal/fips140/nistec: move inversion from fiat to nistec.

Changed files:
- `src/crypto/internal/fips140/nistec/_arm64/p256_asm.go` (+370/−0)
- `src/crypto/internal/fips140/nistec/_arm64/p256_asm_arm64.s` (+671/−0)
- `src/crypto/internal/fips140/nistec/_asm/go.mod` (+3/−3)
- `src/crypto/internal/fips140/nistec/_asm/go.sum` (+8/−6)
- `src/crypto/internal/fips140/nistec/_asm/p256_asm.go` (+3/−0)
- `src/crypto/internal/fips140/nistec/_asm/p256_asm_formulas.go` (+436/−0)
- `src/crypto/internal/fips140/nistec/p256.go` (+6/−152)
- `src/crypto/internal/fips140/nistec/p256_asm.go` (+15/−0)
- `src/crypto/internal/fips140/nistec/p256_asm_amd64.s` (+1870/−0)
- `src/crypto/internal/fips140/nistec/p256_asm_arm64.s` (+1562/−0)
- `src/crypto/internal/fips140/nistec/p256_noasm.go` (+158/−0)

### 733960 — PS1

Current revision: `68503761575bf77a80313ef9988752ccb19a4ccb`. Updated: `2026-01-08 01:56:36.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/733960/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/733960/comments), [exact patch](https://go-review.googlesource.com/changes/733960/revisions/68503761575bf77a80313ef9988752ccb19a4ccb/patch). Local: `733960.json`, `733960-comments.json`, `733960.patch`.

Parent: `f8ee0f84753b22254d217bf28ce8ecca7db7025c` — cmd/go/testdata/vcstest/git: use git commands that work on older git versions.

Changed files:
- `src/crypto/internal/fips140/nistec/fiat/benchmark_test.go` (+8/−0)
- `src/crypto/internal/fips140/nistec/fiat/p256_fiat64.go` (+1/−1)
- `src/crypto/internal/fips140/nistec/fiat/p256_impl.go` (+11/−0)
- `src/crypto/internal/fips140/nistec/fiat/p256_impl_riscv64.go` (+10/−0)
- `src/crypto/internal/fips140/nistec/fiat/p256_riscv64.s` (+418/−0)
- `src/crypto/internal/fips140/nistec/fiat/p256_test.go` (+160/−0)

### 778260 — PS2

Current revision: `d1cf269c0de6b690e237422708866d23e9197e27`. Updated: `2026-05-15 16:22:32.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/778260/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/778260/comments), [exact patch](https://go-review.googlesource.com/changes/778260/revisions/d1cf269c0de6b690e237422708866d23e9197e27/patch). Local: `778260.json`, `778260-comments.json`, `778260.patch`.

Parent: `364de84f3609e320490ae89ac1543883966f3c5d` — all: turn on cgo/external linking for linux/ppc64.

Changed files:
- `src/crypto/internal/fips140/aes/aes_archsimd_amd64.go` (+243/−0)
- `src/crypto/internal/fips140/aes/aes_asm.go` (+1/−1)
- `src/crypto/internal/fips140/aes/aes_avo_amd64.go` (+52/−0)
- `src/crypto/internal/fips140/aes/aes_native_amd64.go` (+53/−0)
- `src/crypto/internal/fips140/aes/aes_simd_amd64.go` (+93/−0)
- `src/crypto/internal/fips140/aes/ctr_archsimd_amd64.go` (+800/−0)
- `src/crypto/internal/fips140/aes/ctr_asm.go` (+1/−1)
- `src/crypto/internal/fips140/aes/ctr_avo_amd64.go` (+38/−0)
- `src/crypto/internal/fips140/aes/ctr_native_amd64.go` (+39/−0)
- `src/crypto/internal/fips140/aes/ctr_simd_amd64.go` (+66/−0)
- `src/crypto/internal/fips140deps/cpu/cpu.go` (+2/−0)
- `src/go/build/deps_test.go` (+2/−2)

### 778100 — PS3

Current revision: `56339d7fe9e852ab7f0e1dac95e7403cf4467c0b`. Updated: `2026-05-15 02:44:20.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/778100/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/778100/comments), [exact patch](https://go-review.googlesource.com/changes/778100/revisions/56339d7fe9e852ab7f0e1dac95e7403cf4467c0b/patch). Local: `778100.json`, `778100-comments.json`, `778100.patch`.

Parent: `364de84f3609e320490ae89ac1543883966f3c5d` — all: turn on cgo/external linking for linux/ppc64.

Changed files:
- `src/crypto/internal/fips140/sha256/sha256_shani.go` (+229/−0)
- `src/crypto/internal/fips140/sha256/sha256block_amd64.go` (+5/−4)
- `src/crypto/internal/fips140/sha256/sha256block_avo_avx2_amd64.go` (+20/−0)
- `src/crypto/internal/fips140/sha256/sha256block_avo_shani_amd64.go` (+20/−0)
- `src/crypto/internal/fips140/sha256/sha256block_native_shani_amd64.go` (+20/−0)
- `src/crypto/internal/fips140/sha256/sha256block_simd_amd64.go` (+38/−0)
- `src/crypto/internal/fips140deps/cpu/cpu.go` (+2/−0)
- `src/go/build/deps_test.go` (+4/−2)

### 778120 — PS2

Current revision: `f17ffc2f7ff6029c5031ff65927115f695ba6412`. Updated: `2026-05-15 01:55:07.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/778120/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/778120/comments), [exact patch](https://go-review.googlesource.com/changes/778120/revisions/f17ffc2f7ff6029c5031ff65927115f695ba6412/patch). Local: `778120.json`, `778120-comments.json`, `778120.patch`.

Parent: `364de84f3609e320490ae89ac1543883966f3c5d` — all: turn on cgo/external linking for linux/ppc64.

Changed files:
- `src/crypto/internal/fips140/sha256/sha256_avx2.go` (+189/−0)
- `src/crypto/internal/fips140/sha256/sha256block_amd64.go` (+1/−1)
- `src/crypto/internal/fips140/sha256/sha256block_avo_amd64.go` (+20/−0)
- `src/crypto/internal/fips140/sha256/sha256block_native_amd64.go` (+20/−0)
- `src/crypto/internal/fips140/sha256/sha256block_simd_amd64.go` (+41/−0)

### 778102 — PS3

Current revision: `2c8f545edd0366755fd1d4113ed509f131c3f5c0`. Updated: `2026-05-15 02:50:53.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/778102/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/778102/comments), [exact patch](https://go-review.googlesource.com/changes/778102/revisions/2c8f545edd0366755fd1d4113ed509f131c3f5c0/patch). Local: `778102.json`, `778102-comments.json`, `778102.patch`.

Parent: `364de84f3609e320490ae89ac1543883966f3c5d` — all: turn on cgo/external linking for linux/ppc64.

Changed files:
- `src/crypto/sha1/sha1_shani.go` (+213/−0)
- `src/crypto/sha1/sha1block_amd64.go` (+9/−6)
- `src/crypto/sha1/sha1block_simd_amd64.go` (+47/−0)

### 671275 — PS7

Current revision: `f9d9a78e2336a66685fbb9caf7d06ed826923234`. Updated: `2026-02-20 13:35:24.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/671275/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/671275/comments), [exact patch](https://go-review.googlesource.com/changes/671275/revisions/f9d9a78e2336a66685fbb9caf7d06ed826923234/patch). Local: `671275.json`, `671275-comments.json`, `671275.patch`.

Parent: `134035855cbc84e25765c2a4af3d152aaf430c5c` — cmd/compile: simplify slice/array range loops on loong64.

Changed files:
- `src/crypto/internal/fips140/sha512/sha512block_asm.go` (+1/−1)
- `src/crypto/internal/fips140/sha512/sha512block_riscv64.go` (+20/−0)
- `src/crypto/internal/fips140/sha512/sha512block_riscv64.s` (+131/−82)
- `src/crypto/internal/fips140deps/cpu/cpu.go` (+2/−1)

### 752981 — PS23

Current revision: `760ebb7fc9663cac1eeb70739ec1268c193e1958`. Updated: `2026-09-14 11:24:04.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/752981/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/752981/comments), [exact patch](https://go-review.googlesource.com/changes/752981/revisions/760ebb7fc9663cac1eeb70739ec1268c193e1958/patch). Local: `752981.json`, `752981-comments.json`, `752981.patch`.

Parent: `558faa4c472d08aabc137bf159290ae939e1ebda` — cmd/compile/internal/ssa: move ssa rewrite packages to ssa/rewrite.

Changed files:
- `src/crypto/internal/cryptotest/implementations.go` (+2/−0)
- `src/crypto/internal/fips140/sha256/sha256block_asm.go` (+1/−1)
- `src/crypto/internal/fips140/sha256/sha256block_riscv64.go` (+32/−0)
- `src/crypto/internal/fips140/sha256/sha256block_riscv64.s` (+139/−2)
- `src/crypto/internal/fips140deps/cpu/cpu.go` (+4/−1)

### 755840 — PS14

Current revision: `2fba414d9540ebec4bf23d6ba61203b3cacf72a8`. Updated: `2026-09-18 14:50:34.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/755840/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/755840/comments), [exact patch](https://go-review.googlesource.com/changes/755840/revisions/2fba414d9540ebec4bf23d6ba61203b3cacf72a8/patch). Local: `755840.json`, `755840-comments.json`, `755840.patch`.

Parent: `760ebb7fc9663cac1eeb70739ec1268c193e1958` — crypto/internal/fips140/sha256: enable zvknha for riscv64.

Changed files:
- `src/crypto/internal/fips140/sha512/sha512block_asm.go` (+1/−1)
- `src/crypto/internal/fips140/sha512/sha512block_riscv64.go` (+32/−0)
- `src/crypto/internal/fips140/sha512/sha512block_riscv64.s` (+154/−2)
- `src/crypto/internal/fips140deps/cpu/cpu.go` (+1/−0)

### 765200 — PS16

Current revision: `fd0c6ae37b2b0a21b65dfdca75e75b7361e28bfb`. Updated: `2026-09-08 15:43:17.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/765200/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/765200/comments), [exact patch](https://go-review.googlesource.com/changes/765200/revisions/fd0c6ae37b2b0a21b65dfdca75e75b7361e28bfb/patch). Local: `765200.json`, `765200-comments.json`, `765200.patch`.

Parent: `2fba414d9540ebec4bf23d6ba61203b3cacf72a8` — crypto/internal/fips140/sha512: enable zvknhb for riscv64.

Changed files:
- `src/crypto/internal/fips140/aes/aes_noasm.go` (+1/−1)
- `src/crypto/internal/fips140/aes/aes_riscv64.go` (+111/−0)
- `src/crypto/internal/fips140/aes/aes_riscv64.s` (+238/−0)
- `src/crypto/internal/fips140deps/byteorder/byteorder.go` (+4/−0)
- `src/crypto/internal/fips140deps/cpu/cpu.go` (+2/−0)

### 767700 — PS14

Current revision: `1c2d63036d2bc0976c8ee1c8367b3e6e6c3d4057`. Updated: `2026-09-08 10:44:49.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/767700/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/767700/comments), [exact patch](https://go-review.googlesource.com/changes/767700/revisions/1c2d63036d2bc0976c8ee1c8367b3e6e6c3d4057/patch). Local: `767700.json`, `767700-comments.json`, `767700.patch`.

Parent: `fd0c6ae37b2b0a21b65dfdca75e75b7361e28bfb` — crypto/internal/fips140/aes: blockAsm enable zvkned for riscv64.

Changed files:
- `src/crypto/internal/fips140/aes/ctr_asm.go` (+1/−1)
- `src/crypto/internal/fips140/aes/ctr_noasm.go` (+1/−1)
- `src/crypto/internal/fips140/aes/ctr_riscv64.s` (+213/−0)

### 771900 — PS7

Current revision: `23c81ec4a2a053418eb3934216eb6b5c4c547c28`. Updated: `2026-09-12 12:47:07.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/771900/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/771900/comments), [exact patch](https://go-review.googlesource.com/changes/771900/revisions/23c81ec4a2a053418eb3934216eb6b5c4c547c28/patch). Local: `771900.json`, `771900-comments.json`, `771900.patch`.

Parent: `1c2d63036d2bc0976c8ee1c8367b3e6e6c3d4057` — crypto/internal/fips140/aes: CTR mode enable zvkned for riscv64.

Changed files:
- `src/crypto/internal/fips140/aes/gcm/gcm_asm.go` (+13/−2)
- `src/crypto/internal/fips140/aes/gcm/gcm_noasm.go` (+1/−1)
- `src/crypto/internal/fips140/aes/gcm/gcm_riscv64.s` (+283/−0)
- `src/crypto/internal/fips140deps/cpu/cpu.go` (+2/−0)

### 835565 — PS2

Current revision: `6fc9f38e2def7d3597debf839cd92b7d094f3d07`. Updated: `2026-09-21 02:54:35.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/835565/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/835565/comments), [exact patch](https://go-review.googlesource.com/changes/835565/revisions/6fc9f38e2def7d3597debf839cd92b7d094f3d07/patch). Local: `835565.json`, `835565-comments.json`, `835565.patch`.

Parent: `172b130eb50c7f4921ece977ed13f0031fe62fa1` — crypto/internal/fips140/aes: fix assembly formatting in ctr_loong64.s.

Changed files:
- `src/crypto/internal/fips140/aes/ctr_loong64.s` (+35/−50)

### 806280 — PS3

Current revision: `efeffeef881bc1f7689aeb9415efeac31ae7971d`. Updated: `2026-08-06 18:55:10.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/806280/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/806280/comments), [exact patch](https://go-review.googlesource.com/changes/806280/revisions/efeffeef881bc1f7689aeb9415efeac31ae7971d/patch). Local: `806280.json`, `806280-comments.json`, `806280.patch`.

Parent: `cfdaa16d0a4f08d9b0e9b342b94e41a8d02081c2` — encoding/json/v2: modify documentation.

Changed files:
- `src/crypto/internal/fips140/aes/gcm/ghash.go` (+2/−2)
- `src/crypto/internal/fips140/aes/gcm/ghash_loong64.go` (+19/−0)
- `src/crypto/internal/fips140/aes/gcm/ghash_loong64.s` (+90/−0)
- `src/crypto/internal/fips140/aes/gcm/ghash_noasm.go` (+11/−0)

### 743760 — PS1

Current revision: `8642f4670e5c1140891f6d2cfb1ac572fff90e8e`. Updated: `2026-03-19 14:24:38.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/743760/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/743760/comments), [exact patch](https://go-review.googlesource.com/changes/743760/revisions/8642f4670e5c1140891f6d2cfb1ac572fff90e8e/patch). Local: `743760.json`, `743760-comments.json`, `743760.patch`.

Parent: `a59593313d75d9e7c99da0cff0e12555597621ec` — crypto/sha1: provide optimised assembly for riscv64.

Changed files:
- `src/crypto/sha1/sha1block_decl.go` (+1/−1)
- `src/crypto/sha1/sha1block_generic.go` (+1/−1)
- `src/crypto/sha1/sha1block_mips64x.s` (+228/−0)

### 738362 — PS1

Current revision: `80aefe9ca9ad102cb259f8375a48fbe68ebcb614`. Updated: `2026-03-11 08:26:55.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/738362/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/738362/comments), [exact patch](https://go-review.googlesource.com/changes/738362/revisions/80aefe9ca9ad102cb259f8375a48fbe68ebcb614/patch). Local: `738362.json`, `738362-comments.json`, `738362.patch`.

Parent: `1bd5dbfc4110740f2126e0253f429dfe5f3d04ac` — cmd/compile: simplify AlgType usage.

Changed files:
- `src/crypto/internal/fips140/sha512/sha512block_asm.go` (+1/−1)
- `src/crypto/internal/fips140/sha512/sha512block_mips64x.s` (+290/−0)
- `src/crypto/internal/fips140/sha512/sha512block_noasm.go` (+1/−1)

### 738363 — PS1

Current revision: `7f17fa7baea294bb979fd83fc7ef23ac572a3c38`. Updated: `2026-03-11 08:27:06.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/738363/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/738363/comments), [exact patch](https://go-review.googlesource.com/changes/738363/revisions/7f17fa7baea294bb979fd83fc7ef23ac572a3c38/patch). Local: `738363.json`, `738363-comments.json`, `738363.patch`.

Parent: `1bd5dbfc4110740f2126e0253f429dfe5f3d04ac` — cmd/compile: simplify AlgType usage.

Changed files:
- `src/crypto/internal/fips140/sha256/sha256block_asm.go` (+1/−1)
- `src/crypto/internal/fips140/sha256/sha256block_mips64x.s` (+266/−0)
- `src/crypto/internal/fips140/sha256/sha256block_noasm.go` (+1/−1)

### 519615 — PS2

Current revision: `a5901f71f999d23616b926a83535b8b4efc0f186`. Updated: `2024-02-25 20:56:44.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/519615/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/519615/comments), [exact patch](https://go-review.googlesource.com/changes/519615/revisions/a5901f71f999d23616b926a83535b8b4efc0f186/patch). Local: `519615.json`, `519615-comments.json`, `519615.patch`.

Parent: `94d36fbc4acdbcff5d4d7ad3869f285294c4181c` — runtime: zero saved frame pointer when reusing goroutine stack on arm64.

Changed files:
- `src/crypto/aes/asm_amd64.s` (+30/−60)

### 481618 — PS1

Current revision: `2ec0be47b28308dbda463d2afc15b4965918fd98`. Updated: `2023-06-23 07:54:53.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/481618/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/481618/comments), [exact patch](https://go-review.googlesource.com/changes/481618/revisions/2ec0be47b28308dbda463d2afc15b4965918fd98/patch). Local: `481618.json`, `481618-comments.json`, `481618.patch`.

Parent: `ca26c9835109f8f3e72bbc069a6361bdf24e271d` — cmd/go: add wasip1 to modindex syslist.

Changed files:
- `src/crypto/rsa/pkcs1v15.go` (+8/−1)
- `src/crypto/rsa/rsa_ifma.go` (+653/−0)
- `src/crypto/rsa/rsa_ifma.s` (+1392/−0)
- `src/internal/cpu/cpu.go` (+1/−0)
- `src/internal/cpu/cpu_x86.go` (+2/−0)

### 334610 — PS1

Current revision: `caf5a34ea20e73244fa5a85e6491d8f708708df7`. Updated: `2023-04-28 07:03:12.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/334610/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/334610/comments), [exact patch](https://go-review.googlesource.com/changes/334610/revisions/caf5a34ea20e73244fa5a85e6491d8f708708df7/patch). Local: `334610.json`, `334610-comments.json`, `334610.patch`.

Parent: `60ddf42b4627fb4ff5f92d2193c294456175af9a` — cmd/go: change link in error message from /wiki to /doc..

Changed files:
- `src/crypto/aes/aes_gcm.go` (+403/−18)
- `src/crypto/aes/aes_test.go` (+1/−1)
- `src/crypto/aes/cipher.go` (+2/−1)
- `src/crypto/aes/cipher_asm.go` (+1/−1)
- `src/crypto/aes/gcmv_amd64.h` (+105/−0)
- `src/crypto/aes/gcmv_amd64.s` (+3141/−0)

### 413594 — PS9

Current revision: `4c50a9b89b970550908ba5369610751de7552883`. Updated: `2024-10-26 20:45:58.000000000` UTC.

Sources: [detail](https://go-review.googlesource.com/changes/413594/detail?o=CURRENT_REVISION&o=CURRENT_COMMIT&o=CURRENT_FILES&o=MESSAGES&o=DETAILED_LABELS&o=DETAILED_ACCOUNTS), [inline discussion](https://go-review.googlesource.com/changes/413594/comments), [exact patch](https://go-review.googlesource.com/changes/413594/revisions/4c50a9b89b970550908ba5369610751de7552883/patch). Local: `413594.json`, `413594-comments.json`, `413594.patch`.

Parent: `23ac1599abfc558edce5841323e2c679b094fc26` — net: don't return errno from _C_res_nsearch.

Changed files:
- `src/crypto/aes/ctr_multiblock.go` (+129/−0)
- `src/crypto/aes/ctr_multiblock_amd64.s` (+640/−0)
- `src/crypto/aes/ctr_multiblock_amd64_gen.go` (+180/−0)
- `src/crypto/aes/ctr_multiblock_arm64.s` (+758/−0)
- `src/crypto/aes/ctr_multiblock_arm64_gen.go` (+232/−0)
- `src/crypto/cipher/ctr_aes_test.go` (+231/−0)
