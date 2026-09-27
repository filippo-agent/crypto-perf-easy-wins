# Authorized experiment, September 27, 2026

Parent granted an exclusive five-minute CPU window at 17:27:54 UTC. All builds,
tests, dumps, disassembly and benchmarks were executed under:

```
flock /tmp/crypto-audit-cpu.lock taskset -c 0 env GOMAXPROCS=1 \
  /home/exedev/crypto-audit/round4/issues/p384-square/triage.sh
```

Main script completed by 17:31:24 UTC. A second locked, CPU-0-pinned build saved
SSA and assembly for Prefix6Square/Prefix6Mul, finished by 17:32:12 UTC. CPU work
then stopped and the lock was released. The parent was notified. No production
changes, runtime profiles, perf counters, or compiler-source edits were made.

The five configurations are separate builds using package-scoped flags, not
whole-toolchain recompilations with globally disabled optimization. Modes:

* default: GOAMD64=v1, normal compiler passes.
* nogeneric: v1, `-d=ssa/generic_cse/off`.
* nolowered: v1, `-d=ssa/lowered_cse/off`.
* nocse: v1, both flags above.
* v3: GOAMD64=v3, normal compiler passes.

`TestFull` passed in every mode with original and compact functions present.
`TestPrefixes` and default compact `TestFull` passed with `-tags=probes`.
Fuzz entrypoint was prepared but not fuzzed; no race or arm64 execution.

Benchmarks are five serial 150ms trials per case, CPU 0/GOMAXPROCS 1. They show
large diagnostic differences, but have noisy samples (see bench.txt). Medians
are descriptive, not a significance claim or a new complete-operation gain.
Default full: Square 90.46 ns vs Mul 53.05 ns; independent input: 78.44 vs52.34.
Raw control: 85.37 vs57.71. v3 full: Square51.48 vsMul87.92. This reverses the
ordering and is important to the previously chosen unconditional-amd64 wrapper.
It does NOT on its own establish a public API v3 regression.

Go objdump counts 756/831 instructions for Square/Mul vs the prior GNU objdump
752/827: disassemblers split some multi-byte NOP encodings differently. MUL/ADC,
frames and stack-memory counts match the old codegen. Do not claim four added
instructions as a compiler difference.
