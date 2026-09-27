# Validated small amd64 carry-sum replay reproducer

**Parent compiled, independently correctness-tested, and captured SSA/assembly;
worker only inspected those existing artifacts. CPU lease remains closed.**
`TestCarry` passed. No tiny-helper timings were requested or collected in these
artifacts, so this is a codegen result, not a measured timing claim.

The small reproducer **succeeded**. These18-line functions (including noinline
pragma) reproduce the seven-instruction old-carry-chain replay seen in Prefix6:

| Function | Chain order | Carry sum | Replays a chain? | emitted ADDQ / ADCQ |
|---|---|---|---|---|
| IndependentAB | A,B | ca+cb | no |2/13|
| IndependentBA | A,B | cb+ca | **yes** |3/19|
| ReorderedAB | B,A | ca+cb | **yes** |3/19|
| ReorderedBA | B,A | cb+ca | no |2/13|
| DependentAB | A then dependent B | ca+cb | no |2/13|
| DependentBA | A then dependent B | cb+ca | **yes** |3/19|

**Filing draft:** `../ISSUE-DRAFT.md`. It includes the complete small function,
working source commutation, literal emitted assembly and exact SSA value IDs.
The problematic independent function grows from240 to256 frame bytes and from
16/16 to18/22 SSA StoreReg/LoadReg nodes compared with its commuted counterpart.
Duplication first appears at flagalloc, before general register allocation.

## Meaning and scope

Each function computes two seven-limb Add64 chains and retains all fourteen sums
plus the sum of their two carry bits. The four independent variants are exactly
equivalent for arbitrary uint64 inputs. This needs no multiplication, modular
arithmetic, cryptographic bounds, or elimination of symmetric cross-products.
Both independent source variants retain14 Add64carry nodes after generic CSE;
only final Add64 operand order differs. This is concrete evidence that multiply
CSE alone is not the underlying flag-replay mechanism.

The bad function saves the newer carry, then needs the overwritten older FLAGS.
Flagalloc recursively regenerates one ADD plus six ADCs. The good function saves
the earlier carry before clobber and consumes the later/current carry directly.

Dependent controls use A's highest sum limb in B's first addition and compute a
different function from the independent quartet; each is checked against its own
oracle. Their results show the same problem with an unavoidable chain ordering.

This is a validated small reproducer of the **flag-replay mechanism**, not proof
that the full original P-384 Square slowdown is entirely caused by it, and not
proof of absolute minimality. The larger original/Prefix6 evidence is retained.
The old preparation-only comment atop `carry.go` is historical; tested source is
left unchanged so saved source-position references remain valid.

## Files and parent commands

`carry.go` has the six candidates; `carry_test.go` uses an independent math/big
oracle covering carry combinations, boundaries, random inputs and aliases;
`bench_test.go` has optional direct-call benchmarks; `prepare.py` records source
generation. Parent-produced artifacts are in `evidence/v1/`.

During a parent-owned CPU window, from this directory:

```
flock /tmp/crypto-audit-cpu.lock taskset -c 0 env GOMAXPROCS=1 ./run-parent.sh
```

This compiles, tests and saves generic_cse, lowered_deadcode, schedule, flagalloc,
regalloc and assembly. Defaults to `/home/exedev/go-crypto/bin/go`, matching
GOROOT, linux/amd64 GOAMD64=v1. Optional `BENCH=1` enables short benchmarks; no
benchmark is necessary to observe the proven duplicated instructions.

No production edits or public filing. No further compilation/timing by worker.
