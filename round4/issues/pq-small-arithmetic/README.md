# PQ small-arithmetic compiler issues — finalized evidence

**September 27, 2026. Drafts prepared, not filed.** Parent completed compilation, tests, cross-architecture disassembly and paired public-operation measurements. This README supersedes earlier “uncompiled/unrun” status notes; this agent only read evidence and edited reports during the CPU lock.

## Primary deliverables

1. **`ISSUE-cbd-narrow-bits.md`** — removing redundant truncation after a provably nonoverflowing byte bit-sum. Full-domain two-function reproduction; actual amd64 MOVZX and arm64 UBFX disappear in a semantically equivalent working variant. Four-sum production-related reproduction confirms the same shape. No crypto range precondition needed.
2. **`ISSUE-bounded-mul-div.md`** — exact constant factor cancellation when explicit masks/types prove no intermediate overflow. Actual masked amd64 6→2 and arm64 8→4 non-return instructions; power-of-two and wider-type controls; explicit overflowing negative control. Clearly separates ML-DSA's source invariant from the standalone legal compiler fold.

`repro.go` / `repro_test.go`, `subtraction.go` / `subtraction_test.go`, and `go.mod` form the tested, compile-ready module. No external module dependencies. No issues have been filed externally.

## Recorded evidence

| Artifact | What it establishes |
|---|---|
| `evidence/tests.txt` | Standalone tests PASS, including exhaustive byte-domain comparisons and overflowing negative controls |
| `evidence/amd64.asm` | Actual optimized linked linux/amd64 instructions |
| `evidence/arm64.asm` | Actual optimized linked arm64 cross-build instructions; **not** runtime validation |
| `evidence/compiler.txt` | `-m=2 -d=ssa/check_bce/debug=1` diagnostics, not a per-pass SSA dump |
| `evidence/bench.txt` | Five short noinline helper timing samples; diagnostic only |
| `../../compile-issues.sh` | Exact parent commands and flags |
| `../../tests/{mldsa-decompose-group-constants,mlkem-cbd-widen-byte}.log` | Passing production internal/public package suites, with supplied round4 tests installed |
| `../../bench/{mldsa-decompose,mlkem-cbd}-stat.txt` | Twelve paired whole-operation samples per configuration |

Compiler source: **2ff5743d9fd52fac166225e75df0c2c1edf82abb**, Go 1.28-devel. Standalone probes built by `/home/exedev/go-crypto/bin/go`; production PQ baseline **db19b48d27dde1bb6c7c2c144ba3099536382374** in `/home/exedev/go-pq-stack`, using the shared built compiler. Host: AMD EPYC 9554P. No `-N`/`-l`; noinline probe annotations preserve helper call shapes. arm64 build uses `GOARCH=arm64 CGO_ENABLED=0`.

## Outcome: codegen findings, not a large API-win claim

**Independent confirmation:** the fixed 16-pair, 400ms follow-up did not resolve
a gain for either production candidate. ML-KEM-1024 EncapsWarm was
43.29→43.08µs, p=.780; all four 768/1024 encapsulation/decapsulation cells were
unresolved. ML-DSA44 parse+Verify was 67.93→67.34µs, p=.184; all four 44/65
sign/verify cells were unresolved. See `../../bench/confirmation/*-stat.txt`.
The earlier isolated nominal CBD result below did not confirm. Neither PQ
source patch is selected; the compiler codegen findings remain valid.

* **CBD:** fresh public profile shows real hot exposure. Paired operation timings mostly unresolved; isolated ML-KEM-1024 EncapsWarm **−3.41%, p=0.045, n=12** is borderline among multiple comparisons. Do not generalize it to ML-KEM overall. B/op and allocations unchanged.
* **Decompose grouping:** real unnecessary instructions and complete semantic proof. No statistically resolved public Sign/parse+Verify change across 44/65/87. Do not advertise the favorable directions or −2.70% geomean as established gains.
* **Direct fieldSub:** source-range experiment only, not one of the two primary compiler drafts. Standalone amd64 direct helper needs two input zero-extensions and an extra register move, so the proposed shorter inlined sequence is **not** a universal noinline win. arm64 original/direct both have six arithmetic/select instructions plus NOP/RET. Guarded/masked original controls still retain intermediate normalization, but no paired whole-operation result resolves a benefit. See `../../pq.md` for proof and #76056 caveat.
* **FromMontgomery correction removal:** valid source invariant a<q, not a compiler bug; paired public timings unresolved. Do not claim the hot generic Montgomery reducer itself became cheaper.

## Reproduce on an explicitly chosen pinned toolchain

```
go test -count=1 ./...
go test -c -o /tmp/pq-small.test
go tool objdump -s 'BitPair|BitsOriginal|BitsWide|Scale(88|32)|Sub16' /tmp/pq-small.test
GOARCH=arm64 CGO_ENABLED=0 go test -c -o /tmp/pq-small-arm64.test
go tool objdump -s 'BitPair|BitsOriginal|BitsWide|Scale(88|32)|Sub16' /tmp/pq-small-arm64.test
```

The dependency-free `repro.go` can also be compiled directly with `go tool compile -S`; `subtraction.go` imports crypto/subtle and should be compiled with the Go build driver. Save assembly listings outside the package or use `.asm` suffix, not `.s`, to avoid treating listings as assembler inputs.

## Related work / filing limits

Parent's `../76056.json` documents **Go #76056 “cmd/compile: optimize conditional subtractions”**, closed May 15, 2026, updated May 16, Go1.27 milestone. Its q=8380417/Sub32/borrow/Select examples make generic conditional-subtraction optimization prior work. Do not file the baseline canonical CMOV change or describe direct fieldSub as novel generic compiler work. Exact closing-fix scope was not verified from this body/status snapshot. The two primary drafts concern distinct bounded-byte widening and exact bounded multiply/divide opportunities. Both identify possible compiler-pass locations from primary local source without pretending a per-pass SSA diagnosis has been performed.
