# RSA public-key conversion cache

September 27, 2026. **Prototype only: no production changes, compiles, tests, or timings performed by this agent.** Parent owns CPU work. Independent from the earlier keygen and 65537 patches.

## Recommendation / bounded experiment

Prepared `round2/patches/rsa-public-cache.patch`: **27 insertions / 2 deletions in one production file**, live `crypto/rsa/rsa.go`. Reuses the existing `fips140cache.Cache` with an immutable internal public key plus copied `big.Int` N and E. No new cache implementation, public field/API, internal FIPS API, assembly, or frozen-module modification. `git apply --check` passes; patch remains unapplied.

This meets the newly allowed complexity budget and is worth measuring. **Do not recommend shipping based only on a same-key Verify benchmark**: cold conversion now does more work and public keys/certificates can be short-lived or attacker-supplied. Results are currently pending.

### Hot path

`fipsPublicKey` currently calls `pub.N.Bytes()` and `bigmod.NewModulus` on *every* operation. NewModulus parses/copies N, allocates modulus state, computes m0inv and Montgomery rr. The cache stores that conversion once per `*PublicKey` identity. A hit performs the existing weak-pointer/map lookup plus `pub.E == snapshot.E && pub.N.Cmp(&snapshot.N) == 0`; no modulus encoding or hashing is done on a hit.

All wrappers and internal Verify/Encrypt operations are unchanged. This caches **conversion/precomputation**, not signature validity, ciphertext, approval status, or even public-key validity. For example, an even N or invalid E can still have a conversion cached, but the unchanged internal `checkPublicKey` rejects it on every use.

## Semantics, security, FIPS, concurrency

- **N is copied once per miss.** Neither the snapshot nor internal modulus aliases the caller's big.Int limbs. Changing N through `Set`, `SetBit`, exposed `Bits()`, replacing its pointer, or changing E invalidates the entry. Replacing N with an equal-valued big.Int correctly reuses the conversion.
- **Preserve negative-N behavior:** existing conversion calls `N.Bytes()`, which uses absolute value. A negative N is not rejected by this helper today. Store the signed original N in the snapshot, so a sign change causes a miss, then preserve the old conversion behavior. Do not introduce a positivity check in this performance change.
- **Nil/invalid/error behavior:** wrapper nil-N/minimum-size checks stay exactly where they are. Direct helper nil N / nil PublicKey panic behavior is compared against a literal copy of the old helper in tests. Zero/one NewModulus errors are not cached. A failed refresh may leave the prior cache value stored, but Cache.Get never returns it when the check fails; restoring the old valid value can reuse it safely.
- **No public struct mutation:** no hidden field, no atomic field embedded in PublicKey, and no assignment through pub. Concurrent read-only copies of a PublicKey remain safe. Identical values at different outer pointers have separate cache identities.
- **Concurrency:** the existing Cache synchronizes map operations. Concurrent initial misses may create duplicate immutable conversions, then Swap selects the retained value; singleflight is intentionally not added. Concurrent operations on an unchanged key are safe. Concurrent unsynchronized mutation of PublicKey/N remains an ordinary data race, as before; this patch does not promise to support it.
- The cached `*internalrsa.PublicKey` is not exported. Public operations only read its E/Modulus; Modulus.Nat continues returning defensive copies. Modulus arithmetic uses operation-local scratch. No private-key import/precompute or private RSA operation is changed.
- **Timing:** N and E are explicitly nonconfidential under PublicKey's current contract. Cmp's variable time reveals only public values; cache hits additionally depend on public key object reuse. OAEP message processing remains unchanged and its secret input does not enter the lookup/check. No new variable-time private arithmetic.
- **FIPS:** every invocation still executes the public wrapper checks, internal public-key checks, CAST entry, hash policy, approval markers, PSS option checks, OAEP limits, and random generation. The cache is outside the FIPS module; no frozen API or snapshot code changes. Unlike keygen corpus tests, this experiment need not require the newest keygen algorithm. Run supported old-snapshot configurations as well as current FIPS on/only modes.
- BoringCrypto uses its existing separate cache/path and is not the target. No new Boring performance claim or implementation work.

## Lifetime and memory: the material downside

The value has no pointer to its `*PublicKey` key. `big.Int.Set` and NewModulus copy its data. The new/check closures run synchronously and are not retained by Cache. The existing cache keys by weak.Pointer, and AddCleanup deletes entries after the public key becomes unreachable. If the public key is embedded in a PrivateKey, its lifetime follows the containing allocation; this is tested.

**Weak is not bounded or prompt eviction.** A cache entry is retained as long as its key remains live, and unreachable keys may await GC plus asynchronous cleanup. Map deletion does not guarantee all map backing capacity shrinks. A large live pool of one-use certificate keys retains all conversions. Keys in persistent package globals naturally remain cached indefinitely. Key churn introduces cleanup work and can transiently retain far more memory than the uncached path; this matters even if warm time improves substantially.

Approximate *raw retained payload* on amd64/arm64, before size-class rounding, map/weak-handle/cleanup overhead and outer key allocation:

