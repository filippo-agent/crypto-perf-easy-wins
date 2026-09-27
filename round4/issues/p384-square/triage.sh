#!/bin/bash
# CPU-consuming: ONLY run in the parent-coordinated CPU window.
# Required invocation: flock /tmp/crypto-audit-cpu.lock taskset -c 0 env GOMAXPROCS=1 ./triage.sh
set -euo pipefail
cd "$(dirname "$0")"
GO=${GO:-/home/exedev/go-crypto/bin/go}
export GOROOT=${GOROOT:-/home/exedev/go-crypto} GOOS=linux GOARCH=amd64 GOTOOLCHAIN=local
export GOMAXPROCS=${GOMAXPROCS:-1}
mkdir -p evidence/default evidence/nogeneric evidence/nolowered evidence/nocse evidence/v3 evidence/probes
"$GO" version > evidence/toolchain.txt
"$GO" env GOOS GOARCH GOAMD64 GOEXPERIMENT GOFLAGS >> evidence/toolchain.txt
"$GO" version -m "$GO" >> evidence/toolchain.txt
uname -a >> evidence/toolchain.txt
lscpu >> evidence/toolchain.txt
"$GO" fmt ./...
phases=(opt_deadcode generic_cse gcse_deadcode lowered_cse lowered_deadcode schedule flagalloc regalloc)
dumpflags=''
for fn in Square Mul RawSquare RawMul; do
 for phase in "${phases[@]}"; do dumpflags+="ssa/$phase/dump=$fn,"; done
done
for mode in default nogeneric nolowered nocse v3; do
 extra=''; arch=v1
 case "$mode" in
  nogeneric) extra=',ssa/generic_cse/off' ;;
  nolowered) extra=',ssa/lowered_cse/off' ;;
  nocse) extra=',ssa/generic_cse/off,ssa/lowered_cse/off' ;;
  v3) arch=v3 ;;
 esac
 export GOAMD64=$arch GOSSADIR="$PWD/evidence/$mode"
 "$GO" test -c -tags=original -o "evidence/$mode/repro.test" -gcflags="example.com/p384issue=-d=${dumpflags%,}$extra" . > "evidence/$mode/build.txt" 2>&1
 "evidence/$mode/repro.test" -test.run '^TestFull$' -test.v > "evidence/$mode/test.txt"
 "evidence/$mode/repro.test" -test.run '^$' -test.bench 'Benchmark(Full|Raw|Independent)$' -test.benchtime=150ms -test.count=5 -test.cpu=1 > "evidence/$mode/bench.txt"
 for fn in Square Mul RawSquare RawMul; do
  "$GO" tool objdump -s "^example.com/p384issue.$fn$" "evidence/$mode/repro.test" > "evidence/$mode/$fn.asm"
 done
done
export GOAMD64=v1 GOSSADIR="$PWD/evidence/probes"
probeflags=""
for fn in Prefix6Square Prefix6Mul; do
 for phase in gcse_deadcode schedule flagalloc regalloc; do probeflags+="ssa/$phase/dump=$fn,"; done
done
"$GO" test -c -tags=probes -o evidence/probes/repro.test -gcflags="example.com/p384issue=-d=${probeflags%,}" . > evidence/probes/build.txt 2>&1
for fn in Prefix6Square Prefix6Mul; do
 "$GO" tool objdump -s "^example.com/p384issue.$fn$" evidence/probes/repro.test > "evidence/probes/$fn.asm"
done
evidence/probes/repro.test -test.run '^Test(Full|Prefixes)$' -test.v > evidence/probes/test.txt
evidence/probes/repro.test -test.run '^$' -test.bench '^BenchmarkPrefixes$' -test.benchtime=150ms -test.count=5 -test.cpu=1 > evidence/probes/bench.txt
python3 summarize.py > evidence/summary.txt
