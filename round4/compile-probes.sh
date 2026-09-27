#!/bin/bash
set -eu
source /home/exedev/crypto-audit/round4/require-baselines.sh
export GOMAXPROCS=2 GOROOT=/home/exedev/go-crypto
cd "$GOROOT"
r=/home/exedev/crypto-audit/round4
restore(){ for p in "$@"; do git show 2532e0de:"$p" > "$p"; done; }
build(){ echo "BUILD $1 $(date -u)"; bin/go test -c -o "$r/bin/$1.test" "$2"; }
for p in rsa hmac sha256 sha512; do build "$p-base" "crypto/$p"; done
for v in cteq-xor-borrow assign-intrinsic; do
 git apply "$r/patches/rsa-$v.patch";build "rsa-$v" crypto/rsa
 bin/go test -short -p=2 -count=1 crypto/internal/fips140/bigmod crypto/rsa > "$r/tests/rsa-$v.log" 2>&1
 restore src/crypto/internal/fips140/bigmod/nat.go
done
for v in named-return outparam array-append; do
 git apply "$r/patches/hash-sum-$v.patch"; build "hmac-$v" crypto/hmac;build "sha256-$v" crypto/sha256
 bin/go test -short -p=2 -count=1 crypto/sha256 crypto/sha512 crypto/hmac crypto/pbkdf2 > "$r/tests/hash-$v.log" 2>&1
 restore src/crypto/internal/fips140/sha256/sha256.go src/crypto/internal/fips140/sha512/sha512.go
done
git apply "$r/patches/sha2-padding-bounded-distance.patch"; build hmac-distance crypto/hmac;build sha256-distance crypto/sha256
bin/go test -short -p=2 -count=1 crypto/sha256 crypto/sha512 crypto/hmac > "$r/tests/hash-distance.log" 2>&1
restore src/crypto/internal/fips140/sha256/sha256.go src/crypto/internal/fips140/sha512/sha512.go
export GOROOT=/home/exedev/go-pq-stack
cd "$GOROOT"
restorepq(){ for p in "$@"; do git show db19b48d:"$p" > "$p"; done; }
for p in mlkem mldsa; do build "$p-base" "crypto/$p";done
for v in decompose-group-constants from-montgomery-no-correction sub-direct-compare; do
 git apply "$r/patches/mldsa-$v.patch"; build "mldsa-$v" crypto/mldsa
 bin/go test -short -p=2 -count=1 crypto/internal/fips140/mldsa crypto/mldsa > "$r/tests/mldsa-$v.log" 2>&1
 restorepq src/crypto/internal/fips140/mldsa/field.go
done
for v in cbd-widen-byte sub-direct-compare; do
 git apply "$r/patches/mlkem-$v.patch"; build "mlkem-$v" crypto/mlkem
 bin/go test -short -p=2 -count=1 crypto/internal/fips140/mlkem crypto/mlkem > "$r/tests/mlkem-$v.log" 2>&1
 restorepq src/crypto/internal/fips140/mlkem/field.go
done
