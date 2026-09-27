# Round 4: hot crypto helpers and compiler code generation

**September 27, 2026.** Compiler pinned to Go `2ff5743d9fd52fac166225e75df0c2c1edf82abb` (`go1.28-devel`). This round follows the request to profile very hot small helpers, inspect their machine code, and prepare useful compiler issues even when no source rewrite produces a substantial public-operation win.

**Deliverables: one tiny SHA-256 source change and tested compiler reproducers, not another CMOV-sized crypto speedup.** The strongest compiler result is a small, phase-localized carry-chain replay. All issue drafts are local; nothing has been filed externally. See [prior-art triage](issues/PRIOR-ART.md) before filing a new issue rather than augmenting existing work. Most are sharper reproductions or residual cases for known compiler work, not newly discovered problem classes.

## Selected source change: SHA-256 checksum output storage

Change private `checkSum` from returning a `[32]byte` to filling a caller-owned
array: **three lines added, six deleted** in one file. This removes a returned-array
copy in actual production code while preserving the required digest snapshot,
SHA-224 truncation, allocations, and the public method set.

The complete `sha256.Sum256` operation on a 32-byte message improved in three
separate runs: **6.10%**, **4.74%**, and **9.04%** less time. The last run isolates
the SHA-256-only patch: **79.66→72.45ns, p=.002, n=12**. The observed magnitude
varies; do not generalize this to every message length or architecture. Long-message
controls did not resolve a benefit.

The earlier two-hash confirmation also resolved a warm HMAC-SHA256 gain of 5.61%,
but **the final SHA-256-only warm-HMAC comparison did not resolve a gain**
(153.7→150.8ns, p=.224). Cold HMAC's isolated −3.05%, p=.033 is weaker evidence.
Consequently **no stable 5.6% HMAC claim is attached to the final patch**.
An unchanged SHA512/empty control also improved in the final batch, demonstrating
context/noise effects; that result is not attributed to the SHA-256 change.

Patch: [selected/sha256-checksum-outparam.patch](selected/sha256-checksum-outparam.patch).
Source commit: **`7a8ab8f7`**, branch `crypto-codegen-round4`.
Final raw results and all controls: `bench/selected/`; independent confirmation:
`bench/confirmation/`. SHA-512's source counterpart is not selected.

## Compiler-team shortlist

| Priority | Finding | Demonstrated result | Application relevance / limits |
|---|---|---|---|
| 1 | [Carry-sum operand order replays a whole addition chain](issues/p384-square/ISSUE-DRAFT.md) | An 18-line function with two seven-limb additions gains **one ADD + six ADCs** solely when `ca+cb` becomes `cb+ca`. SSA locates duplication at **flagalloc**, before register allocation. Source commutation removes it. ARM64 does not replay the chain. | Reduced from generated P-384 arithmetic. Current P-384 parse+Verify profile spends **68.59% flat** in Montgomery multiplication, but this fraction is NOT the removable cost. This is a proven lowering defect, not a complete explanation of the original Square/Mul timing inversion. |
| 2 | [Redundant truncation after narrow bit sums](issues/pq-small-arithmetic/ISSUE-cbd-narrow-bits.md) | `uint16((b&1)+(b>>1&1))` retains a byte truncation even though its result is 0..2. Widening the operands removes MOVZX on amd64 and UBFX on ARM64. The four-sum CBD loop shows the same pattern. | ML-KEM samplePolyCBD: **5.78% flat / 17.23% cumulative** in encapsulation on the fully stacked baseline. Cumulative time includes SHAKE/other arithmetic, not just the four extensions. |
| 3 | [Exact constant cancellation with proven no-overflow bounds](issues/pq-small-arithmetic/ISSUE-bounded-mul-div.md) | `(int32(r&63)*16760832)/88` keeps a magic division sequence; the equivalent `(int32(r&63)*190464)` does not. Explicit bounds make this a legal compiler optimization for every input to the reproducer. | ML-DSA `decompose88`: **4.33% flat / 5.37% cumulative** in parse+Verify44. The production regrouping additionally uses a crypto invariant; unrestricted signed multiplication/division cannot be reordered. Negative overflow controls are included. |
| 4 | [Small fixed-size overlap-safe copies still call memmove on amd64](issues/constant-append-memmove/ISSUE-DRAFT.md) | `append(dst, src[:]...)` with a 32-byte array calls memmove on amd64. ARM64 already uses vector loads/stores. A working scalar-source control snapshots all bytes before stores and avoids the call. | SHA256.Sum's relevant append line accounts for **4.00% cumulative** of warm HMAC, not the whole 14% memmove bucket. Existing work overlaps; improving the lowering must preserve arbitrary overlap and growth/nil semantics. |
| 5 | [Duplicate array-result clears and extra result materialization](issues/hash-sum-return-buffer/ISSUE-DRAFT.md) | Both architectures duplicate a clear in the local-return version and copy the returned array into another local. Named return removes one clear; an output parameter removes the result copy. | The required hash-state snapshot remains. Duplicate-clear source regions total only **0.31%** of warm HMAC. The **8.21%** call/result-copy source line is not a copy-only measurement. ABI lifetime across growslice prevents blindly deleting the copy. |

