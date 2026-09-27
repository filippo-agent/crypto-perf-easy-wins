# Round 4 — copy/finalization compiler audit: final handoff

**COMPLETED — source commit `7a8ab8f7`: SHA256 only, 3 additions/6 deletions after whitespace cleanup.** Final selected12-pair results: SHA256/32 −9.04% (p=0.002), SHA256/0 −5.47% (p=0.010); HMAC Warm **unresolved** (p=0.224), Cold −3.05% (p=0.033, weak/context-sensitive). **Unchanged SHA512/0 also moved −8.74% (p=0.012): disclose context/noise, never attribute it to this optimization.** The earlier both-hash5.61% HMAC result is not the final-patch claim. Validation: all crypto short and affected default/purego/FIPS-on/race PASS; arm64 cross-compilation PASS (not runtime testing).

September27,2026. **Final deliverable: two evidenced compiler-issue drafts and a validated SHA256-only source prototype. Strongest source evidence is32-byte SHA256; final warm-HMAC remains unresolved. Unchanged SHA512/0 control movement must be disclosed.** Parent built/tested the production probes and standalone packages; worker inspected saved source, profiles, disassemblies and results only. No worker builds/tests/timings/SSA runs or production edits. Compiler upstream `2ff5743d9fd52fac166225e75df0c2c1edf82abb`, crypto baseline `2532e0de`.

## Final shortlist and evidence strength

### 1. amd64 constant-size append/copy lowering — filing-ready observation

`issues/constant-append-memmove/ISSUE-DRAFT.md` is authoritative. Normal optimized standalone asm confirms Append32,Append28,Local32 and Copy32 retain runtime.memmove on amd64. Arm64 emits overlap-safe inline vector copies for every one: **an architecture gap, not an arm64 miss**. Tests PASS on amd64; arm64 cross-compiled only.

A **working amd64 source control** now exists in compiled Scalar32: explicit appended byte operands merge to four64-bit loads followed by four stores, no memmove. Only growth path spills those four values. The alternative Array32 does remove memmove but retains32-byte zeroing and two bounds checks on both architectures, so it is not a clean source workaround.

Legality is explicit: loading all bytes before storing any supports arbitrary overlap. Retain nil panics, length overflow and growth semantics. Simply raising amd64's16-byte unconditional Move threshold is unsafe with current interleaved lowering. Source inspection supports the threshold/limited-alias-analysis diagnosis, but exact Local32 SSA predicate failure has not been proven. No compiler patch or regression date is claimed.

### 2. SHA2-shaped aggregate result initialization/materialization — filing-ready, split mechanisms

`issues/hash-sum-return-buffer/ISSUE-DRAFT.md` is authoritative; **both amd64 and arm64 reproduce**:

- ReturnLocal zeroes the SAME32-byte result twice, before and after the mutating call/post-call branch.
- ReturnNamed actually removes one clear, but SumNamed still copies the returned32-byte array into another local.
- SumInto actually removes that returned-array→local copy. One caller32-byte clear remains; the state snapshot remains. No frame-size win: all caller variants reserve216 bytes on amd64,208-byte frames on arm64.
- amd64 still calls memmove for append after outparam; arm64 already inlines append.

The entry clear is locally redundant: no result pointer reaches the call, no pointers/defers observe the slot, and it is overwritten before normal return. Short result tail must remain zero. This narrow opportunity is stronger proof than generalized result-slot forwarding.

Outparam is a **working source dataflow control**, not a completed compiler transformation. Arbitrarily aliased/uninitialized output parameters are not equivalent. Automatic forwarding must preserve the ABI result lifetime across growslice (which can reuse outgoing call space), or forward values on no-growth paths while preserving them on growth. Deleting the intermediate copy without that analysis is unsafe. The required120-byte Digest snapshot is not claimed eliminable.

### Deferred: padding range expression

`issues/sha2-padding-range/` and `patches/sha2-padding-bounded-distance.patch` remain secondary diagnostics. Production probe compiled/public tests passed; standalone normal/race tests now PASS with saved amd64/arm64 codegen in its `evidence/`. Mask variants remove the two bounds checks and correlated select/pointer-mask work on both architectures, also confirmed in actual production amd64 checkSum. Whole-HMAC benefit remains unresolved and prior padding-only work failed the acceptance bar. **Not promoted as the main issue or source selection.**

## Exact application profile budget, not total-bucket guessing

Parent native-only public `BenchmarkRound2PublicHMAC/SHA256/32/Warm`:9.74s samples,154.2ns/op profiling row,0 B/op,0 allocs/op. Source/asm mapping: `profiles/sha256-hot.{list,asm}`. Detailed ledger: `issues/hash-sum-return-buffer/ATTRIBUTION.md`.