- cached record 48 bytes, internal PublicKey 16, Modulus 32, two Nat descriptors 48;
- modulus limbs and rr limbs: roughly `2 * modulusBytes` for these sizes;
- copied big.Int limbs: `modulusBytes + 32` (current math/big allocates four extra words).
- Totals roughly **944 / 1328 / 1712 bytes per 2048 / 3072 / 4096-bit entry**, before the substantial uncounted cache/runtime bookkeeping. These are source-layout estimates, **not measured heap costs**. NewNat's intermediate preallocation can add cold transient allocation beyond retained storage.

Cold misses also add weak-handle creation, map insertion/Swap, cleanup registration, snapshot copying, and possible forced heap escape of an otherwise stack-only PublicKey. Errors before conversion are not inserted, but later-invalid even-modulus/exponent conversions can be retained. The existing infrastructure's cleanup API supports interior pointers; PublicKey is pointer-containing, so the tiny *pointer-free* allocator caveat does not apply to ordinary keys. Experimental arena-allocated pointers are a separate caveat: AddCleanup rejects them; this is not tested here and should be treated as an experimental-API compatibility concern if relevant.

## Prepared files (all gofmt'd, uncompiled)

All three test files are in `src/crypto/rsa/`; backup copies under `round2/tests/rsa/`.

### `cache_internal_round2_test.go` (package rsa)

- `TestRound2PublicConversionMutations`: unchanged/equal replacement, in-place/set/raw-limb/replacement N, negative/zero/one/even/nil N, E=-1/0/2/3/max-int, restoration after errors. Compares cached-helper outcome to the exact uncached old helper and checks previously returned conversions stay immutable. Checks nil PublicKey panic category too.
- `TestRound2PublicCacheIdentity`: actual repeated-pointer hit, equal-valued replacement hit, E/N refresh, independent PublicKey-copy identity.
- `TestRound2PublicCacheConcurrent`: 16 simultaneous workers on 32 different read-only keys, including simultaneous conversion and by-value copying. Suitable for `-race`; no unsupported racing mutation.
- `TestRound2PublicCacheGC`: watches weak pointers to **both the public key and internal converted key** becoming nil. The latter establishes eventual value eviction, not merely weak-key death. Tests standalone and embedded PublicKey objects with a bounded wait.
- `TestRound2PublicCacheFootprint`: opt-in `RSA_ROUND2_CACHE_MEMORY=1`, 1024 retained public keys at each size, shared source N, before/after GC heap bytes and object deltas. Run each size in its own process to avoid previous subtest cleanup contaminating the measurement. This is diagnostic logging, not an asserted heap threshold or crypto benchmark.

Cache-identity/GC tests skip on the uncached baseline. **Set `RSA_ROUND2_REQUIRE_CACHE=1` on candidate runs**, which makes absence of an active cache a hard failure rather than a silent skip.

### `cache_public_round2_test.go` (package rsa_test)

- `TestRound2PublicCacheOperations`: warm then mutate the same public key pointer; compare each result with a fresh deep copy of the modified value through full PKCS1v15 Verify, PSS Verify and OAEP Encrypt. Valid OAEP encryptions under the original absolute modulus are decrypted and checked. Includes invalid key states, recovery, a tampered signature, oversized OAEP message, and invalid PSS options after warmup.
- `TestRound2PublicCacheConcurrentOperations`: simultaneous full Verify/OAEP operations on cold cloned 2048/3072/4096 public keys.
- `BenchmarkRound2PublicCache/{2048,3072,4096}/{VerifyPKCS1v15,VerifyPSS,EncryptOAEP}/{Warm,FreshStruct,FreshFull}`:
  - Warm keeps exactly the same key pointer and warms once outside timing.
  - FreshStruct allocates a fresh outer PublicKey **every iteration**, sharing an immutable N pointer. The new identity is never warmed; same source code/workload on baseline and candidate.
  - FreshFull allocates a fresh PublicKey plus independent big.Int N copy every iteration. No parsing is included; this isolates freshly constructed-key usage rather than conflating it with ASN.1 cost.
  - Benchmark functions call complete public operations. Hash/signature/message setup is outside timing except the ordinary new SHA256 hash for each OAEP call. OAEP uses real crypto/rand on both versions. Reports allocations.
  - Operations are dispatched through the same closure on both builds; this tends to make fresh key structs escape on both. This is a matched allocation control, **not proof that the cache causes no extra escape in a directly called application**. Inspect production escape diagnostics separately when parent permits compilation.
- `BenchmarkRound2PublicCacheParallel/keys={1,32}`: full warm public VerifyPKCS1v15 under concurrent shared-key and multiple-identity use. GOMAXPROCS=1 vs 2/real core count identifies lookup contention effects.

### `cache_x509_round2_test.go` (package rsa_test)

`BenchmarkRound2PublicCacheX509/{2048,3072,4096}/{RetainedIssuer,FreshIssuerPoolAndVerify}` builds a root/leaf chain outside timing and runs full `Certificate.Verify` (DNS/time/chain/signature checks). Explicit root pools and fixed CurrentTime avoid system-store/network/platform variability.

