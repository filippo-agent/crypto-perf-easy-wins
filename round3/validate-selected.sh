#!/bin/bash
set -u
export GOMAXPROCS=2
r=/home/exedev/crypto-audit/round3
run(){ name=$1;shift; echo "$name START $(date -u)" | tee -a "$r/tests/summary.txt"; printf '%q ' "$@" >> "$r/tests/summary.txt"; echo >> "$r/tests/summary.txt"; "$@" > "$r/tests/$name.log" 2>&1; c=$?; echo "$name EXIT $c $(date -u)" | tee -a "$r/tests/summary.txt"; }
export GOROOT=/home/exedev/go-crypto
cd "$GOROOT"
run main-all-short bin/go test -short -p=2 -count=1 crypto/...
run main-purego bin/go test -short -tags=purego -p=2 -count=1 crypto/ecdsa crypto/ecdh crypto/pbkdf2 crypto/hmac crypto/rsa crypto/internal/fips140/bigmod crypto/internal/fips140/nistec
run main-fips env GODEBUG=fips140=on bin/go test -short -p=2 -count=1 crypto/ecdsa crypto/ecdh crypto/pbkdf2 crypto/hmac crypto/rsa crypto/internal/fips140test
run main-race bin/go test -short -race -p=2 -count=1 crypto/ecdsa crypto/ecdh crypto/pbkdf2 crypto/hmac crypto/rsa
export GOROOT=/home/exedev/go-pq-stack
cd "$GOROOT"
run pq-stack-all bin/go test -short -p=2 -count=1 crypto/internal/fips140/mlkem crypto/internal/fips140/mldsa crypto/internal/fips140/sha3 crypto/mlkem crypto/mldsa crypto/hpke crypto/sha3 crypto/internal/fips140test
run pq-stack-purego bin/go test -short -tags=purego -p=2 -count=1 crypto/internal/fips140/mlkem crypto/internal/fips140/mldsa crypto/mlkem crypto/mldsa crypto/hpke
run pq-stack-fips env GODEBUG=fips140=on bin/go test -short -p=2 -count=1 crypto/mlkem crypto/mldsa crypto/hpke crypto/internal/fips140test
run pq-stack-race bin/go test -short -race -p=2 -count=1 crypto/mlkem crypto/mldsa crypto/hpke