| Region | Actual sampled attribution | What can be claimed |
|---|---|---|
| Sum line203 required state clone |560ms flat=5.75% |INLINE120-byte snapshot, not heap or memmove; not removed|
| Sum line204 checkSum call + returned-array→local copy |800ms flat=8.21% |Line-level upper budget; cannot assign all to four MOVUPS; callee's6.69s is not copy time|
| checkSum entry and local result-initialization regions |20ms+10ms=0.31% |Entire regions already tiny; zero-only substantial MAC claim ruled out|
| Sum line208 fixed32 append |390ms cumulative=4.00%;60ms own/330ms callees |Useful whole-region budget; warm callee is memmove, not total14.17% memmove|
| Remaining total memmove |about1.05s=10.78% |Input/padding/checkpoint copies not separated by supplied line list; no invented division|

Eight static memmove calls per steady-state HMAC do not imply equal cycle/sample cost. Sampling budgets are not exact hardware cycle costs or predicted gains. Whole-operation cumulative Sum88.81% and checkSum68.69% mostly include real compression; SHA-NI alone45.07%. No allocation optimization is demonstrated.

## Initial12-pair exploratory performance (historical; separate confirmation below)

Parent n=12 paired results in `bench/*-stat.txt`:

| Source probe / primary workload | Baseline→variant | Statistical outcome |
|---|---|---|
| Array append, HMAC-SHA256/32 warm |158.5→148.7ns |unresolved,p=0.092|
| Outparam, HMAC-SHA256/32 warm |149.8→144.1ns |unresolved,p=0.114|
| Named return, HMAC-SHA256/32 warm |149.8→163.5ns |**regression+9.22%,p=0.045**|
| Padding distance, HMAC-SHA256/32 warm |157.0→154.6ns |unresolved,p=0.843|
| Outparam, HMAC-SHA512/32 warm |440.2→453.5ns |unresolved,p=0.418|
| Outparam, public SHA256/32 separate control |81.78→76.79ns |−6.10%,p=0.017; isolated hash result, NOT a MAC win|
| Array append, public SHA256/32 separate control |78.47→80.13ns |unresolved,p=0.514|

These initial12 pairs were mostly unresolved; the named-return negative result remains visible. They are not pooled with the later fixed confirmation. Cleaner asm alone is insufficient; do not advertise their geomeans/raw median differences as established improvements.

`constant-append-memmove/evidence/bench.txt` contains five100ms REAL-public-HMAC baseline runs157.5–187.6ns, not copy-helper A/B. `hash-sum-return-buffer/evidence/bench.txt` only says PASS: no toy barrier benchmark exists. Thus no standalone helper speedup was measured in these two packages, despite the general parent script requesting benchmarks.

## Reproduction, validation, flags

Parent `compile-issues.sh` completed successfully: normal `go test -count=1`, normal `go test -c` amd64, `GOARCH=arm64 CGO_ENABLED=0 go test -c`, objdump, and separate `-m=2 -d=ssa/check_bce/debug=1` diagnostics. No -N/-l; reduced functions explicitly noinline to retain realistic call shape. Diagnostics confirm BEPut helpers inline, fixed d/out/source pointers do not escape. Returning a potentially grown append backing store explains “append escapes”; it does not mean fixed scratch arrays allocate.

Each finalized issue directory contains `evidence/{tests.txt,compiler.txt,amd64.asm,arm64.asm,bench.txt}` and binaries. Actual original SHA256/SHA512 machine code remains in `issues/hash-sum-return-buffer/*.before.amd64.asm`. Standalone arm64 compilation is not hardware correctness/performance testing. Parent says all four production hash probes compile/public tests pass; actual production amd64 variants are now attached under `production-asm/hash-*.asm`. Parent now reports final SHA256-only all crypto short and affected default/purego/FIPS-on/race PASS and arm64 cross-compilation PASS; this is the final validation report, not an inference from earlier public-test passes.

## Systematic remainder scan / rejected rediscoveries

| Area | Finding |
|---|---|
| Endian conversion/consume helpers |Actual single BSWAP+load/store, wrappers inline; no per-word call problem|
| SHA256 checkpoint UnmarshalBinary |One108-byte length check removes per-word BCE;64-byte memmove remains. Same broader small-copy opportunity, not native checkpoint cache. Whole restore4.52% cumulative budget|
| SHA256 AppendBinary |Warm HMAC marshals only during initial checkpoint setup, not every operation; no hot serialization redesign|
| SHA512 `new(Digest)` |Stack allocation in actual Sum, not a heap-allocation finding|
| SHA3 Sum/squeeze |Required240-byte snapshot/temp exists; direct-sponge Sum proposal is prior work. Little-endian state already byte-backed, no per-word output endian conversion to remove|
| Pending-stack PQ |Fresh MLKEM/MLDSA profiles dominated arithmetic and Keccak kernels, not tiny SHA3 copy machinery; no new sampler/cache/stack proposal|
| AES CTR/cipher/GCM |16-byte IV/tag copies fit amd64 inline threshold; generic add128 already bits.Add64. No new coherent-carry issue found. Default historical GCM profile87.37% assembly kernels; no compiler helper whole-op claim without fresh attribution|
| Immutable Sum |Digest snapshots120/216/240 bytes isolate mutable compression/sponge state; cannot remove them by destructive finalization|

