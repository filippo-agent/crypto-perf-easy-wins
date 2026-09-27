# Actual production amd64 codegen and independent confirmation

September27,2026. Inspected parent-saved `../../production-asm/hash-{base,named-return,outparam,array-append,distance}.asm`. No new disassembly/build/test/timing run by worker. These are actual SHA256 AND SHA512 production variants, not only standalone reductions. The outparam binary changes both hash families; the final SHA256-only candidate has since completed its distinct qualification; see FINAL-ISOLATION.md. The assembly files here describe the earlier both-hash variant.

## SHA256 baseline versus outparam: intended mechanism confirmed

| Operation | `hash-base.asm` | `hash-outparam.asm` |
|---|---|---|
| Required120-byte Digest snapshot |Sum line203,0x638dff–0x638e55 |same source line and instruction-address range, unchanged|
| Result setup and call |Sum line204 CALL0x638e5a, then return-slot→SP+40 copy0x638e5f–0x638e74 |Sum line204 LEA local outputSP+40 at0x638e5a; two zero MOVUPS0x638e5f/0x638e63; line205 CALL0x638e68 passes its address|
| Immediately after checkSum |two16-byte load/store pairs copy32-byte ABI result to local |line206 variant check0x638e6d: **no post-call result-copy sequence**|
| Callee return/output initialization |entry clear0x638ff7/0x638ffb, second clear0x63909a/0x63909e |**neither callee output clear exists**; only required padding-buffer clear remains|
| Callee output writes |BE words to ABI result area |line235 pointer reload0x639099 then first output store0x6390a1; subsequent BE words write through the same caller output pointer|
| Caller frame |216-byte SUBQ at0x638dd3 |same216-byte SUBQ|
| Callee frame |104-byte SUBQ at0x638fee |same104-byte SUBQ|
| Final32-byte append |line208 memmove0x638f8e |line209 memmove0x638f80; **not removed**|

Net result-buffer-specific traffic change: two32-byte callee clears become one32-byte caller clear, and the extra32-byte return→local transfer is removed. Extra output-pointer save/reload and register scheduling changes also exist, so the measured improvement is for the complete source rewrite, not a controlled per-instruction causal estimate. No compression call, padding algorithm, FIPS record, required receiver snapshot, or heap allocation is removed.

The named-return production control leaves Sum's result copy intact and retains the entry output clear at0x638ff7/0x638ffb; its second callee output clear is gone. This agrees with the standalone reproduction and the tiny0.31% sampled zeroing-region budget.

## SHA512 companion in the measured both-hash variant

Baseline Sum line275 CALL0x642357 then four16-byte load/store pairs0x642364–0x642385 materialize64-byte result. Outparam Sum line275 zeros local output0x64232e–0x64233c, calls checkSum at0x642346 (line276), then immediately processes d.size at0x64234b: **no64-byte result-copy sequence**. Outparam checkSum loads output pointer at0x64252e and writes first BE word0x642536; no callee output-array clear remains.

Production SHA512 caller frame changes376→344 bytes (SUBQ0x178 at baseline0x642296 versus0x158 at outparam0x642276). This does NOT contradict the standalone32-byte fixture's unchanged frames: it is a different64-byte result/216-byte state layout. SHA512 controls show no resolved speedup, so this companion is not selected for the final source change.

## Independent confirmation: exact scope

Fixed **16 independent pairs,400ms**, not pooled with the earlier12 exploratory pairs:

- `../../bench/confirmation/sha-outparam-stat.txt`: public SHA256/32 **78.85→75.11ns,−4.74%,p=0.007,n=16**.
- `../../bench/confirmation/hmac-outparam-stat.txt`: native public HMAC-SHA256/32 Warm **154.1→145.5ns,−5.61%,p<0.001,n=16**.
- SHA512 HMAC457.2→460.3ns,p=0.423 unresolved. SHA512 hash controls and SHA256 sizes0/64/1024 unresolved. Allocation counts remain0.

This narrowly confirms improvements for two32-byte workloads **with the both-hash outparam variant**. It supersedes the earlier “no MAC win established” status; it does not establish general SHA2/HMAC gains, named-return/array/padding gains, or arm64 performance.

Parent is applying only the SHA256 half (3 insertions/5 deletions), then running default/purego/FIPS/race/all-crypto validation and final isolated paired timing before commit. **Final SHA256-only validation is now complete; see FINAL-ISOLATION.md.** Its warm-HMAC result is unresolved (p=0.224), despite this earlier both-hash confirmation. Do not transfer the both-hash binary's−5.61% figure to the final patch. Public SHA256/32 final result is−9.04%,p=0.002, but unchanged SHA512/0 control also moved−8.74%,p=0.012 and must be disclosed as context/noise.
