# cmd/compile: duplicate zeroing and array-result materialization in a two-stage hash-like call

**COMPLETED — source commit `7a8ab8f7`: SHA256 only, 3 additions/6 deletions after whitespace cleanup.** Final selected12-pair results: SHA256/32 −9.04% (p=0.002), SHA256/0 −5.47% (p=0.010); HMAC Warm **unresolved** (p=0.224), Cold −3.05% (p=0.033, weak/context-sensitive). **Unchanged SHA512/0 also moved −8.74% (p=0.012): disclose context/noise, never attribute it to this optimization.** The earlier both-hash5.61% HMAC result is not the final-patch claim. Validation: all crypto short and affected default/purego/FIPS-on/race PASS; arm64 cross-compilation PASS (not runtime testing).

**Final internal draft; not filed. Reproduced on optimized amd64 and arm64. Final SHA256-only validation is complete; the strongest source result is32-byte SHA256, while final warm-HMAC remains unresolved. See FINAL-ISOLATION.md and the final update below, including the unchanged-SHA512 control movement. No historical regression claim.** Consider splitting into duplicate-initialization and caller-result-materialization issues: their legality/implementation difficulty and profile budgets differ.

## Environment and minimal reproduction

Compiler upstream `2ff5743d9fd52fac166225e75df0c2c1edf82abb`, go1.28-devel; linux/amd64 (EPYC9554P), arm64 cross-compilation. Parent `../../compile-issues.sh` completed successfully. Normal `go test -c`, not -N/-l; `//go:noinline` preserves call boundaries. Diagnostics separately use `-m=2 -d=ssa/check_bce/debug=1`. `evidence/tests.txt` PASS on amd64; arm64 is codegen-only, not hardware-tested.

`repro.go` preserves the real SHA256 stages:120-byte State snapshot; out-of-line mutating call and post-call nonempty-buffer panic check; seven/eight BE word stores into32-byte result; returned-array→caller-local copy;28/32-byte append. `SumLocal/ReturnLocal`, `SumNamed/ReturnNamed`, and `SumInto/Into` hold semantics/call shape constant except result representation. An independent bytewise oracle tests short-tail zeros, output prefixes/growth, and receiver immutability. The small barrier is only a codegen reduction, not a compression-cost model.

## Actual observations on both architectures

| Stage | amd64 evidence | arm64 evidence |
|---|---|---|
| ReturnLocal output initialization |two MOVUPS-zero before barrier0x5355bc/0x5355c0, then two more to SAME result area0x5355db/0x5355df |two STP-zero0x12b700/0x12b704, then two more to SAME area0x12b71c/0x12b720|
| ReturnNamed control |only initial two zero-vector stores0x53567c/0x535680 |only initial two STP-zero0x12b7f0/0x12b7f4|
| SumLocal extra result copy |after CALL ReturnLocal, two vector-load/store pairs0x535875–0x535882 move32 bytes into another stack slot |FLDPQ return area0x12b9dc then FSTPQ toSP+48 at0x12b9e0|
| SumNamed |same extra result copy remains |same extra result copy remains|
| SumInto control |caller zeros output once0x535a8a/0x535a8e; callee writes directly; **no returned-array→local copy** |caller zeros output0x12bb04/0x12bb08; callee writes directly; **no returned-array→local copy**|
| Required State snapshot |present in all three Sum variants |present in all three Sum variants|
| Caller stack reservation |all three SUBQ216 bytes; no frame-size win |all three208-byte frames; no frame-size win|
| Final append |memmove remains even for SumInto |append inline in all variants|

Thus the intended representation differences are demonstrated in the minimal program, not merely hoped for. Outparam is not free of initialization, does not reduce the mandatory State copy or frame here, and does not fix amd64 append lowering.

Diagnostics confirm d/out pointers do not escape and binary.PutUint32 helpers inline. “append escapes” means the returned slice's newly grown backing store can escape; it is not proof that the fixed local result is heap-allocated. The normal warm operation has0 allocations. Ignore test-harness allocations when characterizing the optimized helper.

## A. Duplicate initialization: local semantic opportunity

Before any normal return in ReturnLocal, the second32-byte clear overwrites the first completely. No result pointer is passed to barrier; the result is pointer-free and there is no defer that can observe it. The entry clear is therefore redundant in this function. Named-return source **actually removes one clear** on both architectures and preserves short-tail semantics in passing tests.

