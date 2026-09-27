#!/bin/bash
set -eu
source /home/exedev/crypto-audit/round4/require-baselines.sh
export GOROOT=/home/exedev/go-crypto GOMAXPROCS=2 GOAMD64=v3
cd "$GOROOT"
r=/home/exedev/crypto-audit/round4
bin/go test -c -o "$r/bin/ecdsa-v3-mul.test" crypto/ecdsa
bin/go test -c -o "$r/bin/ecdh-v3-mul.test" crypto/ecdh
cp src/crypto/internal/fips140/nistec/fiat/p384.go "$r/issues/p384-square/p384-before.go.txt"
python3 - <<'PY'
p='src/crypto/internal/fips140/nistec/fiat/p384.go';s=open(p).read();assert 'if cpu.AMD64 {' in s;s=s.replace('if cpu.AMD64 {','if false && cpu.AMD64 {');open(p,'w').write(s)
PY
bin/go test -c -o "$r/bin/ecdsa-v3-square.test" crypto/ecdsa
bin/go test -c -o "$r/bin/ecdh-v3-square.test" crypto/ecdh
bin/go test -short -p=2 -count=1 crypto/internal/fips140/nistec/fiat crypto/ecdsa crypto/ecdh > "$r/tests/v3-square.log" 2>&1
cp "$r/issues/p384-square/p384-before.go.txt" src/crypto/internal/fips140/nistec/fiat/p384.go
python3 "$r/bench-v3.py"
