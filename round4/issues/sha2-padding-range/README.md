# Draft compiler/source lead: branch-correlated SHA2 padding range not proved

**Final status:** parent standalone normal tests and race tests PASS (`evidence/tests.txt`, `evidence/race.txt`). Saved optimized amd64 and cross-compiled arm64 codegen verifies that the mask expressions remove the two bounds checks and select/pointer-mask machinery; actual production amd64 `../../production-asm/hash-distance.asm` confirms this too. No worker CPU execution. Arm64 hardware execution/performance is not established.

Compiler SHA `2ff5743d9fd52fac166225e75df0c2c1edf82abb`, crypto `2532e0de`, go1.28-devel. Whole-HMAC padding-distance experiment remains statistically unresolved; no padding-only speed claim or regression claim. This is secondary range-proof documentation, **not the main selected issue/source change**, and not the previously tried direct-block-padding rewrite.

## Actual hot code and expected improvement

In SHA256.checkSum the current source computes `r = len % 64`; if r<56, `t=56-r`, else `t=120-r`. Thus t is always 1..64. The compiler emits a CMOV for the case split, but still keeps:

- `0x639046–0x63904a`: compare t+8 against 72, branch to panicBounds;
- `0x639050–0x639053`: compare t against t+8, branch to panicBounds;
- `0x639065–0x63906d`: LEA/SAR/AND pointer masking for slice indexing.

Saved full actual code in `../hash-sum-return-buffer/sha256-checksum.before.amd64.asm`; SHA512 has analogous two bounds branches at `0x642540`/`0x642551`, and analogous pointer masking. The BE length store is already correctly reduced to BSWAP+MOV. This is a range-proof opportunity, NOT an endian-conversion failure.

The tested source equivalent exposing a simple unsigned range is:

```
// SHA256, t in [1,64]
t := ((55 - len) & 63) + 1
// SHA512, t in [1,128]
t := ((111 - len) & 127) + 1
```

Unsigned subtraction intentionally wraps. Since block sizes divide 2^64, the modular-distance identity holds for every uint64 accumulated byte length, including overflow; no extra invariant about the digest is required. For SHA256 residues 0..55 this is 56-r; residues 56..63 give 120-r. SHA512 analogously splits at112. This is the smallest positive number of bytes advancing to the trailer boundary.

Expected instruction shape (now verified by actual production code below), aside from tmp zeroing and length encoding:

```
MOV $55, DX
SUB n, DX
AND $63, DX        # bounded 0..63
LEA 9(DX), CX      # pad slice length 9..72
# store BSWAP(n<<3) at tmp+1+DX, no bounds panic or pointer mask
# pass tmp, CX, cap72 to unchanged Write
```

No crypto compression/padding output/Write logic changes. Source patch: `../../patches/sha2-padding-bounded-distance.patch`. The compiler obtains the desired code, but the source probe has not established a whole-operation gain and is not selected. The companion compiler issue would be inadequate range refinement through the conditional subtraction/CMOV. Inspect authorized SSA snapshots of `prove` before claiming exactly which pass lost branch correlation. Do not conflate this with the previous CMOV/CSEL arithmetic candidate owned elsewhere.

## Cost and semantics

Parent fresh HMAC-SHA256/32 warm profile: checkSum is **8.52% flat**, entire operation 154.2 ns in profiling row. Deleting ALL own checkSum instructions is an absurdly loose **13.1 ns / 8.52%** time ceiling; this change removes only a handful, twice per operation. No predicted gain. This is distinct from output zeroing but targets the same function bucket; **do not add ceilings**.

No secret-dependent branch, service-indicator/API/custom-hash changes, or checkpoint cache. Preserve SHA224/384/512 truncated variants. Sum receiver immutability is unaffected. Parent should use the real full HMAC benchmark in the sibling module for faithful cost; the minimal padding package has independent semantic tests but intentionally NO toy timing benchmark. Test boundaries 55/56/63/64 and111/112/127/128, fragmented Writes, marshal/unmarshal, near uint64 wrap, purego and FIPS.

## Reproduction commands (parent already supplied evidence; no new execution required)

```
GOROOT=/home/exedev/go-crypto /home/exedev/go-crypto/bin/go test -count=1 .
GOROOT=/home/exedev/go-crypto /home/exedev/go-crypto/bin/go test -c -o repro.amd64.test .
/home/exedev/go-crypto/bin/go tool objdump -s 'paddingrange\.(Branch256|Mask256|Branch512|Mask512)$' repro.amd64.test
GOROOT=/home/exedev/go-crypto GOARCH=arm64 /home/exedev/go-crypto/bin/go test -c -o repro.arm64.test .
# For proof diagnostics, after clearance:
GOROOT=/home/exedev/go-crypto /home/exedev/go-crypto/bin/go test -c -gcflags='-m=2 -d=ssa/check_bce/debug=1' -o repro.bce.test .
```

Inspect production SHA256/SHA512 code after source patch too: reduced tuple return signatures aren't an ABI-cost surrogate for the actual finalizer.


## Actual codegen and test observations

- **amd64 reduced Branch256:** panicBounds calls at0x5354cd/0x5354d7. Mask256 has only bounded arithmetic (AND63 at0x535509), with no panicBounds call, conditional distance select, or slice-pointer mask. Branch512 has panicBounds at0x5355d1/0x5355e0; Mask512 removes both, AND127 at0x535640.
- **arm64 reduced Branch256:** CSEL at0x12b620 and bounds calls0x12b65c/0x12b664; Mask256 replaces them with SUB/AND at0x12b6a4/0x12b6a8 and direct bounded address arithmetic. Branch512 CSEL0x12b730 and bounds calls0x12b770/0x12b778 disappear in Mask512 (SUB/AND0x12b7d4/0x12b7d8).
- **Actual production SHA256 checkSum:** in `../../production-asm/hash-distance.asm`, line217 LEA/NEG/AND at0x63902e–0x639035; line221 pad length LEA9 at0x63903c; BE length stores directly at0x639045; unchanged Write call0x639052. No padding panicBounds paths remain. SHA512 checkSum likewise has bounded AND127 at0x6424e4 and no padding panicBounds. Unrelated SHA512.Sum output-size checks remain and must not be counted as padding failures.
- Independent oracle covers all residues via boundary walking, near uint64 wrap and intermediate large lengths. Parent normal/race runs PASS. No nil/alias shortcut or unsafe code is involved.
- Whole-HMAC native SHA256/32 warm padding-distance result157.0→154.6ns,p=0.843,n=12 remains unresolved (`../../bench/hmac-distance-stat.txt`); SHA512 warm p=0.977 unresolved. The later independently confirmed outparam gain is a DIFFERENT source variant and cannot be credited to this padding expression.

This is a confirmed source/codegen range-proof example with unmet whole-operation performance bar, retained as a secondary compiler diagnostic. Exact phase-level loss of branch correlation remains a hypothesis without SSA trace; avoid overstating a new standalone compiler discovery or repeating prior direct-padding optimization claims.