## Artifacts and final status

- Final drafts: `issues/constant-append-memmove/ISSUE-DRAFT.md`, `issues/hash-sum-return-buffer/ISSUE-DRAFT.md`.
- Detailed sampled line budget: latter `ATTRIBUTION.md`; evaluated checklist: `CODEGEN-EXPECTATIONS.md`.
- Independent tested repros + test oracles retained unchanged from parent build.
- Outside-tree source probes: `hash-sum-{named-return,outparam,array-append}.patch`, `sha2-padding-bounded-distance.patch`; initially passed individual git-apply checks, now parent compiled/tested. Named/outparam mutually exclusive.
- No external issue filing, no compiler fix, no historical regression proof. SHA256-only source committed as `7a8ab8f7` (3 additions/6 deletions); final validation completed with scoped claims.

PBKDF2 fixed-loop remains selected baseline, not new. No repeat native-HMAC checkpoint caching, direct-block padding, pending stack-HMAC allocation, custom-hash bypass or service-indicator change is promoted.


## Independent both-hash confirmation and production mechanism (distinct from final isolation)

**Fixed independent16 pairs ×400ms, not pooled with the earlier12:**

| Both-hash outparam variant workload | Confirmed observation |
|---|---|
| Public SHA256/32 |78.85→75.11ns,−4.74%,p=0.007,n=16|
| Native public HMAC-SHA256/32 Warm |154.1→145.5ns,−5.61%,p<0.001,n=16|
| Other tested SHA256 sizes0/64/1024 and SHA512 controls |unresolved|

Sources: `bench/confirmation/{sha,hmac}-outparam-stat.txt`. Zero allocations remain. This supersedes the earlier “no MAC win” status only for these32-byte workloads and the **variant changing both SHA256 and SHA512**. The subsequent SHA256-only final isolation is now complete, as reported below; the both-hash result must not be relabeled as that final patch's result. No general-size, SHA512, arm64, named-return, array-append or padding speedup is inferred.

Actual production amd64 code now confirms the intended change, not only its reduced reproducer. In `production-asm/hash-base.asm`, SHA256 Sum line204 CALL0x638e5a is followed by result32-byte copy0x638e5f–0x638e74. In `hash-outparam.asm`, Sum line204 zeros localSP+40 at0x638e5f/0x638e63 and line205 calls checkSum at0x638e68; the post-call copy is absent. Both callee result clears disappear; one caller clear remains. Required120-byte Digest snapshot0x638dff–0x638e55 remains; caller/callee frames remain216/104 bytes; append still calls memmove0x638f80. This improvement is the complete outparam source rewrite, not a per-instruction gain attribution.

SHA512 companion also removes the64-byte return copy (baseline0x642364–0x642385) and changes production caller frame376→344 bytes; performance remains unresolved, so it is not selected. Full ledger: `issues/hash-sum-return-buffer/PRODUCTION-CODEGEN.md`. Historical standalone32-byte fixture frame equality remains correct and should not be extrapolated to SHA512's larger production frame.


## FINAL: SHA256-only source selection, scoped result and noise disclosure

Parent final validation: **all crypto short and affected default/purego/FIPS-on/race PASS; arm64 cross-compilation PASS** (not arm64 runtime/performance). Parent committed only SHA256 as `7a8ab8f7`,3 additions/6 deletions after whitespace cleanup. No more timing requested.

Final12-pair tables: `bench/selected/{sha256,hmac}-stat.txt`:

- Public SHA256/32 **79.66→72.45ns,−9.04%,p=0.002**; SHA256/0−5.47%,p=0.010.
- **UNCHANGED SHA512/0 control also−8.74%,p=0.012.** This is benchmark context/noise, not a SHA256 optimization benefit. It limits precision/generalization of observed percentages; do not credit unchanged-control gains or headline geomeans.
- HMAC-SHA256/32 Cold−3.05%,p=0.033 in this series; **Warm153.7→150.8ns,p=0.224 unresolved; TwoUses p=0.086 unresolved**. Other tested SHA256 sizes and remaining controls unresolved.

The32-byte SHA256 direction is consistent across three separate experiments: initial−6.10%, independent confirmation−4.74%, isolated−9.04%. They are **not pooled**, and exact magnitude is not claimed stable. That small-message hash result plus actual copy/zeroing elimination is the strongest source case.

The both-hash variant's−5.61% warm-HMAC confirmation remains historical evidence for that binary. **It is NOT a robust final SHA256-only HMAC claim and must not be the final patch headline.** The selected cold result alone does not justify broad MAC claims with unresolved warm/two-use and moving controls. Full final scope: `issues/hash-sum-return-buffer/FINAL-ISOLATION.md`. Prior-art filing guidance in the aggregate issue draft is preserved.
