# Final codegen checklist — now evaluated against parent artifacts

The former expectation checklist is superseded by actual `evidence/{amd64,arm64}.asm` and `ISSUE-DRAFT.md`. Parent tests PASS. The worker only read saved files and wrote documentation; no worker CPU runs.

| Question | Observed outcome |
|---|---|
| Does minimal ReturnLocal reproduce duplicate zeroing? |YES on both amd64 and arm64:32-byte result clear before and after barrier/post-call branch.|
| Does named return remove one clear? |YES both architectures.|
| Does SumNamed remove returned-array→local copy? |NO, copy remains on both.|
| Does SumInto remove returned-array→local copy? |YES both; one caller32-byte clear remains.|
| Is the120-byte state snapshot gone? |NO; retained and semantically necessary in all variants.|
| Is caller frame smaller? |NO: all variants reserve216 bytes amd64 and use208-byte arm64 frames.|
| Does outparam fix final memmove? |NO on amd64; arm64 already inlines final28/32-byte append.|
| Does scalar append produce32 separate stores? |NO: actual amd64 compiler merges to four64-bit loads then four64-bit stores; working copy-lowering control.|
| Is array-assignment append a clean workaround? |NO: both architectures retain32-byte zero fill and two bounds checks before replacement assignment.|
| Do fixed output pointers escape? |Diagnostics say d/out do not escape; returned append backing store may escape on growth.|
| Does isolated codegen establish MAC speedup? |Codegen alone does not. Separate independent16-pair confirmation now shows−5.61% for warm HMAC-SHA256/32 with the both-hash outparam variant; final SHA256-only validation now passed, but its warm-HMAC p=0.224 remains unresolved. See FINAL-ISOLATION.md.|
| Is automatic compiler forwarding legality solved? |NO. Preserving ABI-result lifetime across growslice and alias conditions remains implementation work.|
| Were standalone helper timings measured here? |NO: hash-return bench file only PASS; constantappend bench file is baseline real HMAC only.|
| Has production variant asm been inspected? |YES: `../../production-asm/hash-*.asm`; intended result-copy/clear removal confirmed. See PRODUCTION-CODEGEN.md.|
| Has arm64 performance/correctness been run? |No; arm64 evidence is compilation/disassembly only.|

All relevant exact addresses, source budgets, commands, flags, and full-operation result caveats are in the final issue drafts. No need for additional worker CPU work to substantiate the current filing-ready observations.
