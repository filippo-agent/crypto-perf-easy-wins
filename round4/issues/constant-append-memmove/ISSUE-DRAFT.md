# cmd/compile: inline small overlap-safe fixed-size copies on amd64 (arm64 already does)

**Final internal draft; not filed. Reproduced with normal optimization on amd64; arm64 is a working positive control. No claimed HMAC speedup or regression date.**

## Environment and reproducibility

Compiler upstream `2ff5743d9fd52fac166225e75df0c2c1edf82abb`, go1.28-devel, linux/amd64 (AMD EPYC9554P), crypto application baseline `2532e0de`. Exact parent command sequence is `../../compile-issues.sh`; it completed successfully. The script uses ordinary `go test -c` for asm binaries, **not -N/-l**. The functions themselves have `//go:noinline` so their ABI/call shape remains visible. Diagnostic compilation separately uses `-m=2 -d=ssa/check_bce/debug=1`. arm64 is cross-compiled with `GOARCH=arm64 CGO_ENABLED=0`, not executed on arm64 hardware.

Parent results: `evidence/tests.txt` PASS; `evidence/{amd64,arm64}.asm`; escape/inlining diagnostics in `evidence/compiler.txt`. Independent tests cover output prefixes, growth, source/destination overlap in both directions, and exact aliasing. These test source semantics, not a compiler patch (none has been implemented).

Minimal example:

```go
//go:noinline
func Append32(dst []byte, src *[32]byte) []byte {
    return append(dst, src[:]...)
}
```

`repro.go` includes28-byte append, a provably fresh stack-local snapshot source, fixed copy, and working source alternatives.

## Actual codegen, verified

| Function | amd64 | arm64 |
|---|---|---|
| Append32 |CALL memmove at0x538223, with result-slice spills/reloads |FLDPQ at0x12de64 and FSTPQ at0x12de6c; no memmove|
| Append28 |CALL memmove0x5382e3 |two FMOVQ loads at offsets0/12, then two stores0x12def8–0x12df04; no memmove|
| Local32 |materializes fresh stack32-byte snapshot, then CALL memmove0x5383b7 |snapshot plus inline FLDPQ/FSTPQ append; no memmove|
| Copy32 |CALL memmove0x5385e0 |leaf function, FLDPQ/FSTPQ0x12e140–0x12e144 after nil/identity checks|
| Scalar32 |**working no-memmove variant**: four64-bit loads0x538517–0x538522, four stores0x538564–0x538573 |two LDPs/four64-bit values then stores; no memmove|
| Array32 |no memmove, BUT two redundant-looking16-byte zero stores and two bounds checks survive before assignment |same drawback: two STP-zero instructions and two bounds checks survive|

Scalar32's source spells out32 append byte operands; the compiler merges them into four64-bit loads/stores, not32 byte stores. On its no-growth path all source loads occur before destination stores and there are no memmove-induced result-slice spills. Only its growth path spills/reloads the four loaded values. This demonstrates a working existing-source lowering, although the verbose spelling is not a proposed crypto cleanup. Array32 is NOT an equally clean positive control: replacing CALL with zeroing/bounds work need not help.

## Exact mechanically equivalent target

An amd64 inline32-byte copy may use the already-demonstrated four64-bit-load/four-store pattern, or two16-byte loads followed by two16-byte stores:

```
MOVUPS  0(src), X0
MOVUPS 16(src), X1
MOVUPS X0,  0(dst)
MOVUPS X1, 16(dst)
```

28 bytes uses offsets0 and12. All loaded bytes are within the exact requested range. Preserve existing nil checks and append's growth/length-overflow handling. Keep result slice registers live instead of three stores/reloads around memmove.

## Proof versus remaining compiler work

**Proved semantically:** snapshot all source bytes before any destination store and write those values to destination. This works for arbitrary relative overlap, including exact alias. For28 bytes the overlapping source-load ranges0..15 and12..27 cover exactly28 bytes; the overlapping destination writes agree on their common bytes. Thus this improvement does not require proving source/destination disjointness.

