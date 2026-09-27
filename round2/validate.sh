#!/bin/bash
set -u
cd /home/exedev/go-crypto
export GOMAXPROCS=2
out=/home/exedev/crypto-audit/round2/tests
run() { name=$1; shift; echo "$name START $(date -u)" | tee -a "$out/summary.txt"; printf '%q ' "$@" >> "$out/summary.txt"; printf '\n' >> "$out/summary.txt"; "$@" > "$out/$name.log" 2>&1; c=$?; echo "$name EXIT $c $(date -u)" | tee -a "$out/summary.txt"; }
run final-all-short bin/go test -short -p=2 -count=1 crypto/...
run final-purego env GODEBUG=fips140=off RSA_ROUND2_REQUIRE_CACHE=1 bin/go test -short -tags=purego -p=2 -count=1 crypto/cipher crypto/internal/fips140/aes crypto/internal/fips140/mlkem crypto/mlkem crypto/hpke crypto/rsa crypto/x509 crypto/internal/fips140test
run final-fips-on env GODEBUG=fips140=on RSA_ROUND2_REQUIRE_CACHE=1 bin/go test -short -p=2 -count=1 crypto/cipher crypto/internal/fips140/aes crypto/internal/fips140/mlkem crypto/mlkem crypto/hpke crypto/rsa crypto/x509 crypto/internal/fips140test
run final-race env RSA_ROUND2_REQUIRE_CACHE=1 bin/go test -race -short -p=2 -count=1 crypto/cipher crypto/mlkem crypto/hpke crypto/rsa crypto/x509
run old-module-v126 env GOFIPS140=v1.26.0 bin/go test -short -p=2 -count=1 -run 'TestRound2Name|TestRound2PublicCache|TestRound2PublicConversion|TestRound2CTRFragments' crypto/cipher crypto/rsa crypto/x509
