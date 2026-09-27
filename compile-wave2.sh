#!/bin/bash
set -eu
cd /home/exedev/go-crypto
export GOMAXPROCS=2
# SHA-2 baseline: checksum implementations are still untouched.
bin/go test -c -o /home/exedev/crypto-audit/bin/sha2-old.test crypto/sha256
# TLS standalone experiment: do not let the unrelated ECDSA DRBG experiment leak in.
cp src/crypto/internal/fips140/ecdsa/hmacdrbg.go /tmp/audit-drbg-new.go
git show 2ff5743d9fd52fac166225e75df0c2c1edf82abb:src/crypto/internal/fips140/ecdsa/hmacdrbg.go > src/crypto/internal/fips140/ecdsa/hmacdrbg.go
bin/go test -c -o /home/exedev/crypto-audit/bin/tls-pair-new.test crypto/tls
for f in src/crypto/tls/prf.go src/crypto/internal/fips140/tls12/tls12.go; do cp "$f" /tmp/audit-$(basename "$(dirname "$f")")-$(basename "$f"); git show 2ff5743d9fd52fac166225e75df0c2c1edf82abb:"$f" > "$f"; done
bin/go test -c -o /home/exedev/crypto-audit/bin/tls-pair-old.test crypto/tls
cp /tmp/audit-tls-prf.go src/crypto/tls/prf.go
cp /tmp/audit-tls12-tls12.go src/crypto/internal/fips140/tls12/tls12.go
cp /tmp/audit-drbg-new.go src/crypto/internal/fips140/ecdsa/hmacdrbg.go
# OID-only, independent from the canonical PSS parameter fast path.
cp src/crypto/x509/x509.go /tmp/audit-x509-pss.go
git show 2ff5743d9fd52fac166225e75df0c2c1edf82abb:src/crypto/x509/x509.go > src/crypto/x509/x509.go
git apply /home/exedev/crypto-audit/x509-oidkeys.patch
bin/go test -c -o /home/exedev/crypto-audit/bin/x509-oid-new.test crypto/x509
cp /tmp/audit-x509-pss.go src/crypto/x509/x509.go
# Field equality, then literal bound only: both benchmarked independently.
git apply /home/exedev/crypto-audit/ecc-fiat-equal.patch
bin/go test -c -o /home/exedev/crypto-audit/bin/ecdh-equal-new.test crypto/ecdh
bin/go test -c -o /home/exedev/crypto-audit/bin/ecdsa-equal-new.test crypto/ecdsa
git apply -R /home/exedev/crypto-audit/ecc-fiat-equal.patch
git apply /home/exedev/crypto-audit/ecc-fiat-bound-literal.patch
bin/go test -c -o /home/exedev/crypto-audit/bin/ecdh-bound-new.test crypto/ecdh
bin/go test -c -o /home/exedev/crypto-audit/bin/ecdsa-bound-new.test crypto/ecdsa
git apply -R /home/exedev/crypto-audit/ecc-fiat-bound-literal.patch
# SHA-256/SHA-512 disjoint implementations, independent benchmark cases.
git apply /home/exedev/crypto-audit/symmetric-sha256-directpad.patch /home/exedev/crypto-audit/symmetric-sha512-directpad.patch
bin/go test -c -o /home/exedev/crypto-audit/bin/sha2-new.test crypto/sha256