**Also provable for Local32:** the fresh local snapshot is not exposed, so an incoming slice or newly allocated append result cannot point into it in safe Go. The caller's original input may overlap src, but the local snapshot has already captured it.

**Remaining implementation obligation:** existing amd64 LoweredMove can interleave loads/stores. Raising `isInlinableMemmove`'s size threshold without changing lowering is unsafe for generic overlap. Maintain nil-panic behavior—including `Copy32(nil,nil)`; pointer equality must not bypass required nil checks. Preserve growth behavior and handle all eligible alignments/sizes, not only this test's selected overlaps.

**Causal evidence, not complete pass diagnosis:** `walk/assign.go` lowers byte append to memmove; SSA constant-call rewriting gates on `ssa.IsInlinableMemmove`. `ssa/rewrite.go` allows amd64<=16 without disjointness versus arm64<=64. `Disjoint1` has limited phi/dynamic-offset reasoning. The observed architecture contrast matches those gates. No SSA trace yet identifies the exact failed Local32 alias predicate; do not state that as proven. This is not a helper inlining-budget failure: diagnostics explicitly show requested noinline functions and ordinary backend optimization.

## Real application and exact sampled budget

Real SHA256.Sum has the same fixed append from a fresh [32]byte local, with memmove at0x638f8e in the parent baseline binary. Warm public HMAC-SHA256/32 calls it twice. Parent profile's append line208:390ms cumulative /9.74s=**4.00%** of complete operation, including330ms=**3.39%** callees and60ms own instructions. Total memmove14.17% includes input/padding/checkpoint copies and is not this issue's budget. See `../hash-sum-return-buffer/ATTRIBUTION.md`. A sampled region budget is not a promised attainable gain.

## Full-operation results: no new MAC speed claim

Parent paired12-sample public-HMAC array-assignment source probe: native SHA256/32 warm158.5→148.7ns, **statistically unresolved p=0.092**; cold p=0.410. Public SHA256/32 array probe78.47→80.13ns, unresolved p=0.514. The probe retains zero/bounds work as shown above. Do not advertise the raw median difference or geomean as a speedup.

`evidence/bench.txt` contains five100ms runs of the REAL unmodified public warm HMAC benchmark (157.5–187.6ns, zero allocations), not comparative Append32/Scalar32 helper timing. There is no measured standalone copy-helper speedup in these artifacts. The deliverable is the confirmed compiler-codegen opportunity and working codegen control, not a MAC optimization claim.

## Filing classification

**Ready as a codegen optimization issue:** minimal reproducer, passing semantic tests, amd64 miss, already-good arm64 control, working scalar-source amd64 lowering, profile relevance and bounded opportunity are attached. Still needed for an implementation: correct overlap-safe lowering (or improved alias proof for a narrower subset), compiler regression tests including nils/alignment/overlap, and proper comparative performance validation. No compiler patch or regression proof is claimed.

## Related work and filing route (verified September 27, 2026)

Inlining fixed-size memmove is established compiler work, not a new optimization
class. [#41662](https://github.com/golang/go/issues/41662), “cmd/compile: missed
opportunity to inline runtime.memmove,” is closed/completed (May 12, 2021); its
8-byte copy concerned a size becoming constant too late for generic rewriting,
with arch-specific inlining discussed as the fix. This report instead isolates
28/32-byte potentially overlapping copies and an amd64/arm64 threshold/lowering
difference. [#54467](https://github.com/golang/go/issues/54467), “cmd/compile:
miscompilation of partially-overlapping array assignments,” is closed/completed
and is directly relevant correctness history: replacing overlap-safe copying
with interleaved loads/stores is not valid. Neither issue establishes that the
present 28/32-byte optimization is already fixed. No exact still-open tracker was
found in this review; a narrowly titled follow-up referencing these issues is
reasonable, not a rediscovery claim for small-copy inlining generally. Keep the
fresh-local alias-proof opportunity distinct from general overlap-safe lowering.
See `../PRIOR-ART.md` for verified status and search limitations.
