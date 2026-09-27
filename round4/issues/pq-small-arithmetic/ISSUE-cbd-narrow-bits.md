# Draft: cmd/compile: avoid truncation after provably nonoverflowing narrow bit sums

**Ready for compiler-team review; not filed. Evidence collected September 27, 2026.**

## Environment

Go 1.28-devel, compiler source pinned to **2ff5743d9fd52fac166225e75df0c2c1edf82abb**. Linux/amd64, AMD EPYC 9554P; arm64 cross-compiled with the same compiler, not executed on arm64. Normal optimizing `go test -c` builds, no `-N`/`-l`. Exact parent commands are in `../../compile-issues.sh`; actual linked code is saved in `evidence/{amd64,arm64}.asm`.

## Reproducer

These functions already exist, under the same names, in the tested `repro.go`:

```go
package pqhelpers

//go:noinline
func BitPairOriginal(b byte) uint16 {
    return uint16((b & 1) + (b >> 1 & 1))
}

//go:noinline
func BitPairWide(b byte) uint16 {
    return uint16(b&1) + uint16(b>>1&1)
}
```

They are exactly equivalent for **every possible byte input**, without any crypto-specific precondition: each addend is 0 or 1, so the sum is 0, 1 or 2 and cannot overflow uint8. Widening before the addition therefore preserves the exact value. No memory/aliasing concern, secret branch, lookup or changed constant-time assumption is involved.

## Actual machine code

In the saved amd64 linked binary, Original at **0x535780** ends:

```
MOVL AX, CX
ANDL $1, AX
SHRL $1, CL       // objdump spelling; byte operand, bytes d0 e9
ANDL $1, CX
ADDL AX, CX
MOVZX CL, AX      // redundant narrowing after a sum known <=2
RET
```

Wide at **0x5357a0** has the same extraction operations, but finishes `ADDL CX, AX; RET`, without the final MOVZX. In this particular machine sequence the preceding ANDL instructions define the entire 32-bit operands, so the upper bits are actually clear, not merely unspecified SSA high bits.

The arm64 difference is equally direct:

```
// Original, 0x12b850:
AND $1, R0, R1
UBFX $1, R0, $1, R2
ADD R2, R1, R1
UBFX $0, R1, $8, R0  // redundant truncation
RET

// Wide, 0x12b870:
AND $1, R0, R1
UBFX $1, R0, $1, R2
ADD R2, R1, R0
RET
```

The larger `BitsOriginal`/`BitsWide` reproducer computes four such bit sums. Original has **four post-add MOVZX-byte instructions on amd64 and four post-add UBFX-8 instructions on arm64**; Wide has none. On amd64 Wide adds one initial byte extension and uses 16-bit shifts rather than 8-bit shifts, so its total benefit should not be reported as simply “four fewer instructions” without accounting for those other differences. Both versions are branchless on both inspected architectures.

## Real workload and measured significance

This shape occurs in ML-KEM `samplePolyCBD`, where four byte-typed bit sums are converted to uint16 field elements. In the fresh stacked baseline **db19b48d27dde1bb6c7c2c144ba3099536382374**, the same four extensions are present in actual public-operation code, not merely this isolated repro: `../../profiles/mlkem-hot.asm`, 0x5d1d63/6a/70/75. The tiny source workaround widens the sampled byte to uint16 before bit extraction; it does not alter the sampler algorithm, PRF consumption or canonical subtraction.

Public profile exposure: samplePolyCBD is **5.78% flat / 17.23% cumulative** in ML-KEM-768 EncapsWarm and **3.64% / 13.26%** in DecapsWarm. The cumulative totals include SHAKE and field arithmetic and are not entirely removable.

