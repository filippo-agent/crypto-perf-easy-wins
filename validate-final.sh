#!/bin/bash
set -u
cd /home/exedev/go-crypto
export GOMAXPROCS=2
out=/home/exedev/crypto-audit/tests
run() { name=$1; shift; echo "$name START $(date -u)" | tee -a "$out/summary.txt"; printf '%q ' "$@" >> "$out/summary.txt"; printf '\n' >> "$out/summary.txt"; "$@" > "$out/$name.log" 2>&1; code=$?; echo "$name EXIT $code $(date -u)" | tee -a "$out/summary.txt"; }
run all-short bin/go test -short -p=2 -count=1 crypto/...
run purego env GODEBUG=fips140=off bin/go test -short -tags=purego -p=2 -count=1 crypto/rsa crypto/x509 crypto/pbkdf2 crypto/mldsa crypto/internal/fips140/bigmod crypto/internal/fips140/rsa crypto/internal/fips140/mldsa
run fips-on env GODEBUG=fips140=on bin/go test -short -p=2 -count=1 crypto/rsa crypto/x509 crypto/pbkdf2 crypto/mldsa crypto/internal/fips140/bigmod crypto/internal/fips140/rsa crypto/internal/fips140/mldsa
run focused-386 env GOARCH=386 CGO_ENABLED=0 bin/go test -short -p=2 -count=1 -run 'TestAudit|TestGolden|TestPSS|TestOAEP|TestNotPrecomputed|TestAccumulated' crypto/rsa crypto/x509 crypto/pbkdf2 crypto/mldsa crypto/internal/fips140/bigmod crypto/internal/fips140/rsa crypto/internal/fips140/mldsa