- RetainedIssuer reuses the issuer certificate and its RSA key pointer.
- FreshIssuerPoolAndVerify creates a fresh issuer public-key identity and root pool on **every** iteration, then performs full Verify; label deliberately makes clear it includes pool setup. Baseline performs identical pool creation.

Propagation is supported by source: `x509.checkSignature` passes the stored `*rsa.PublicKey` directly into public Verify, without cloning. A retained issuer/root pool can benefit; repeatedly parsing/rebuilding every issuer cannot be assumed to get warm hits. A retained leaf alone is not sufficient because verification uses the issuer's key. No x509 production change is proposed.

## Central measurement and validation plan

Parent only; first test the cache **alone**, then optionally cross it with the earlier 65537 specialization. Keep keygen timing separate. Match toolchain/CPU/GOMAXPROCS, precompile separate baseline/candidate binaries, interleave A/B/A or randomize order, and collect repeated samples with allocations.

```
# Baseline and candidate correctness; candidate must require real cache hits.
RSA_ROUND2_REQUIRE_CACHE=1 bin/go test crypto/rsa -run '^TestRound2Public' -count=1
bin/go test -race crypto/rsa -run '^TestRound2Public' -count=1
bin/go test crypto/internal/fips140cache crypto/rsa crypto/x509

# Complete public warm AND cold/fresh comparisons, not just the favorable leaf.
bin/go test crypto/rsa -run '^$' -bench '^BenchmarkRound2PublicCache/(2048|3072|4096)/' -benchmem -count=12
bin/go test crypto/rsa -run '^$' -bench '^BenchmarkRound2PublicCacheParallel$' -benchmem -count=10
bin/go test crypto/rsa -run '^$' -bench '^BenchmarkRound2PublicCacheX509$' -benchmem -count=10

# Separate processes for memory deltas; repeat each size and both builds.
RSA_ROUND2_CACHE_MEMORY=1 bin/go test crypto/rsa -run '^TestRound2PublicCacheFootprint/2048$' -count=1 -v
```

Repeat correctness in purego, 386, and FIPS on/only; request arm64 timing. Existing invalid signature/OAEP/PSS tests and FIPS approval tests must pass, not just the new cache tests. Run supported frozen snapshots without editing them. Internal cache concurrency tests do not justify concurrent mutation support.

For cleanup cost, profile the **FreshStruct** and **FreshFull** public benchmarks in separate runs long enough to exercise many GC cycles, with ordinary GOGC=100. Record runtime cleanup/map/GC CPU and peak/live heap as well as ns/op/B/op/allocs/op. A short GOGC=off control can isolate insertion cost, but must be bounded because dead weak entries remain until collection. Do not compare a warmed candidate with a baseline that performs fresh-key allocation, or claim cold neutrality from a no-GC run. After churn, force GC and allow cleanup goroutines to drain before inspecting retained heap; deletion is asynchronous.

Run the opt-in footprint probe in isolated processes, and inspect heap profiles too: its HeapAlloc delta includes allocator noise and is not a complete accounting of all runtime metadata or retained map capacity. A global cache needs a memory/churn acceptance decision even if CPU improves.

**Result table: all pending** — warm Verify/PSS/OAEP; fresh-struct and fresh-full time/allocations; concurrent throughput; retained bytes/entry; cleanup CPU/peak heap; x509 retained/fresh issuer. No measured percentages or heap totals claimed.

## Novelty / primary-source screen

Fresh Gerrit queries saved as `rsa-cache-novelty.json`, `rsa-precompute-novelty.json`, and `fips140cache-novelty.json`, plus the earlier open rsa/bigmod screen. No matching open native-RSA public conversion cache subject was found. This is a bounded text/subject search, not proof of absence of unpublished work.

Relevant historical work is explicit, not credited as new:

- **Merged CL 654096**, crypto/ecdsa,crypto/ed25519 private FIPS caches: created the exact weak-map/cleanup machinery reused here to amortize private-key PCT. Its measured signing wins are unrelated to our current RSA benchmark. Detail/reviews saved as `rsa-cache-654096.json`.
- **Merged CL 492935**, RSA optimized short exponentiation: author already noted repeated public modulus-constant setup as a bottleneck because PublicKey lacks Precompute. This is **not a newly discovered general bottleneck**. Today's rr implementation is different/faster; historical timings cannot establish our expected gain. Saved as `rsa-cache-492935.json`.
- Existing Boring RSA cache already uses copied-value mutation checks. We reuse that *semantic pattern*, not its old bcache implementation or Boring benchmark evidence.
- Merged CL 326012 introduced the bigmod RSA path; source archived for context. Issue 57752 remains a historical follow-up umbrella, not an open implementation of this cache.
- The current public-data timing contract is material; issue 67043 and its follow-up documentation discuss why RSA Verify input/key timing is not confidential. No signature-range reduction or validation change is made here.

Thus the **new proposal against this tree** is applying existing weak-cache infrastructure to native RSA public conversion, with a no-encoding snapshot check and explicit cold/lifetime tradeoffs. It is not an invention of Montgomery precomputation or weak-key caching.
