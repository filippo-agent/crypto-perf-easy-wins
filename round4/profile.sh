#!/bin/bash
set -eu
source /home/exedev/crypto-audit/round4/require-baselines.sh
export GOMAXPROCS=1
r=/home/exedev/crypto-audit/round4
profile(){ tree=$1;name=$2;pkg=$3;pat=$4;export GOROOT=/home/exedev/$tree;echo "PROFILE $name $(date -u)"; taskset -c 0 "$r/bin/$name.test" -test.run='^$' -test.bench="$pat" -test.benchtime=8s -test.cpu=1 -test.benchmem -test.cpuprofile="$r/profiles/$name.pprof" > "$r/profiles/$name.bench"; "$GOROOT/bin/go" tool pprof -top -nodecount=60 "$r/bin/$name.test" "$r/profiles/$name.pprof" > "$r/profiles/$name.top"; "$GOROOT/bin/go" tool pprof -top -cum -nodecount=60 "$r/bin/$name.test" "$r/profiles/$name.pprof" > "$r/profiles/$name.cum"; }
build(){ export GOROOT=/home/exedev/$1;echo "BUILD $2 $(date -u)";"$GOROOT/bin/go" test -c -o "$r/bin/$2.test" "$3"; }
build go-pq-stack mldsa-sign crypto/mldsa
cp "$r/bin/mldsa-sign.test" "$r/bin/mldsa-verify.test"
build go-pq-stack mlkem-encaps crypto/mlkem
cp "$r/bin/mlkem-encaps.test" "$r/bin/mlkem-decaps.test"
build go-crypto rsa-sign crypto/rsa
build go-crypto ecdsa-verify crypto/ecdsa
build go-crypto ed25519-verify crypto/ed25519
build go-crypto hmac-warm crypto/hmac
profile go-pq-stack mldsa-sign mldsa '^BenchmarkRound2MLDSA$/^44$/^SignDeterministicWarm$'
profile go-pq-stack mldsa-verify mldsa '^BenchmarkRound2MLDSA$/^44$/^ParseVerifyCold$'
profile go-pq-stack mlkem-encaps mlkem '^BenchmarkRound2MLKEM$/^768$/^EncapsWarm$'
profile go-pq-stack mlkem-decaps mlkem '^BenchmarkRound2MLKEM$/^768$/^DecapsWarm$'
profile go-crypto rsa-sign rsa '^BenchmarkRound3PrecomputedRSASign$'
profile go-crypto ecdsa-verify ecdsa '^BenchmarkRound3VerifyEngine$/^P-384$/^Reparse$/^Valid$'
profile go-crypto ed25519-verify ed25519 '^BenchmarkVerification$'
profile go-crypto hmac-warm hmac '^BenchmarkRound2PublicHMAC$/^SHA256$/^32$/^Warm$'
