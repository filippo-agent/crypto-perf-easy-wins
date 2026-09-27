#!/bin/bash
# PREPARED ONLY. Run only during the parent's CPU lease, under flock + taskset.
# Example: flock /tmp/crypto-audit-cpu.lock taskset -c 0 env GOMAXPROCS=1 BENCH=1 ./run-parent.sh
set -euo pipefail
cd "$(dirname "$0")"
GO=${GO:-/home/exedev/go-crypto/bin/go}
export GOROOT=${GOROOT:-/home/exedev/go-crypto} GOMAXPROCS=1 GOTOOLCHAIN=local
export GOOS=linux GOARCH=amd64 GOAMD64=${GOAMD64:-v1}
mkdir -p "evidence/$GOAMD64"
export GOSSADIR="$PWD/evidence/$GOAMD64"
"$GO" version > "$GOSSADIR/toolchain.txt"
"$GO" env GOAMD64 GOEXPERIMENT GOFLAGS >> "$GOSSADIR/toolchain.txt"
"$GOROOT/bin/gofmt" -w carry.go carry_test.go bench_test.go
names=(IndependentAB IndependentBA ReorderedAB ReorderedBA DependentAB DependentBA)
flags=''
for fn in "${names[@]}"; do
 for phase in generic_cse lowered_deadcode schedule flagalloc regalloc; do
  flags+="ssa/$phase/dump=$fn,"
 done
done
"$GO" test -c -o "$GOSSADIR/probe.test" -gcflags="example.com/carrysumprobe=-d=${flags%,}" . > "$GOSSADIR/build.txt" 2>&1
"$GOSSADIR/probe.test" -test.run '^TestCarry$' -test.v > "$GOSSADIR/test.txt"
for fn in "${names[@]}"; do
 "$GO" tool objdump -s "^example.com/carrysumprobe.$fn$" "$GOSSADIR/probe.test" > "$GOSSADIR/$fn.asm"
done
if [[ ${BENCH:-0} == 1 ]]; then
 "$GOSSADIR/probe.test" -test.run '^$' -test.bench '^BenchmarkCarry$' -test.benchtime=100ms -test.count=3 -test.cpu=1 > "$GOSSADIR/bench.txt"
fi
