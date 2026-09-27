# cmd/compile: P-384 Square slower than the same Mul body with equal inputs (amd64)

Standalone compiler diagnostic, not a new crypto optimization. No internal Go,
crypto-specific intrinsic, assembly, unsafe, or nonstandard dependency is used.
The arithmetic uses ordinary `math/bits` compiler intrinsics. This is **not** a
request for a P-384 compiler intrinsic.

## Status: validated, including the small follow-up

**Final filing draft: `ISSUE-DRAFT.md`.** Parent-run `small-carry/` now provides
an18-line independent-chain reproducer: commuting `ca+cb` into `cb+ca` replays one
ADD plus six ADCs. Tests pass; SSA shows duplication is introduced at flagalloc,
not regalloc, without multiplication/commoning of symmetric products. Three
bad/good source-order/dependency pairs agree. The worker inspected parent-produced
artifacts only; no new worker CPU lease was taken. No tiny-helper timing claim.

The larger P-384 context below remains useful; the small replay mechanism does
not by itself prove the full original latency cause.


Compiled, independently correctness-tested, benchmarked and SSA-dumped on
2026-09-27, CPU0/GOMAXPROCS1 under `/tmp/crypto-audit-cpu.lock`. No production
edits or public filing. Complete compact Square reproduces the known slowdown:
90.46 ns vs53.05 ns for Mul(x,x), descriptive medians of five150ms trials. Original
controls reproduce it too. The six-row242-line candidate gives75.44 vs44.87 ns.

SSA identifies an actionable issue in the reduced candidate: a commutative sum
of two carry bits is lowered with the *older* carry in FLAGS, so flagalloc
regenerates seven arithmetic instructions after the old flags are clobbered.
The general Mul variant saves the older carry as an integer and consumes the
newer/current flags instead. Across this reduced function the bad choice adds
four extra seven-instruction carry chains. The full original has the same total
carry regeneration in Square and Mul and fewer Square spills; its complete
latency mechanism is not yet proven by these dumps.

GOAMD64=v3 reverses only the isolated-helper ordering. Parent public A/B found
ECDSA reparse Verify unresolved (p=.713) and ECDH23.23% **slower** with generated
Square (p<.001). Static inspection proves the production/standalone helper cores
byte-identical: this is not package/type-induced arithmetic codegen variation.
**Do not blanket-gate the wrapper to Square at v3.** See
`evidence/production-v3/CONCLUSION.md`, the updated filing draft and
`../../square-issue.md`. No specific microarchitectural cause is claimed.

## Reproduce (from this directory, parent-coordinated CPU window only)

```
flock /tmp/crypto-audit-cpu.lock taskset -c 0 env \
  GOROOT=/home/exedev/go-crypto GOAMD64=v1 GOMAXPROCS=1 \
  /home/exedev/go-crypto/bin/go test -tags=original -run '^TestFull$' -v .
flock /tmp/crypto-audit-cpu.lock taskset -c 0 env \
  GOROOT=/home/exedev/go-crypto GOAMD64=v1 GOMAXPROCS=1 \
  /home/exedev/go-crypto/bin/go test -tags=original -run '^$' -bench '^BenchmarkFull$' \
  -benchtime=500ms -count=10 -cpu=1 .
```

For complete original-vs-compacted codegen, correctness, CSE interventions, SSA
dumps, GOAMD64=v3 diagnostic and six smaller prefix candidates:

```
flock /tmp/crypto-audit-cpu.lock taskset -c 0 env GOMAXPROCS=1 \
  GO=/home/exedev/go-crypto/bin/go GOROOT=/home/exedev/go-crypto ./triage.sh
```

This intentionally performs benchmarks **serially**. It is not a low-CPU script;
do not run concurrently with other timing. For another toolchain set both GO and
GOROOT. No external downloads or external filing. Go 1.24 or newer is needed for
`testing.B.Loop`. The audited compiler is built from upstream commit
`2ff5743d9fd52fac166225e75df0c2c1edf82abb` (Go 1.28 development); the local source
branch has additional crypto-only changes, HEAD
`2532e0de69344246565a94fc3de14fd4f982b361` at preparation.

## Files and minimization

* `compact.go`: two full arithmetic bodies, 265 lines each. Only adjoining
  standalone `var x uint64` declarations plus their defining assignment have
  become `:=`; arithmetic expressions and relative source statement ordering
  are retained. No arithmetic rounds or final reduction removed.
* `common.go`: array alias, carry type and original branchless selection helper.
* `square_test.go`: independent `math/big` Montgomery oracle, canonical boundary
  values, all bit/carry boundaries, deterministic random inputs, all output/input
  aliases, fuzz entrypoint, dependent and independent-input benchmarks. Direct
  calls and package sinks avoid dispatch or unused-result artifacts.
* `raw.go`, `raw_test.go` (`-tags=original`): complete original generated bodies,
  only function names changed and `//go:noinline` added. These test whether
  shortening source perturbs the codegen phenomenon.