Further ideal result construction would initialize only the4-byte short tail (or16-byte tail for SHA384), then emit the seven/eight BE stores. Do not omit the tail zero when returning the full array. This further optimization is an expected target, **not demonstrated by ReturnNamed/Into**: both retain one whole-array clear in the overall pipeline.

Compiler source evidence: `ssacompile/deadstore.go` is block-local and treats calls/potential memory reads as barriers. The reproduction retains that call/branch shape. This explains a relevant limitation, but exact SSA phase attribution is not attached; do not claim which pass introduced duplicate initialization.

## B. Caller materialization: proved source alternative, remaining compiler legality

The outparam pipeline's independent local output is initialized once and written by the callee; the returned-array copy is absent on both architectures. Tests establish equivalence for the intended nonaliasing call shape. **Into is not an unrestricted replacement with arbitrary aliased state/output or uninitialized short tail.** Real Sum supplies disjoint locals and a zeroed output, so the source adaptation respects these preconditions.

Automatic elimination of the original ABI copy is harder. The callee's array result occupies caller outgoing result storage, and a later growslice call can reuse that space. Simply deleting the caller-local copy and reading the old slot after growth is unsafe. Valid approaches include output-slot forwarding/calling-convention restructuring, or forwarding loaded result values directly to append on the no-growth path while preserving them across growth via a correct spill. The source outparam demonstrates the desired dataflow, not a universally legal local peephole.

Exact no-growth target: retain one State snapshot; serialize once into a live output location (or hold the result in registers); append without an unconditional intermediate store/reload. On the growth path preserve the snapshot across growslice. Source/ABI alias, panic, return lifetime, and GC-stack-map obligations remain implementation work. No hidden result-pointer compiler patch exists here.

## Profile budget: required copy versus candidate copy

Actual native public warm HMAC-SHA256/32 profile total9.74s,154.2ns/op profiling row,0 heap allocations. `ATTRIBUTION.md` and parent `sha256-hot.{asm,list}` contain exact mappings:

- Required120-byte Digest snapshot line203:560ms flat=**5.75%**; not eliminated.
- checkSum call plus32-byte returned-array→local copy line204:800ms flat=**8.21%**; this includes call/return-related instructions. Copy-only share is unknown without sampled instruction disassembly.
- Both output-zero-initialization source regions together:30ms=**0.31%**; only a subset is removable. No substantial whole-HMAC promise from zeroing alone.
- Separate append issue's entire source line:390ms cumulative=**4.00%**; not removed by output parameters on amd64.

Do not sum entire cumulative checkSum or memmove buckets into a fictitious copy ceiling. Sampling fractions are attribution budgets, not exact cycle costs or predicted gains.

## Actual performance results and limitations

Parent paired12-sample complete HMAC results:

- Outparam SHA256/32 warm149.8→144.1ns: **unresolved p=0.114**; SHA512 warm440.2→453.5ns: unresolved p=0.418. Cold controls unresolved.
- Named-return SHA256/32 warm149.8→163.5ns: **observed regression +9.22%, p=0.045**; SHA512 warm unresolved p=0.755. Do not hide the negative result because assembly looks cleaner.
- Separate public SHA256/32 outparam control81.78→76.79ns:−6.10%, p=0.017; SHA512 control unresolved p=0.117. This isolated hash result is not a demonstrated MAC improvement or a general recommendation.

Source public tests passed for all four parent hash variants. Actual **production variant** assembly is not attached here; the controlled standalone codegen differences above are attached. `evidence/bench.txt` for this package contains only PASS: there is intentionally no barrier-helper benchmark or comparative helper speedup. Real HMAC source benchmarks remain authoritative; these data do not promote a new MAC optimization.

## Filing classification

**Duplicate clear:** reproduced cross-architecture with a working semantics-preserving named-return control; strong narrow codegen fact, small measured application budget, negative source timing disclosed.

**Returned-array materialization:** reproduced cross-architecture; outparam control removes copy with unchanged caller frame size; useful design/optimization issue. Automatic result-slot forwarding and alias/lifetime legality remain unimplemented, not assumed solved by source equivalence.

Both are compiler deliverables, not accepted crypto source fixes. No direct-padding, checkpoint-cache, stack-HMAC-allocation, or PBKDF2 rediscovery. No external filing performed.

## Related work and filing route (verified September 27, 2026)

