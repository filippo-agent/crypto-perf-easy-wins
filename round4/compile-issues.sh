#!/bin/bash
set -eu
export GOMAXPROCS=1 GOAMD64=v1 GOTOOLCHAIN=local
r=/home/exedev/crypto-audit/round4
go=/home/exedev/go-crypto/bin/go
for p in pq-small-arithmetic carry-select constant-append-memmove hash-sum-return-buffer; do
 cd "$r/issues/$p"
 mkdir -p evidence
 echo "ISSUE $p $(date -u)"
 "$go" test -count=1 ./... > evidence/tests.txt 2>&1
 "$go" test -c -o evidence/repro.test
 "$go" tool objdump -s "^$("$go" list -m | sed 's/[.]/\\./g')." evidence/repro.test > evidence/amd64.asm
 GOARCH=arm64 CGO_ENABLED=0 "$go" test -c -o evidence/repro-arm64.test
 "$go" tool objdump -s "^$("$go" list -m | sed 's/[.]/\\./g')." evidence/repro-arm64.test > evidence/arm64.asm
 "$go" test -gcflags='-m=2 -d=ssa/check_bce/debug=1' -run='^$' > evidence/compiler.txt 2>&1
 taskset -c 0 evidence/repro.test -test.run='^$' -test.bench='.' -test.benchtime=100ms -test.count=5 -test.cpu=1 > evidence/bench.txt
done
cd "$r/issues/p384-square/small-carry"
./run-parent.sh
