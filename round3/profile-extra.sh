#!/bin/bash
set -eu
cd /home/exedev/go-crypto
r=/home/exedev/crypto-audit/round3
profile(){ n=$1;p=$2;pat=$3; echo "PROFILE $n $(date -u)"; GOMAXPROCS=1 taskset -c 0 "$r/bin/$p-base.test" -test.run='^$' -test.bench="$pat" -test.benchtime=8s -test.cpu=1 -test.benchmem -test.cpuprofile="$r/profiles/$n.pprof" > "$r/profiles/$n.bench"; bin/go tool pprof -top -nodecount=50 "$r/bin/$p-base.test" "$r/profiles/$n.pprof" > "$r/profiles/$n.top"; bin/go tool pprof -top -cum -nodecount=50 "$r/bin/$p-base.test" "$r/profiles/$n.pprof" > "$r/profiles/$n.cum"; }
profile hmac-native-warm hmac '^BenchmarkRound2PublicHMAC$/^SHA256$/^32$/^Warm$'
profile hmac-native-cold hmac '^BenchmarkRound2PublicHMAC$/^SHA256$/^32$/^Cold$'
profile pbkdf2-native hmac '^BenchmarkRound2PublicPBKDF2$/^SHA256$/^Iter4096$/^Blocks1$'
profile rsa-sign-precomp rsa '^BenchmarkRound3PrecomputedRSASign$'
bin/go tool pprof -list='fieldReduceOnce|nttMulAddPrecomputed|inverseNTT|fieldReduce$' "$r/bin/mlkem-base.test" "$r/profiles/mlkem-encaps.pprof" > "$r/profiles/mlkem-hot.list"
bin/go tool pprof -list='fieldReduceOnce|fieldMontgomeryReduce|inverseNTT' "$r/bin/mldsa-base.test" "$r/profiles/mldsa-sign.pprof" > "$r/profiles/mldsa-hot.list"
bin/go tool objdump -s 'crypto/internal/fips140/mlkem.nttMulAddPrecomputed' "$r/bin/mlkem-base.test" > "$r/profiles/mlkem-muladd.asm"
bin/go tool objdump -s 'crypto/internal/fips140/mldsa.inverseNTT' "$r/bin/mldsa-base.test" > "$r/profiles/mldsa-invntt.asm"
