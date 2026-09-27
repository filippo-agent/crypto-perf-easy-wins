#!/bin/bash
set -eu
cd /home/exedev/go-crypto
export GOMAXPROCS=2
cp src/crypto/internal/fips140/bigmod/nat.go /tmp/audit-nat-new.go
cp src/crypto/internal/fips140/rsa/rsa.go /tmp/audit-rsa-new.go
git show 2ff5743d9fd52fac166225e75df0c2c1edf82abb:src/crypto/internal/fips140/bigmod/nat.go > src/crypto/internal/fips140/bigmod/nat.go
git show 2ff5743d9fd52fac166225e75df0c2c1edf82abb:src/crypto/internal/fips140/rsa/rsa.go > src/crypto/internal/fips140/rsa/rsa.go
bin/go test -c -o /home/exedev/crypto-audit/bin/rsa-old.test crypto/rsa
cp /tmp/audit-nat-new.go src/crypto/internal/fips140/bigmod/nat.go
cp /tmp/audit-rsa-new.go src/crypto/internal/fips140/rsa/rsa.go
bin/go test -c -o /home/exedev/crypto-audit/bin/rsa-new.test crypto/rsa
