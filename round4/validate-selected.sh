#!/bin/bash
set -euo pipefail
export GOROOT=/home/exedev/go-crypto GOTOOLCHAIN=local GOAMD64=v1 GOMAXPROCS=2
r=/home/exedev/crypto-audit/round4
go="$GOROOT/bin/go"
cd "$GOROOT"
packages='crypto/internal/fips140/sha256 crypto/sha256 crypto/hmac crypto/pbkdf2'
"$go" test -short -count=1 -p=2 $packages > "$r/tests/selected-default.txt" 2>&1
"$go" test -short -count=1 -p=2 -tags=purego $packages > "$r/tests/selected-purego.txt" 2>&1
GODEBUG=fips140=on "$go" test -short -count=1 -p=2 $packages > "$r/tests/selected-fips-on.txt" 2>&1
"$go" test -short -race -count=1 -p=2 $packages > "$r/tests/selected-race.txt" 2>&1
GOARCH=arm64 CGO_ENABLED=0 "$go" test -c -o "$r/bin/sha256-selected-arm64.test" crypto/sha256
"$go" test -short -count=1 -p=2 crypto/... > "$r/tests/selected-all-crypto.txt" 2>&1
"$go" test -c -o "$r/bin/hmac-sha256-only.test" crypto/hmac
"$go" test -c -o "$r/bin/sha256-sha256-only.test" crypto/sha256
"$go" tool objdump -s '^crypto/internal/fips140/sha256\.\(\*Digest\)\.(Sum|checkSum)$' "$r/bin/hmac-sha256-only.test" > "$r/production-asm/sha256-selected-amd64.asm"
"$go" tool objdump -s '^crypto/internal/fips140/sha256\.\(\*Digest\)\.(Sum|checkSum)$' "$r/bin/sha256-selected-arm64.test" > "$r/production-asm/sha256-selected-arm64.asm"
python3 "$r/bench-selected.py"