Parent's 12 paired public-operation samples (`../../bench/mlkem-cbd-stat.txt`) mostly **do not resolve a change**. ML-KEM-1024 EncapsWarm alone reports 44.17µs → 42.67µs, **−3.41%, p=0.045, n=12**. This isolated borderline result among several comparisons is **not a broad or robust end-to-end speedup claim**; B/op and allocations are unchanged. The issue stands on the reproducible unnecessary instructions.

Five short noinline helper samples (`evidence/bench.txt`) have medians 2.570ns Original and 2.466ns Wide, with visibly overlapping samples. Treat these only as diagnostics, not a statistically established API gain.

An independent fixed confirmation run (16 pairs, 400ms per case) did **not**
confirm the isolated ML-KEM-1024 result: 43.29→43.08µs, p=.780. All four
768/1024 encapsulation/decapsulation comparisons were unresolved
(`../../bench/confirmation/mlkem-cbd-stat.txt`). The source patch is not selected;
the reproducible unnecessary instructions remain the basis for this issue.

## Compiler investigation scope

Primary source already contains the needed interval machinery: `ssacompile/prove.go:1436,1486` propagates extension/addition ranges, and `ssa/prove.go:306` (`Limit.Add`) can represent [0,1]+[0,1] => [0,2]. Thus the hypothesis is **not missing basic interval addition**. `_gen/AMD64.rules:145–149` lowers zero extensions to MOVBQZX/MOVWQZX; the inspected mask-folding rules around :1003 do not cover this bounded add.

Candidate fix classes: promote a provably nonoverflowing narrow add before lowering, or eliminate the machine extension where the actual producer operands are known to have clear upper bits. Do not delete extensions solely because a narrow SSA value has a small range: machine upper bits can be undefined. No SSA dump identifying one definitive responsible pass was collected, so this is an investigation direction rather than a diagnosed patch.

## Reproduction and validation

The existing module compiles without external dependencies. `go test -count=1 ./...` **passed** (`evidence/tests.txt`), including exhaustive all-256-byte comparison with an independent bit-count oracle. Parent's production patch test log also passes internal/public ML-KEM tests, including the added all-byte and PRF-consumption tests: `../../tests/mlkem-cbd-widen-byte.log`.

From this directory, using the pinned Go executable:

```
go test -count=1 ./...
go test -c -o /tmp/pq-small.test
go tool objdump -s 'BitPair|BitsOriginal|BitsWide' /tmp/pq-small.test
GOARCH=arm64 CGO_ENABLED=0 go test -c -o /tmp/pq-small-arm64.test
go tool objdump -s 'BitPair|BitsOriginal|BitsWide' /tmp/pq-small-arm64.test
```

These snippets can also be compiled directly with `go tool compile -S`. The full module uses noinline functions referenced by tests to preserve call shape and prevent linker elimination. **No arm64 timing or runtime test is claimed.** This is distinct from prior issue #76056 (conditional subtraction); no new CMOV/borrow novelty claim is involved.

## Related work and filing route (verified September 27, 2026)

Open [#27572](https://github.com/golang/go/issues/27572), “cmd/compile: eliminate
unnecessary extend-of-truncate calculations in prove pass,” already proposes
using bounds to eliminate narrowing followed by widening, and explicitly asks
for more variants and useful occurrences. Its example is an explicit
uint64→uint32→uint64 cast chain, not this narrow-add producer, so this is a useful
additional case rather than proof of an identical SSA graph. Open
[#36897](https://github.com/golang/go/issues/36897), “cmd/compile: possible latent
codegen issue on amd64 removing zero extensions,” explains why relying on
machine upper bits requires care. Closed/completed
[#42162](https://github.com/golang/go/issues/42162) addresses arm64 extension and
bitfield rewrite interactions, not this particular bounded sum. Recommend
augmenting #27572 first with the exhaustive bit-pair case, amd64/arm64 evidence
and real ML-KEM occurrence; do not present redundant-extension elimination as a
new optimization class. A separate narrow-add issue is appropriate only if
maintainers want a distinct lowering track. See `../PRIOR-ART.md`.
