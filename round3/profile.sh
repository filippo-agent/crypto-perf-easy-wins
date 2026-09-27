#!/bin/bash
set -eu
cd /home/exedev/go-crypto
export GOMAXPROCS=1
r=/home/exedev/crypto-audit/round3
for p in ecdsa ed25519 rsa mlkem mldsa hmac cipher; do echo "BUILD $p $(date -u)"; bin/go test -c -o "$r/bin/$p-base.test" crypto/$p; done
profile() {
 name=$1; pkg=$2; pat=$3; seconds=$4
 echo "PROFILE $name $(date -u)"
 (cd src/crypto/$pkg; taskset -c 0 "$r/bin/$pkg-base.test" -test.run='^$' -test.bench="$pat" -test.benchtime="${seconds}s" -test.cpu=1 -test.benchmem -test.cpuprofile="$r/profiles/$name.pprof") > "$r/profiles/$name.bench" 2>&1
 bin/go tool pprof -top -nodecount=50 "$r/bin/$pkg-base.test" "$r/profiles/$name.pprof" > "$r/profiles/$name.top"
 bin/go tool pprof -top -cum -nodecount=50 "$r/bin/$pkg-base.test" "$r/profiles/$name.pprof" > "$r/profiles/$name.cum"
}
profile ecdsa-p256 ecdsa '^BenchmarkRound2VerifyNormal$/P-256$/Valid$' 10
profile ecdsa-p384 ecdsa '^BenchmarkRound2VerifyNormal$/P-384$/Valid$' 8
profile ecdsa-p521 ecdsa '^BenchmarkRound2VerifyNormal$/P-521$/Valid$' 8
profile ed25519 ed25519 '^BenchmarkVerification$' 8
profile rsa-verify rsa '^BenchmarkRound2Verify$/2048$/PKCS1v15$' 8
profile rsa-sign rsa '^BenchmarkSignPKCS1v15$/2048$' 8
profile mlkem-encaps mlkem '^BenchmarkRound2MLKEM$/768$/EncapsWarm$' 8
profile mldsa-sign mldsa '^BenchmarkRound2MLDSA$/44$/SignDeterministicWarm$' 8
profile mldsa-verify mldsa '^BenchmarkRound2MLDSA$/44$/ParseVerifyCold$' 8
profile hmac hmac '^BenchmarkRound2PublicHMAC$/SHA256$/32$/Warm$' 8
profile pbkdf2 hmac '^BenchmarkRound2PublicPBKDF2$/SHA256$/Iter4096$/Blocks1$' 8
profile aes-gcm cipher '^BenchmarkAESGCM$/(Seal-128-1350|Open-128-1350)$' 8
