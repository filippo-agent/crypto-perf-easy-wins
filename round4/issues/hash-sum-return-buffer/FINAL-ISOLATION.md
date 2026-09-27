# Final SHA256-only isolation — September27,2026

**COMPLETED — source commit `7a8ab8f7`: SHA256 only, 3 additions/6 deletions after whitespace cleanup.** Final selected12-pair results: SHA256/32 −9.04% (p=0.002), SHA256/0 −5.47% (p=0.010); HMAC Warm **unresolved** (p=0.224), Cold −3.05% (p=0.033, weak/context-sensitive). **Unchanged SHA512/0 also moved −8.74% (p=0.012): disclose context/noise, never attribute it to this optimization.** The earlier both-hash5.61% HMAC result is not the final-patch claim. Validation: all crypto short and affected default/purego/FIPS-on/race PASS; arm64 cross-compilation PASS (not runtime testing).

**Authoritative final scope:** source case is the32-byte SHA256 workload. No robust warm-HMAC benefit is established for the final SHA256-only patch. The earlier both-hash variant's−5.61% HMAC result is historical evidence for that different binary, not the final patch's headline.

## Final selected-patch evidence

Parent `../../bench/selected/{sha256,hmac}-stat.txt`,12 pairs:

| Workload | Baseline→SHA256-only | Result |
|---|---|---|
| Public SHA256/32 |79.66→72.45ns |−9.04%,p=0.002|
| Public SHA256/0 |77.72→73.47ns |−5.47%,p=0.010|
| **UNCHANGED SHA512/0 control** |232.3→212.0ns |**−8.74%,p=0.012; not attributable to SHA256 source change**|
| HMAC-SHA256/32 Cold |481.1→466.4ns |−3.05%,p=0.033 in this series|
| HMAC-SHA256/32 Warm |153.7→150.8ns |unresolved,p=0.224|
| HMAC-SHA256/32 TwoUses |816.1→773.8ns |unresolved,p=0.086|

SHA256 sizes64/1024 and remaining hash/HMAC controls are unresolved. Allocation counts are unchanged.

The unchanged SHA512/0 control's significant movement is explicit evidence of benchmark context/noise: never credit its gain to the SHA256 optimization, and do not interpret the selected9.04% as a universal or precisely stable improvement. The cold-HMAC observation does not justify a broad MAC claim when warm/two-use outcomes are unresolved and controls move.

## Three experiments, kept separate

Public SHA256/32 directions agree:

1. Initial both-hash outparam exploration:−6.10%,p=0.017,n=12.
2. Independent both-hash confirmation:−4.74%,p=0.007,n=16 (fixed16 pairs×400ms).
3. Final SHA256-only isolation:−9.04%,p=0.002,n=12.

These are separate studies, not pooled samples. The consistent direction plus production copy/zeroing elimination is the strongest source case, scoped to32-byte SHA256. The16-pair both-hash confirmation's warm-HMAC−5.61%,p<0.001 did **not** become a resolved warm-HMAC result in the final isolated patch. Do not transfer that figure into a final-patch headline or commit claim.

## Validation and selection

Parent reports final SHA256-only **all crypto short and affected default/purego/FIPS-on/race PASS; arm64 cross-compilation PASS**. Cross-compilation is not arm64 runtime/performance validation. The worker did not run builds/tests/timings; benchmark tables were read and parent validation report recorded.

Parent committed only the SHA256 outparam change as `7a8ab8f7` (3 insertions/6 deletions after whitespace cleanup), not SHA512, named-return, array-append or padding-distance changes. No further timing is requested.

Actual mechanism remains as documented in `PRODUCTION-CODEGEN.md`: the SHA256 receiver snapshot and compression/padding work remain; one caller output clear replaces duplicate callee result clears and the ABI-result→local copy disappears. Final append still calls memmove. Compiler drafts/related-work filing routes remain useful independently of this scoped source selection.
