#!/bin/bash
set -euo pipefail
export GOROOT=/home/exedev/go-crypto GOMAXPROCS=2 GOTOOLCHAIN=local GOAMD64=v1
r=/home/exedev/crypto-audit/round4
go="$GOROOT/bin/go"
for p in pq-small-arithmetic carry-select constant-append-memmove hash-sum-return-buffer p384-square p384-square/small-carry; do
 cd "$r/issues/$p"
 mkdir -p evidence/final
 echo "TEST $p $(date -u)"
 "$go" test -count=1 ./... > evidence/final/tests.txt 2>&1
 "$go" test -race -count=1 ./... > evidence/final/race.txt 2>&1
 GOAMD64=v3 "$go" test -count=1 ./... > evidence/final/tests-v3.txt 2>&1
done
cd "$r/issues/p384-square/small-carry"
GOARCH=arm64 CGO_ENABLED=0 "$go" test -c -o evidence/final/arm64.test
"$go" tool objdump -s '^example.com/carrysumprobe\.(Independent|Reordered|Dependent)' evidence/final/arm64.test > evidence/final/arm64.asm
