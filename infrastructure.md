# Infrastructure / BoringCrypto audit (in progress)

Read crypto.go, rand/{rand,text,util}.go, internal/rand wrappers, randutil, sysrand all OS backends/seccomp, entropy and frozen v1.0.0 implementation, fips140/drbg, core fips140 service indicators/CAST/PCT, fips140only, fips140cache, fips140deps, impl, constanttime, public fips140, boring facade; BoringCrypto hash/HMAC/AES/ECDH/ECDSA/cache/wrapper code. RSA owned by RSA agent.

## Strong new leads
1. **sysrand first-use atomic:** sysrand.Read CompareAndSwap(false,true) executes on every request, generating an unnecessary locked RMW on a shared hot cache line. Guard with !firstUse.Load(); preserve CAS for first-use races. One line. Public rand.Read serial and parallel benchmarks prepared. No randomness/synchronization invariant changes; no additional persistent state.
2. **Boring ECDH recomputes generated public point:** boring.PrivateKeyECDH.PublicKey always EC_POINT_mul, but GenerateKeyECDH calls EC_KEY_generate_key_fips which already computed/stored the public key. Try EC_KEY_get0_public_key; if present EC_POINT_dup it to retain independent ownership/finalization, else retain existing calculation for imported keys. Existing C wrappers already expose both APIs. No skipping keygen/PCT. Public GenerateKey(rand.Reader) benches all NIST curves; NewPrivateKey control unchanged.
3. **Boring GCM Open repeated buffer growth:** boring/aes.go:Open grows dst using append-one loop until it fits, leading to geometric reallocations/copies with nil/short dst. Seal in SAME file already uses slices.Grow. Replace loop with slices.Grow(dst,len(ciphertext)-gcmTagSize), then same final reslice. No crypto code touched; overlap validation still runs after growth. Benchmark nil/reused destinations, 16 B/1 KiB/16 KiB messages under GOEXPERIMENT=boringcrypto.

## Rejected / deliberately not optimized
- Frozen certified jitter entropy code is intentionally timing-sensitive and frozen; removing noise, atomics, sampling or replacing SHA384 would require revalidation and break core invariants.
- DRBG reseed/update/OS additional-input calls security-required. No random buffering proposal. AES expanded-key struct copies need profiling/compiler evidence and lack a smaller existing API.
- CAST/PCT argument-name validation is outside hot paths enough, and skipping required self-tests not allowed.
- Cache cleanup/weak-pointer and Boring finalization changes exceed tiny-review budget without concrete benefit; no new caches added.
- rand.Int/Prime loops are necessary unbiased rejection, custom-reader behavior intentionally preserves contract.
- Boring HMAC Reset re-initializes key schedules and could potentially use library reset semantics, but C API/finalizer behavioral review too high for first-tier low-cost changes; not proposed.
- Test helpers/registry platform glue reviewed for runtime relevance, not micro-optimized.
