# SHA2-shaped aggregate return / initialization compiler issues

**COMPLETED — source commit `7a8ab8f7`: SHA256 only, 3 additions/6 deletions after whitespace cleanup.** Final selected12-pair results: SHA256/32 −9.04% (p=0.002), SHA256/0 −5.47% (p=0.010); HMAC Warm **unresolved** (p=0.224), Cold −3.05% (p=0.033, weak/context-sensitive). **Unchanged SHA512/0 also moved −8.74% (p=0.012): disclose context/noise, never attribute it to this optimization.** The earlier both-hash5.61% HMAC result is not the final-patch claim. Validation: all crypto short and affected default/purego/FIPS-on/race PASS; arm64 cross-compilation PASS (not runtime testing).

**Final scope:** `FINAL-ISOLATION.md` supersedes historical pending/no-gain statuses below. SHA256-only validation completed; strongest source case is32-byte SHA256, NOT a robust final warm-HMAC gain. Unchanged SHA512/0 also improved in the selected series and is explicitly treated as context/noise. Compiler draft: `ISSUE-DRAFT.md`; line-specific attribution: `ATTRIBUTION.md`.

Parent independent semantic tests PASS on amd64. Normal optimized amd64 and cross-compiled arm64 asm **both reproduce** duplicate return-area zeroing and returned-array→caller-local materialization. Named result removes one clear; output parameter removes returned-array copy but retains one caller clear. All standalone32-byte-fixture caller frames remain216-byte amd64 reservations /208-byte arm64 frames. Required120-byte State snapshot remains in every variant.

`evidence/{amd64,arm64}.asm`, `compiler.txt`, and `tests.txt` are authoritative. Parent commands: `../../compile-issues.sh`. Toolchain upstream `2ff5743d9fd52fac166225e75df0c2c1edf82abb`. No -N/-l; explicit noinline only on reduced call boundaries. arm64 was not executed on hardware. `evidence/bench.txt` contains PASS only: there is intentionally no toy-barrier benchmark.

## Classification

- Duplicate clear: local redundancy with semantics-preserving named-return control, proved in emitted code; whole-app sampled source-region budget only0.31%.
- Extra returned-array copy: confirmed on both architectures; outparam is a working source control, not proof a local compiler peephole can delete the copy. ABI-result lifetime across growslice must be preserved; arbitrary aliased or uninitialized output parameters are not equivalent.
- Required state copy: not eliminated and not claimed eliminable.

## Initial full-operation results (historical)

The initial12-pair experiment did not establish a MAC win. Outparam warm HMAC-SHA256149.8→144.1ns,p=0.114,n=12 unresolved; named-return warm HMAC-SHA256 regressed+9.22%,p=0.045. A separate public SHA256 outparam control improved−6.10%,p=0.017; this does not establish HMAC improvement. Full tables in `../../bench/*-stat.txt`; include negative/unresolved results when discussing these compiler findings.

The exact final issue draft distinguishes demonstrated source-codegen changes from unimplemented compiler alias/lifetime transformations. No public filing or accepted source patch.


## Independent both-hash confirmation (historical stage; final isolation below)

A fixed **16 independent pairs ×400ms**, not pooled with those12, now confirms the **both-hash outparam variant**: SHA256/32 **78.85→75.11ns,−4.74%,p=0.007**; native HMAC-SHA256/32 Warm **154.1→145.5ns,−5.61%,p<0.001**. Other SHA256 sizes and SHA512 controls are unresolved. Tables: `../../bench/confirmation/{sha,hmac}-outparam-stat.txt`. This is a narrow confirmed workload result, not a general MAC claim.

Actual production amd64 assembly now verifies removal of the returned-array copy and duplicate callee output initialization. See `PRODUCTION-CODEGEN.md` for exact lines/addresses and `../../production-asm/hash-{base,named-return,outparam,array-append,distance}.asm`. SHA256 required state copy and216/104-byte caller/callee frames remain; append still calls memmove. SHA512's companion result copy disappears and caller frame shrinks376→344, without a resolved performance gain.

Parent subsequently completed the **SHA256-only** final qualification, summarized below; the16-pair both-hash confirmation remains a separate experiment. Do not label the measured both-hash binary as the already-validated final patch. The final append-only update in ISSUE-DRAFT.md supersedes its earlier status without disturbing related-work research.


## Final SHA256-only qualification completed

Parent all crypto short and affected default/purego/FIPS-on/race PASS; arm64 cross-compilation PASS. Final12-pair selected results: SHA256/32 **79.66→72.45ns,−9.04%,p=0.002**; SHA256/0−5.47%,p=0.010. **Unchanged SHA512/0 control−8.74%,p=0.012** is context/noise and cannot be attributed to this source change.

Final HMAC Cold−3.05%,p=0.033, but Warm153.7→150.8ns,p=0.224 and TwoUses p=0.086 are unresolved. **Do not headline the earlier both-hash−5.61% HMAC result as a final-patch win.** Separate32-byte SHA256 experiments consistently favored outparam (−6.10%,−4.74%,−9.04%), without pooling or assuming stable magnitude. The SHA256-only change is committed as `7a8ab8f7`,3 additions/6 deletions after whitespace cleanup. Exact scope/tables/controls: `FINAL-ISOLATION.md`; no additional timings required.