Neither unnecessary array zeroing nor intermediate aggregate copies are new
compiler problem classes. Open [#4750](https://github.com/golang/go/issues/4750),
“cmd/compile: omit zeroing of named return value when possible,” and open
[#15925](https://github.com/golang/go/issues/15925), “cmd/compile: SSA performance
regression due to array zeroing,” already cover return-area initialization and
array-copy inefficiencies; #15925 also discusses output-pointer workarounds.
Open [#14762](https://github.com/golang/go/issues/14762) tracks letting SSA store to
output parameters before return, a related callee-side limitation, not a complete
solution to the caller's result-slot lifetime problem. Closed/completed
[#67957](https://github.com/golang/go/issues/67957) and
[#47107](https://github.com/golang/go/issues/47107) address specific DSE obstacles
(InlMark and LocalAddr respectively); their closure does not establish that this
out-of-line call/branch case is solved. Recommend augmenting #4750/#15925 with the
cross-architecture duplicate-clear case and #15925 with the separate returned-array
materialization case, cross-linking #14762 as appropriate. Ask whether separate
residual issues are wanted rather than filing two generic new discoveries.
The added value is the controlled hash-like call shape, named/outparam controls,
ABI/growslice caveat, and bounded profile attribution. See `../PRIOR-ART.md`.

## Superseding confirmation and production-codegen update — September27,2026

This update supersedes the earlier “no claimed HMAC speedup” / “production variant asm not attached” status, while preserving the earlier12-pair results as historical evidence. Related-work text and filing route above are unchanged.

Parent completed a fixed independent16-pair,400ms confirmation, **not pooled** with the first12 pairs. The **both-SHA256-and-SHA512 outparam variant** improved public SHA256/32 from78.85 to75.11ns (−4.74%,p=0.007) and native public HMAC-SHA256/32 Warm from154.1 to145.5ns (−5.61%,p<0.001). Other tested SHA256 sizes and SHA512 controls remain unresolved. Exact tables: `../../bench/confirmation/{sha,hmac}-outparam-stat.txt`.

Actual production amd64 baseline/variant code is now attached under `../../production-asm/hash-{base,named-return,outparam,array-append,distance}.asm`. `PRODUCTION-CODEGEN.md` supplies exact source lines and addresses. SHA256 outparam retains the120-byte receiver snapshot but replaces two callee32-byte clears with one caller clear at0x638e5f/0x638e63; CALL at0x638e68 writes directly into localSP+40, and the baseline return→local copy0x638e5f–0x638e74 is absent after the new call. Caller/callee frames remain216/104 bytes; final append still calls memmove at0x638f80. SHA512's analogous64-byte result copy also disappears, with production caller frame376→344 bytes, but its performance controls are unresolved.

**Historical experiment qualification:** that measured binary changed both hash families. Final SHA256-only isolation and validation are now COMPLETE, and source commit `7a8ab8f7` contains3 additions/6 deletions. Its warm-HMAC result is unresolved (p=0.224), so the preceding both-hash5.61% result must not headline the committed patch. The compiler-side alias/lifetime constraints and related-work filing guidance remain as described above.

## Final SHA256-only isolation completed — supersedes pending qualification

Parent completed final SHA256-only validation: all crypto short and affected default/purego/FIPS-on/race PASS, arm64 cross-compilation PASS. Parent committed only SHA256 as `7a8ab8f7` (3 additions/6 deletions after whitespace cleanup). Prior-art/related-work guidance above is preserved.

Final12-pair selected tables `../../bench/selected/{sha256,hmac}-stat.txt`: public SHA256/32 **79.66→72.45ns,−9.04%,p=0.002**; SHA256/0−5.47%,p=0.010. However, **UNCHANGED SHA512/0 also moved−8.74%,p=0.012**: disclose benchmark context/noise and do not attribute this control gain to the SHA256 optimization. Other tested SHA256 sizes are unresolved.

Final HMAC-SHA256/32 Cold−3.05%,p=0.033, but **Warm153.7→150.8ns,p=0.224 unresolved; TwoUses p=0.086 unresolved**. Therefore **no robust final-patch warm-HMAC claim**. The earlier both-hash variant's16-pair−5.61% warm-HMAC confirmation remains historical evidence for that binary, not a headline for the isolated final patch.

The strongest source case is32-byte public SHA256: separate initial/confirmation/isolation experiments had consistent directions−6.10%/−4.74%/−9.04%, with no pooling and with the unchanged-control caveat. Exact final scope and validation are centralized in `FINAL-ISOLATION.md`. Production codegen proof and compiler alias/lifetime obligations are unchanged. No more timing is requested by this audit worker.