A smaller, well-reduced backend case is [negated borrow to all-bits mask](issues/carry-select/ISSUE-DRAFT.md): amd64 emits SETB/MOVZX/NEG where SBB can form the mask. ARM64 already emits SUBS/NGC. The real scalar occurrence is **not a retained hotspot** in the Ed25519 Verify profile, so it ranks below the cases above. It is not a rediscovery of the already implemented conditional-subtraction/constant-time-selection work.

### Useful negative results / further investigation

* ML-DSA's generic Montgomery partial reduction is now **31.55% flat** in Sign44. The canonical reduction already improved in the preceding round is only **2.29% flat**. Removing a correction from the different, canonical-input `fieldFromMontgomery` helper does not remove the hot general reduction's work.
* Ed25519's generic `feSquare` is **26.63% cumulative**. A standalone reduction reproduces all fifteen products scheduled before the first ADD/ADC, retaining many intermediate products. The noinline-barrier alternative did not demonstrate improvement. This is a scheduling investigation lead, not a proven faster schedule or another established compiler bug. ADC chains themselves are intact; lack of MULX at GOAMD64=v1 is expected.
* RSA `Nat.assign` is **8.25% flat** in the signing profile. Replacing its mask operations with the existing constant-time intrinsic produces CMOV, but complete RSA signing did not improve. Do not extrapolate its small helper timing into an API gain.
* A [padding-range reproducer](issues/sha2-padding-range/README.md) and bounded-distance source spelling are included as secondary evidence. The full HMAC screening does not support selecting that patch.

## Source experiments and measurement rules

Measurement baselines (the selected SHA-256-only commit is on top of main):

* Main: `2532e0de69344246565a94fc3de14fd4f982b361`, branch `crypto-codegen-round4`; includes prior selected audit work, not the rejected RSA public-key cache.
* PQ: `db19b48d27dde1bb6c7c2c144ba3099536382374`, branch `pq-codegen-round4`: **all 13 pending Filippo CLs assembled in round 3**, plus the previously selected canonical CMOV/CSEL reduction, fixed codecs, and local ML-KEM arithmetic. Those earlier gains are already in this baseline, not new gains here.

All native measurements use this AMD EPYC 9554P linux/amd64 VM, CPU0, GOMAXPROCS=1. CPU-heavy work is serialized with `/tmp/crypto-audit-cpu.lock`. No compilation or profiling runs concurrently with timings. Separate saved binaries are alternated old/new and new/old; candidate order rotates. All samples, unfavorable controls, allocations and benchstat tables are retained.

Initial screen: **12 pairs, 200 ms per case**, `bench-probes.py`. Confirmation: **16 pairs, 400 ms per case**, `confirm.py`, fixed in advance for ML-DSA regrouping, CBD widening, SHA output parameters and HMAC controls. The latter is a separate experiment, not samples selected or pooled to improve significance. Files are in `bench/confirmation/`.

The eleven isolated source probes are in `patches/`. They preserve algorithms, validation and constant-time control flow; each passed the focused internal/public short tests in `compile-probes.sh`. They are experimental artifacts, **not eleven accepted optimizations**:

| Probe | Initial whole-operation screen |
|---|---|
| ML-DSA decompose constant regrouping | All Sign/parse+Verify cells unresolved; Verify44 67.91→64.97 µs, p=.060. |
| ML-DSA from-Montgomery correction removal | All tested cells unresolved. |
| ML-DSA direct-compare subtraction | No established broad public-operation benefit. |
| ML-KEM CBD byte widening | Isolated Encaps1024 −3.41%, p=.045; other cells unresolved. Confirmation required. |
| ML-KEM direct-compare subtraction | All tested cells unresolved. |
| RSA XOR/borrow equality | Sign unresolved and unfavorable median; isolated Verify2048 PKCS#1 result −8.04%, p=.033 does not justify selection across seven cells. |
| RSA assign via intrinsic | All seven cells unresolved. |
| SHA named result | Warm HMAC-SHA256 **+9.22%, p=.045** despite removing one redundant clear. |
| SHA output parameter | SHA256.Sum256/32 −6.10%, p=.017; warm HMAC unresolved, SHA512 controls unresolved. Confirmation required. |
| SHA fixed-array append | Warm HMAC-SHA256 favorable median but p=.092; standalone variant retains extra zeroing/bounds checks. |
| SHA bounded-distance padding | All four HMAC cells unresolved. |

