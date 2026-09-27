#!/bin/bash
set -eu
cd /home/exedev/go-crypto
export GOMAXPROCS=2
for spec in 'ecdh crypto/ecdh' 'ecdsa crypto/ecdsa' 'mldsa crypto/mldsa' 'tls crypto/tls' 'x509 crypto/x509' 'rsa crypto/rsa' 'bigmod crypto/internal/fips140/bigmod' 'tls12 crypto/internal/fips140/tls12' 'pbkdf2 crypto/pbkdf2' 'hkdf crypto/hkdf'; do
 read -r name pkg <<< "$spec"
 echo "BUILD $name $(date -u)"
 bin/go test -c -o /home/exedev/crypto-audit/bin/$name-old.test "$pkg"
done
for spec in 'ecdh crypto/ecdh' 'cipher crypto/cipher'; do
 read -r name pkg <<< "$spec"
 echo "BUILD boring $name $(date -u)"
 GOEXPERIMENT=boringcrypto bin/go test -c -o /home/exedev/crypto-audit/bin/$name-boring-old.test "$pkg"
done
