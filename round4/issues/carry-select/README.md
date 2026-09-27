# carry/select compiler reductions (27 September 2026)

**Parent validation completed:** ordinary, race, and GOAMD64=v3 tests PASS;
amd64 and arm64 variants inspected.
See `ISSUE-DRAFT.md` and the final section of `../../carry.md`. Whole-RSA results
do not support selecting either production patch. The initially incorrect
objdump symbol filter has been corrected: `evidence/amd64.asm` and `arm64.asm`
are populated. ARM64 already uses SUBS/NGC for the negated-borrow case.
It was cross-built, not executed on ARM64 hardware.

**Original preparation status (superseded above):** this agent did not build,
test, or time these files; parent subsequently did. See `../../carry.md` for primary actual
assembly, profile attribution, exact scope, limitations, and compiler suspects.

Target toolchain supplied by parent: Go go1.28-devel, upstream
`2ff5743d9fd52fac166225e75df0c2c1edf82abb`; GOROOT `/home/exedev/go-crypto`.
Production baseline `2532e0de69344246565a94fc3de14fd4f982b361`.

## Files / status

* `repro.go`: dual-borrow equality vs XOR-borrow, negative borrow vs borrow
  subtraction, mask assign vs public constant-time intrinsic, loop/unrolled carry.
* `schedule.go`: the parent-built reduction reproduces all 15 products before
  the first ADD/ADC and intermediate spills. The noinline barrier control did
  not demonstrate a timing improvement; this remains a scheduling lead.
* `repro_test.go`: independent numeric / math/big / alias / bounds tests and sinked
  statistical benchmark kernels. Barrier variant is only a diagnostic, not an
  endorsed production strategy or proven better assembler.
* `*-amd64.asm`: GNU objdump of parent's fresh round4 baseline test binaries.
  Those files describe production; `evidence/` contains the compiled reductions.

## Reproduction commands

From this directory, in a CPU-clear window:

```
export GOROOT=/home/exedev/go-crypto
export PATH="$GOROOT/bin:$PATH"
GOMAXPROCS=1 go test -count=1
GOMAXPROCS=1 GOARCH=amd64 GOAMD64=v1 go test -c -o repro-amd64.test
GOMAXPROCS=1 GOARCH=arm64 go test -c -o repro-arm64.test
GOMAXPROCS=1 go test -c -gcflags='-m=2 -d=ssa/check_bce/debug=1' 2>compile.log
GOMAXPROCS=1 GOSSAFUNC=DotSchedule go test -c
GOMAXPROCS=1 GOSSAFUNC=NegBorrow go test -c
GOAMD64=v1 go tool objdump -s 'carryselect\.(Eq|NegBorrow|Assign|Sub|Dot)' repro-amd64.test > repro-amd64.asm
GOARCH=arm64 go tool objdump -s 'carryselect\.(Eq|NegBorrow|Assign|Sub|Dot)' repro-arm64.test > repro-arm64.asm
```

Also inspect GOAMD64=v3 (MULX path) separately; never mix different ISA settings
in a paired comparison. On amd64, run native tests and a separate 386 execution
control; arm64 needs runtime testing on actual hardware, not just cross-build.

Statistical screening: pinned core, GOMAXPROCS=1, no profiles/builds concurrently,
at least 12 matched pairs, alternate order each pair, `-test.run=^$`,
`-test.benchtime=500ms`, `-test.cpu=1`, `-test.count=1`. Run one subcase per process,
e.g. `-test.bench='^BenchmarkAssign$/^Mask$'` and corresponding `/^Select$`.
Save ALL samples and report benchstat confidence, not one best number. Indirect
calls in benchmarks are symmetric overhead and can obscure tiny differences;
inspect direct production callers before extrapolating. Equality inputs include
both equal/unequal; assign alternates conditions. No secret-dependent dispatch.

Production qualification separately: apply EACH patch in `../../patches/` alone,
copy `../../tests/carry_round4_test.go` into bigmod only when authorized, build
parent's full-operation RSA benchmark A/B binaries, then pair
`BenchmarkRound3PrecomputedRSASign`. Run bigmod and RSA suites, `purego`, FIPS-on,
frozen-FIPS public RSA compatibility, and native 32-bit. Keep wide-RR baseline.
No caches, no new exponentiation/multiplication algorithm, no kernel reuse.

## Prior art / issue scope

Go issue 76056 (parent-saved `../76056.json`, closed May 15, 2026) already covers
conditional subtraction and bits borrow/carry feeding constant-time selection.
Do NOT file these artifacts as discovery of the general borrow/select class.
AssignSelect is an application of existing support. NegBorrow's negative-mask
peephole and dual-borrow equality are only specific residual candidates; check
that issue's comments/linked changes and other existing issues before claiming
novelty. Both standalone patterns have been compiled and tested; this alone
does not establish novelty or application benefit.