**Final confirmation:** all four ML-DSA and all four ML-KEM follow-up cells were
unresolved. For example, Verify44 was 67.93→67.34µs (p=.184) and Encaps1024 was
43.29→43.08µs (p=.780). **No new PQ production change is selected.** SHA-256
output parameters are selected only with the narrowly qualified results above.
All other probes remain unselected. An isolated nominal p<.05 in this
multi-candidate screen is not automatically a merge recommendation.

## P-384 GOAMD64=v3: do not extrapolate isolated-helper timings

The isolated full helpers reverse ordering at v3: generated Square is faster than Mul(x,x), unlike v1. This raised a concern about the preceding amd64-wide source workaround. **Complete public-operation A/B did not reproduce that concern**:

* Restoring generated Square: P-384 parse+Verify 804.8→780.4 µs, p=.713, unresolved.
* Restoring generated Square: complete P-384 ECDH benchmark 671.5→827.5 µs, **+23.23%, p<.001**, 12 pairs. This benchmark includes fresh key generation and public-key parsing as well as the exchange.

[Exact binary comparison](issues/p384-square/evidence/production-v3/CONCLUSION.md) shows production and standalone helper cores are byte-identical. The discrepancy is execution-context dependent; instruction-cache or other microarchitectural causation is unproven. The Mul-only public binaries have a smaller linked kernel footprint, but that is not a causal experiment. **No blanket v3 gate was added.** The prior source workaround remains a measured prototype for the tested machine/workloads, not a theorem about every amd64 processor.

The small carry-replay issue is independently proven and does not depend on this unexplained timing discrepancy. Do not claim that full Square has more spills than full Mul: it does not. Do not propose disabling CSE as the fix: those experiments were slower and changed multiple kinds of expressions.

## Reproduction and validation

* `profile.sh` and `profiles/`: fresh public profiles, source attribution, linked machine code and pprof files.
* `compile-probes.sh`, `tests/`, `patches/`: isolated production builds and passing affected-package short tests; production files restored after each probe.
* `compile-issues.sh`: ordinary optimized standalone builds, tests, amd64/ARM64 disassembly, escape/BCE diagnostics. Fixed the initial symbol-filter mistake for the `carryselect` module.
* `validate-repros.sh`: ordinary, **race**, and **GOAMD64=v3** correctness tests for six modules, all passing. Original and compact P-384 arithmetic use independent math/big and aliasing oracles. The small carry module has an additional ARM64 cross-build.
* `final-codegen.sh`: padding-range checks and disassembly of actual saved production variants.
* `validate-selected.sh`: selected SHA-256-only patch passes **all `crypto/...`
  short tests**, affected-package default and **purego**, **FIPS-on**, and
  **race** tests; ARM64 public SHA-256 cross-build. Final selected-source
  measurements use 12 alternating pairs, 300ms per case.
* `benchmark-sources/`: round-specific source/test fixtures to recreate the measurements in the appropriate main or PQ tree. Shared upstream benchmark fixtures remain in those trees.
* Individual issue directories: exact code, tests, machine code, semantics/aliasing proofs, limitations, working control variants, and filing drafts. The carry-replay package includes per-pass SSA dumps.

**ARM64 is codegen-only: no native ARM64 timings or runtime validation.**
The selected SHA-256 source change has its own production purego/FIPS/race
qualification; unselected candidates do not inherit that qualification merely
because their standalone reductions pass. Existing baseline qualification is
recorded in round 3. No public method-set changes, cached-key assumption,
FIPS bypass or new cryptographic algorithm was introduced.

Binaries, bulky full-kernel SSA experiments and raw search-page caches remain
locally available but are excluded from git. Reports, source, raw measurements,
the small carry-chain SSA proof, assembly, and verified prior-art summaries are
versioned. Nothing has been submitted to Go's issue tracker or Gerrit.

The historical profiling/source-probe drivers now refuse to run on the newer
selected source tree. Recreate their baseline commits in disposable worktrees
and adjust the VM-specific paths before rerunning them. Preserve the recorded
results by choosing fresh output directories; timing drivers append raw samples.