* `prefix.go`, `prefix_test.go` (`-tags=probes`): 1–6 intact Montgomery rows, without
  final canonical reduction. These are **not full field operations**. Tests use
  an independent exact-integer row recurrence, including the seventh limb.
  Benchmarks use fixed canonical inputs and distinct output (throughput shape,
  not the full benchmark's in-place dependency chain). A fast prefix alone does
  not prove that full Square is fixed. Promote the smallest prefix only if the
  same codegen distinction and performance inversion survives.
* `generate.py`, `make_probe_tests.py`: source extraction and candidate-generation
  audit trail, no build. Input `p384_fiat64.go` is optional argument to generate.py;
  generated Go files are checked in and require no local source to reproduce.
* `evidence/prior-*.asm`: original parent-built production helper assembly.
* `triage.sh`, `summarize.py`: controlled experiments and textual summary of dumps.

The full functions require inputs strictly less than
`p = 2^384 - 2^128 - 2^96 + 2^32 - 1`. For arbitrary raw canonical limbs their
output is `a*b*2^-384 mod p` (Montgomery multiplication). Every input load precedes
all six output stores. Neither arithmetic body branches on inputs; aliasing is
supported. Tests use an independent modular inverse and do not merely compare two
copies of the same algorithm.

## Established original-code observations

On AMD EPYC 9554P/linux-amd64, prior parent helper measurements were Square
84.67–96.38 ns/op versus Mul(x,x) 54.74–57.34 ns/op. Prior public ECDSA P-384 Verify
profile attributed 18.97% flat / 20.23% cumulative to generated Square. The
production amd64 wrapper already routes Square to Mul; this work does not claim
the performance improvement again.

The original generated `Mul` body with `arg2` replaced by `arg1` is byte-for-byte
identical to `Square`. Both contain 78 source `bits.Mul64` and 137 `bits.Add64`
calls. No square-specific mathematical algorithm is involved.

Original GNU-objdump assembly counts (including prologue and stack-growth slow path;
Go objdump splits some NOPs differently and counts four more instructions):

| Function | text bytes | frame subtraction | instructions | MUL | ADC | rsp-memory instructions |
|---|---:|---:|---:|---:|---:|---:|
| Mul | 4665 | 1488 | 827 | 66 | 161 | 419 |
| Square | 4203 | 1256 | 752 | 51 | 161 | 377 |

**Square is slower despite fewer multiplies, instructions and stack accesses.**
The evidence contradicts the simple diagnosis “Square spills more.” The 15
removed multiplies match the 15 duplicate unordered cross-products for six
limbs, and the saved SSA dumps locate their elimination in generic CSE. Static counts
alone do not establish an instruction-scheduling or microarchitectural cause.

## Expected vs actual instruction behavior

For the reduced candidate, the better instruction pattern is demonstrated by
Prefix6Mul: save the first carry with SETB/MOVZX, then ADCQ using the later carry
flags. Prefix6Square instead saves the later carry and replays the first carry
chain. `../../square-issue.md` shows the exact before/after flagalloc SSA.


The working comparison is the existing `Mul(out,x,x)` call: more MULQ and a
larger frame, but faster on the measured CPU. A more specialized input graph
should not cause such a latency regression. There is no demonstrated optimal
instruction sequence, nor a claim that fewer static instructions must be faster.
Compare scheduling, generated carry dependencies and spills, not just MUL count.

A separate visible missed lowering in the old assembly is `_, q =
bits.Mul64(t, 0x100000001)` still using full `MULQ` with fixed AX/DX and flag
clobber. Ordinary `q = t * 0x100000001` (or `q = t + t<<32`) has the exact required
low-half semantics and could avoid the discarded high half. This occurs in
**both** helpers: it is not by itself an explanation of their timing gap and
has not been benchmarked as a fix here.

## Compiler evidence collected

The exact local compiler implementation places actual passes in
`cmd/compile/internal/ssacompile`, not the historical `ssa` directory:

* `ssacompile/cse.go`: canonicalizes commutative argument order while partitioning
  equivalent values. `ssa/_gen/genericOps.go` marks `Mul64uhilo` commutative.
* `ssacompile/schedule.go`: heuristic priority queue, using source position after
  category/in-block-use priority; flag consumers prioritized, generators late.
  This is why “cosmetic” source compaction must itself be checked.
* `ssacompile/flagalloc.go`: restores unavailable flags by recursively recomputing
  flag-generating expressions. Both original assemblies visibly repeat carry
  chains after multiply-clobbered flags; compare schedule vs flagalloc dumps to
  attribute these repetitions.
* `ssa/regalloc.go`: greedy allocation, farthest-next-use eviction. Compare
  actual StoreReg/LoadReg nodes, not frame size alone.
* `ssa/_gen/AMD64.rules`: `Mul64uhilo` lowers to `MULQU2` at GOAMD64<v3 and `MULXQ`
  at v3+. `AMD64Ops.go` makes the former AX/DX constrained and flag-clobbering,
  whereas MULXQ preserves flags. v3 is a diagnostic, not a baseline-v1 fix.

The script saves before/after generic CSE, after lowered CSE, schedule, flagalloc,
and regalloc for both original and compact bodies. The three CSE-disable modes
are causal probes, not production proposals. If disabling a pass makes Square
faster, still inspect the changed graph/schedule; multiple simultaneous effects
mean timing alone cannot identify register pressure as the mechanism.
