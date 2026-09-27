# Fresh source/assembly attribution — replaces coarse early ceilings

Evidence supplied by parent: `../../profiles/sha256-hot.list` and `.asm`, native-only HMAC profile total **9.74s sampled**. Reading these files only; no pprof processing/build/test/timing executed by this worker. The `.asm` maps instructions to source lines but does **not** carry instruction sample counts. Therefore we can bound source-line regions, not assign each cycle to individual MOVUPS.

## Sum's two aggregate stages, with exact locations

| Stage | Source/sample attribution | Actual emitted region | Interpretation |
|---|---|---|---|
| 1. Snapshot mutable Digest | line203:560ms flat,580ms cumulative |0x638dff–0x638e55: two address/preparation instructions followed by eight16-byte load/store pairs; last pair starts at104 so overlaps prior16-byte pair, covering120 bytes total |5.75% flat of whole operation. One snapshot is semantically required with present mutation-based finalizer. These are INLINE moves, not runtime.memmove and not heap allocation. Do not add them to memmove samples or claim outparam removes them. |
| Call and stage2 result materialization | line204:800ms flat,7.49s cumulative |0x638e5a CALL checkSum;0x638e5f–0x638e74 two address instructions and two16-byte load/store pairs moving return32 bytes SP+0→SP+40; line204 also appears at0x638ed6/0x638f69 source pointer reload after slow growth |800ms=8.21% is a line-level upper bound on postcall-copy removal, NOT proof all800ms are those four MOVUPS. The call/return boundary remains with an outparam. 6.69s of cumulative samples belong to checkSum and cannot be counted as copy overhead. |
| Short/long output case | line205:120ms flat |function-entry receiver/slice saves are attributed line205, plus CMPB/Jcc at0x638e79–0x638e81 |1.23%. Do not attribute all line205 samples solely to the variant branch. |
| Fixed32 output append | line208:60ms flat,390ms cumulative |0x638f1f–0x638fac; capacity check/slow growslice path; three slice saves, memmove32 at0x638f8e, three reloads |390ms=4.00% entire region. Only330ms=3.39% are callees; with this zero-allocation warm benchmark the hot callee is memmove. Confirm absence of growth samples if exact per-callee accounting is required. This is a substantially tighter candidate ceiling than total14.17% memmove. |

The line203 cumulative-flat20ms discrepancy is not extra evidence of a copy call: there is no call in that emitted region. Treat as symbolization/inlining/preemption attribution, not allocation/copy cost. Exact sampled-instruction disassembly is needed before further attribution.

## What finalizer zeros can actually explain

- checkSum line211 (entry, stack prologue, return-slot initialization):20ms flat total.
- line233 (second output-array initialization):10ms flat total.
- First initialization is at0x638ff2–0x638ffb; second0x639095–0x63909e, same result-slot address.
- **Both entire source regions total at most30ms=0.31% of operation samples**, ~0.47ns scaled to the154.2ns profiling row. The removable stores are only a subset. This rules out presenting duplicate-zero removal ALONE as a substantial HMAC speedup on this profile.
- Stage2 copy plus both initialization regions:830ms=8.52% source-region ceiling (~13.14ns), dominated by ambiguous line204. Again, not a forecast. Named-return only removes duplicate zeroing, not stage2 copy; it has correspondingly much weaker measured opportunity than outparam.

## memmove division: measured versus still unknown

Total runtime.memmove is1.38s. Append line208's330ms callee samples account for about23.9% of that bucket (3.39% whole operation), subject to above warm-no-growth caveat. The remaining~1.05s=10.78% cannot be attributed between message/padding/checkpoint copies from this supplied list alone.

Machine code identifies the other sites precisely:
- Write line176 at0x638bb3: buffered copy used by padding in this benchmark.
- Write line195 at0x638c70: initial32-byte message copy into empty inner/outer buffers.
- UnmarshalBinary at0x638907:64-byte checkpoint-buffer copy.

These have two calls each per steady-state HMAC, and append has two. **Call count is not sample/cycle attribution.** Do not divide14.17% by four to invent their percentages. Parent can supply sampled `pprof disasm` or line-list Write/UnmarshalBinary if tighter division is useful; worker has not run CPU processing during exclusive window.

## Allocation claim

Warm benchmark explicitly reports0 B/op,0 allocs/op. Required Digest snapshots, [32] results, padding arrays, spills and return temporaries are stack traffic. Source's `new(Digest)` in SHA512 also lowers to stack scratch in saved code. No allocation optimization is demonstrated here; pending stack-HMAC construction work is unrelated and not repackaged.

## Decision

Focus compiler/source experiment on **stage2 returned-array→caller-local copy / result-slot forwarding/outparam**, and separately fixed-append lowering. Both preserve stage1 snapshot and unchanged finalization/compression. Minrepro `SumLocal`→`ReturnLocal` versus `SumInto`→`Into` reproduces these two stages with identical State layout and output shape; `SumNamed` is the named-return control. Its lightweight mutating barrier preserves call shape only, never claims SHA-NI cost. Whole-operation cost must come from the real public-HMAC benchmark against compiled source/compiler variants.

The bounded-padding-expression side probe is deprioritized. Prior direct-padding failed the performance bar; no padding-only performance claim is made and no timing should be scheduled ahead of the aggregate-copy experiments.

## Later independent confirmation / production validation update

The sampled budgets above remain baseline source-region attribution, not per-instruction causal gains. Parent's independent16-pair400ms confirmation (not pooled with earlier12) now measures public SHA256/32−4.74%,p=0.007 and native HMAC-SHA256/32 Warm−5.61%,p<0.001 for the **both-hash outparam variant**. Actual production code now confirms the result-copy/initialization change: see `PRODUCTION-CODEGEN.md` and `../../production-asm/hash-{base,outparam}.asm`. This supersedes earlier no-established-MAC-gain status, without proving all line204 samples were removable copy cost. Parent's reduced SHA256-only patch still awaits its final independent qualification; broader sizes/SHA512/arm64 gains are not established.

## Final selected-patch scope

SHA256-only qualification is now complete (parent all-crypto short/default/purego/FIPS-on/race and arm64 cross-compile PASS). Final selected SHA256/32−9.04%,p=0.002; final warm-HMAC p=0.224 unresolved. Unchanged SHA512/0 control also moved−8.74%,p=0.012: disclose noise/context and do not assign that gain to this patch. The earlier both-hash−5.61% warm-HMAC figure does not headline the final source selection. See FINAL-ISOLATION.md for separate-study results and exact scope; baseline profile budgets above remain unchanged.
