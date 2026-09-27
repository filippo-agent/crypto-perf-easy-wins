#!/bin/bash
set -euo pipefail
export GOROOT=/home/exedev/go-crypto GOTOOLCHAIN=local GOAMD64=v1 GOMAXPROCS=2
r=/home/exedev/crypto-audit/round4
go="$GOROOT/bin/go"
cd "$r/issues/sha2-padding-range"
mkdir -p evidence
"$go" test -count=1 ./... > evidence/tests.txt 2>&1
"$go" test -race -count=1 ./... > evidence/race.txt 2>&1
"$go" test -c -o evidence/repro.test
"$go" tool objdump -s '^example.com/paddingrange\.' evidence/repro.test > evidence/amd64.asm
GOARCH=arm64 CGO_ENABLED=0 "$go" test -c -o evidence/arm64.test
"$go" tool objdump -s '^example.com/paddingrange\.' evidence/arm64.test > evidence/arm64.asm
"$go" test -run='^$' -gcflags='-m=2 -d=ssa/check_bce/debug=1' > evidence/compiler.txt 2>&1
mkdir -p "$r/production-asm"
for v in base named-return outparam array-append distance; do
 "$go" tool objdump -s '^crypto/internal/fips140/sha(256|512)\.\(\*Digest\)\.(Sum|checkSum)$' "$r/bin/hmac-$v.test" > "$r/production-asm/hash-$v.asm"
done
for v in base decompose-group-constants; do
 "$go" tool objdump -s '^crypto/internal/fips140/mldsa\.(decompose88|decompose32|decompose)$' "$r/bin/mldsa-$v.test" > "$r/production-asm/mldsa-$v.asm"
done
for v in base cbd-widen-byte; do
 "$go" tool objdump -s '^crypto/internal/fips140/mlkem\.samplePolyCBD$' "$r/bin/mlkem-$v.test" > "$r/production-asm/mlkem-$v.asm"
done
