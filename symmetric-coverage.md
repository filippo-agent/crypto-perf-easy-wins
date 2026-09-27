# Symmetric audit file ledger

All paths relative to repository root. Original inventory only; focused audit tests added later are listed in symmetric.md.

| File | Lines | Review |
|---|---:|---|
| `src/crypto/aes/aes.go` | 48 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/aes/aes_test.go` | 175 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/benchmark_test.go` | 130 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/cbc.go` | 207 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/cipher/cbc_aes_test.go` | 113 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/cbc_aes_wycheproof_test.go` | 67 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/cbc_test.go` | 68 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/cfb.go` | 102 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/cipher/cfb_test.go` | 160 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/cipher.go` | 98 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/cipher/common_test.go` | 28 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/ctr.go` | 115 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/cipher/ctr_aes_test.go` | 363 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/ctr_test.go` | 100 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/example_test.go` | 363 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/fuzz_test.go` | 103 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/gcm.go` | 373 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/cipher/gcm_fips140v1.26_test.go` | 97 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/gcm_test.go` | 901 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/gcm_wycheproof_test.go` | 79 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/io.go` | 53 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/cipher/modes_test.go` | 126 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/cipher/ofb.go` | 88 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/cipher/ofb_test.go` | 139 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/des/block.go` | 249 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/des/cipher.go` | 165 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/des/const.go` | 142 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/des/des_test.go` | 1575 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/des/example_test.go` | 25 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/des/internal_test.go` | 29 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/hkdf/example_test.go` | 54 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/hkdf/hkdf.go` | 84 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/hkdf/hkdf_test.go` | 413 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/hkdf/hkdf_wycheproof_test.go` | 56 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/hmac/hmac.go` | 65 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/hmac/hmac_test.go` | 715 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/hmac/hmac_wycheproof_test.go` | 57 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/internal/fips140/aes/_asm/ctr/ctr_amd64_asm.go` | 187 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/aes/_asm/ctr/go.mod` | 11 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/aes/_asm/ctr/go.sum` | 10 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/aes/_asm/standard/aes_amd64.go` | 385 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/aes/_asm/standard/go.mod` | 11 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/aes/_asm/standard/go.sum` | 8 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/aes/aes.go` | 131 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/aes_amd64.s` | 286 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/aes_arm64.s` | 283 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/aes_asm.go` | 99 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/aes_generic.go` | 181 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/aes_loong64.s` | 596 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/aes_noasm.go` | 26 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/aes_ppc64x.s` | 891 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/aes_s390x.go` | 99 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/aes_s390x.s` | 39 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/aes_test.go` | 120 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/internal/fips140/aes/cast.go` | 47 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/cbc.go` | 130 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/cbc_noasm.go` | 15 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/cbc_ppc64x.go` | 31 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/cbc_s390x.go` | 30 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/const.go` | 356 | Full constants read / test consistency triage (support review) |
| `src/crypto/internal/fips140/aes/ctr.go` | 148 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/ctr_amd64.s` | 521 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/ctr_arm64.s` | 729 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/ctr_arm64_gen.go` | 213 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/aes/ctr_asm.go` | 53 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/ctr_loong64.s` | 597 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/ctr_noasm.go` | 23 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/ctr_s390x.go` | 49 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/_asm/gcm/gcm_amd64_asm.go` | 1572 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/aes/gcm/_asm/gcm/go.mod` | 11 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/aes/gcm/_asm/gcm/go.sum` | 10 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/aes/gcm/cast.go` | 43 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/cmac.go` | 77 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/ctrkdf.go` | 49 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/gcm.go` | 143 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/gcm_amd64.s` | 1894 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/gcm/gcm_arm64.s` | 1091 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/gcm/gcm_asm.go` | 134 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/gcm_generic.go` | 105 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/gcm_noasm.go` | 21 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/gcm_nonces.go` | 287 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/gcm_ppc64x.go` | 187 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/gcm_ppc64x.s` | 1069 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/gcm/gcm_s390x.go` | 251 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/gcm_s390x.s` | 130 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/aes/gcm/ghash.go` | 179 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/aes/gcm/interface_test.go` | 12 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/internal/fips140/aes/interface_test.go` | 15 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/internal/fips140/alias/alias.go` | 30 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/hkdf/cast.go` | 33 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/hkdf/hkdf.go` | 61 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/hmac/cast.go` | 34 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/hmac/hmac.go` | 209 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/pbkdf2/cast.go` | 43 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/pbkdf2/pbkdf2.go` | 87 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha256/_asm/go.mod` | 11 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha256/_asm/go.sum` | 8 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha256/_asm/sha256block_amd64_asm.go` | 132 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha256/_asm/sha256block_amd64_avx2.go` | 725 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha256/_asm/sha256block_amd64_shani.go` | 174 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha256/cast.go` | 32 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha256/sha256.go` | 247 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha256/sha256block.go` | 125 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha256/sha256block_386.s` | 285 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha256/sha256block_amd64.go` | 36 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha256/sha256block_amd64.s` | 1486 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha256/sha256block_arm64.go` | 29 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha256/sha256block_arm64.s` | 121 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha256/sha256block_asm.go` | 10 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha256/sha256block_loong64.s` | 262 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha256/sha256block_noasm.go` | 11 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha256/sha256block_ppc64x.go` | 33 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha256/sha256block_ppc64x.s` | 453 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha256/sha256block_riscv64.s` | 262 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha256/sha256block_s390x.go` | 31 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha256/sha256block_s390x.s` | 17 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha3/_asm/go.mod` | 11 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha3/_asm/go.sum` | 8 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha3/_asm/keccakf_amd64_asm.go` | 443 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha3/cast.go` | 32 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha3/hashes.go` | 52 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha3/keccakf.go` | 431 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha3/sha3.go` | 233 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha3/sha3_amd64.go` | 20 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha3/sha3_amd64.s` | 5419 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha3/sha3_arm64.go` | 43 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha3/sha3_arm64.s` | 165 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha3/sha3_noasm.go` | 21 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha3/sha3_s390x.go` | 196 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha3/sha3_s390x.s` | 32 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha3/shake.go` | 165 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha512/_asm/go.mod` | 11 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha512/_asm/go.sum` | 8 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha512/_asm/sha512block_amd64_asm.go` | 1403 | Generator/dependency triage (no assembly changes) |
| `src/crypto/internal/fips140/sha512/cast.go` | 36 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha512/sha512.go` | 317 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha512/sha512block.go` | 143 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha512/sha512block_amd64.go` | 29 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha512/sha512block_amd64.s` | 904 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha512/sha512block_arm64.go` | 29 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha512/sha512block_arm64.s` | 137 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha512/sha512block_asm.go` | 10 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha512/sha512block_loong64.s` | 241 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha512/sha512block_noasm.go` | 11 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha512/sha512block_ppc64x.go` | 33 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha512/sha512block_ppc64x.s` | 487 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha512/sha512block_riscv64.s` | 287 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/sha512/sha512block_s390x.go` | 31 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/sha512/sha512block_s390x.s` | 17 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/ssh/kdf.go` | 55 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/subtle/constant_time.go` | 75 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/subtle/constant_time_test.go` | 104 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/internal/fips140/subtle/xor.go` | 30 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/subtle/xor_amd64.s` | 58 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/subtle/xor_arm64.s` | 69 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/subtle/xor_asm.go` | 10 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/subtle/xor_generic.go` | 64 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/subtle/xor_loong64.go` | 39 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/subtle/xor_loong64.s` | 409 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/subtle/xor_mips64x.s` | 117 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/subtle/xor_mipsx.go` | 61 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/subtle/xor_mipsx.s` | 188 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/subtle/xor_ppc64x.s` | 142 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/subtle/xor_riscv64.go` | 18 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/subtle/xor_riscv64.s` | 200 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/internal/fips140/tls12/cast.go` | 38 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/tls12/tls12.go` | 73 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/tls13/cast.go` | 37 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140/tls13/tls13.go` | 178 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/internal/fips140hash/hash.go` | 34 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/md5/example_test.go` | 42 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/md5/gen.go` | 293 | Generator/dependency triage (no assembly changes) |
| `src/crypto/md5/md5.go` | 210 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/md5/md5_test.go` | 350 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/md5/md5block.go` | 153 | Generated Go compression triage |
| `src/crypto/md5/md5block_decl.go` | 12 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/md5/md5block_generic.go` | 13 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/md5/md5block_riscv64.s` | 279 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/md5/md5block_s390x.s` | 177 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/pbkdf2/pbkdf2.go` | 54 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/pbkdf2/pbkdf2_test.go` | 253 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/pbkdf2/pbkdf2_wycheproof_test.go` | 59 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/rc4/rc4.go` | 83 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/rc4/rc4_test.go` | 171 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/sha1/_asm/go.mod` | 11 | Generator/dependency triage (no assembly changes) |
| `src/crypto/sha1/_asm/go.sum` | 8 | Generator/dependency triage (no assembly changes) |
| `src/crypto/sha1/_asm/sha1block_amd64_asm.go` | 1521 | Generator/dependency triage (no assembly changes) |
| `src/crypto/sha1/_asm/sha1block_amd64_shani.go` | 164 | Generator/dependency triage (no assembly changes) |
| `src/crypto/sha1/example_test.go` | 42 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/sha1/sha1.go` | 294 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/sha1/sha1_test.go` | 358 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/sha1/sha1block.go` | 83 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/sha1/sha1block_386.s` | 235 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/sha1/sha1block_amd64.go` | 46 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/sha1/sha1block_amd64.s` | 1988 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/sha1/sha1block_arm.s` | 219 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/sha1/sha1block_arm64.go` | 37 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/sha1/sha1block_arm64.s` | 154 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/sha1/sha1block_decl.go` | 10 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/sha1/sha1block_generic.go` | 11 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/sha1/sha1block_loong64.s` | 282 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/sha1/sha1block_riscv64.s` | 225 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/sha1/sha1block_s390x.go` | 31 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/sha1/sha1block_s390x.s` | 17 | Assembly triage: build guards, symbols, Go dispatcher/caller contract; no instruction audit |
| `src/crypto/sha256/example_test.go` | 41 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/sha256/sha256.go` | 74 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/sha256/sha256_test.go` | 487 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/sha3/sha3.go` | 275 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/sha3/sha3_test.go` | 504 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/sha512/sha512.go` | 123 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/sha512/sha512_test.go` | 1092 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/subtle/constant_time.go` | 52 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/subtle/constant_time_test.go` | 170 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/subtle/dit.go` | 63 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/subtle/dit_test.go` | 87 | Full Go read: support-source review (vectors, assertions, benchmarks) |
| `src/crypto/subtle/xor.go` | 19 | Full production Go read (including platform glue and CASTs) |
| `src/crypto/subtle/xor_test.go` | 168 | Full Go read: support-source review (vectors, assertions, benchmarks) |
