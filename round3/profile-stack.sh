#!/bin/bash
set -eu
export GOROOT=/home/exedev/go-pq-stack GOMAXPROCS=1
cd "$GOROOT"
r=/home/exedev/crypto-audit/round3
for p in mlkem mldsa hpke; do echo "BUILD stack $p $(date -u)"; bin/go test -c -o "$r/stack-bin/$p-base.test" crypto/$p; done
profile(){ n=$1;p=$2;pat=$3; echo "PROFILE stack $n $(date -u)"; taskset -c 0 "$r/stack-bin/$p-base.test" -test.run='^$' -test.bench="$pat" -test.benchtime=8s -test.cpu=1 -test.benchmem -test.cpuprofile="$r/stack-profiles/$n.pprof" > "$r/stack-profiles/$n.bench"; bin/go tool pprof -top -nodecount=45 "$r/stack-bin/$p-base.test" "$r/stack-profiles/$n.pprof" > "$r/stack-profiles/$n.top"; bin/go tool pprof -top -cum -nodecount=45 "$r/stack-bin/$p-base.test" "$r/stack-profiles/$n.pprof" > "$r/stack-profiles/$n.cum"; }
profile mlkem768-encaps mlkem '^BenchmarkRound2MLKEM$/^768$/^EncapsWarm$'
profile mlkem1024-encaps mlkem '^BenchmarkRound2MLKEM$/^1024$/^EncapsWarm$'
profile mldsa44-sign mldsa '^BenchmarkRound2MLDSA$/^44$/^SignDeterministicWarm$'
profile mldsa44-verify mldsa '^BenchmarkRound2MLDSA$/^44$/^ParseVerifyCold$'
