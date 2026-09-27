# Ed25519 public-key decode cache: reusable-key-only hypothesis

> **Final status: REJECTED / DEFERRED.** Parent testing fails existing TestAllocations (expected 0, got 7). Source restored. Earlier hypothesis and artifacts below are historical; do not weaken the test or add a new cache framework.

September 27, 2026. **No production changes, builds, tests, formatting, or timing by this agent.**

## Finding and bounded experiment

The existing public wrapper decodes the same 32-byte public key in `ed25519.NewPublicKey` on every Verify/VerifyWithOptions. Reusing the already-present `fips140cache.Cache` can retain this decoded point for an unchanged backing array. This removes decompression/square-root work on cache hits; it does **not** cache the subsequent variable-base multiplication table or introduce a new algorithm.

Prepared independent baseline patch: **`patches/ed25519-publiccache.patch`**, one production file, **+17/-4 lines**, against `04a082e1`. Reproduction: `patches/make-ed25519-publiccache-patch.py`. `git apply --check` passes.

- Adds `publicKeyCache fips140cache.Cache[byte, ed25519.PublicKey]`, same infrastructure/type of backing-pointer key as the existing private-key cache.
- One `publicKeyFromBytes` helper first performs the ORIGINAL length check and panic, then calls Get with `&publicKey[0]`.
- Cache validity requires `bytes.Equal(publicKey, cached.Bytes())`. A mutated slice causes reconstruction, not stale-key acceptance. Invalid mutations return errors; restoration of a valid encoding works. Pointer identity is only an index, never the validity proof.
- `VerifyWithOptions` calls the helper in the same position where it previously called NewPublicKey. Public Verify already delegates there, so Pure, ph and ctx share the helper. Options validation, signature parsing, service indicators, and all actual verification remain unchanged.
- Adds only a standard-library `bytes` import; bytes is already linked through the existing internal Ed25519 implementation. No new package implementation, external dependency, public API, unsafe/noescape/compiler trick, or internal-module API.

**Recommendation:** worth one controlled warm-vs-cold public Verify experiment, not a general recommended optimization yet. If the benefit is modest or cold-key/GC costs are substantial, reject. Unlike caching private keys to avoid required FIPS PCTs, public verification often processes a fresh one-use key.

## Is the cached internal key immutable during verification?

Yes in current source and both bundled old snapshots, by source inspection:

- `PublicKey` contains an `edwards25519.Point` and `[32]byte aBytes`. Construction decodes into the former and COPIES input bytes into the latter. No reference to the caller's backing array is stored.
- Verify's `verifyWithDom` only reads `aBytes` for hashing. `minusA := (&Point{}).Negate(&pub.a)` writes to a fresh local destination, not `pub.a`; Negate copies/negates fields into its receiver. Subsequent VarTimeDoubleScalarBaseMult operates on that LOCAL minusA and its own table/result. The shared public point is never a destination.
- `PublicKey.Bytes()` copies the `[32]byte` into a local array and returns that copy. It exposes neither input storage nor mutable shared cached state. Compiler allocation of this accessor during the equality callback should be MEASURED; do not assume inlining guarantees zero heap allocation.
- Thus simultaneous read-only Verify calls can share the cached value. Simultaneous modification of caller key bytes remains an ordinary unsupported data race, as before; we do not promise atomic snapshots of concurrently mutated slices. Sequential in-place mutation and mutation under user synchronization remain supported.

This is slightly more conservative than testing point equality: the hash includes the original raw public encoding. Noncanonical encodings that decode to the same point must NOT share stale original bytes. The callback compares exact input bytes; NewPublicKey copies them exactly, rather than canonicalizing them. Existing noncanonical/small-order signature acceptance is unchanged.

## Lifetimes, memory and cold costs

The existing Cache uses `weak.Make(&key[0])`, sync.Map, and runtime.AddCleanup. The cached value has no back-reference to the public-key allocation, so it does not defeat weak eviction. Entries disappear asynchronously after the input backing allocation becomes unreachable. Replacing a changed key's value does not register another cleanup for an already-present map entry; failures are not cached. Concurrent first use may construct more than one immutable value, but the returned values encode the same read-only bytes and the existing Cache handles publication/eviction.

This **does add a new cache instance**, but no new cache machinery. It changes performance/memory behavior:

- Repeated verification with the SAME backing storage saves decode, paying a weak-map lookup plus a 32-byte equality check. A subslice with the same first-byte address and length shares identity; a detached byte-copy does not, even with identical contents.
- First use still performs the original decode and also incurs weak-map insertion, cleanup registration and retention. The cached decoded object now escapes to the heap. Passing the caller's backing array to the weak cache can force it to escape where the original call allowed stack storage. Do not use noescape/unsafe or benchmark-specific forced escapes to obscure this cost.
- Each live cached key stores approximately **192 bytes of decoded-key payload** on the current 64-bit layout (four 40-byte field elements plus 32 bytes encoding), plus map/weak/cleanup bookkeeping and allocator overhead. Invalid signatures with a valid public key also populate the cache, as parsing still happens before signature validation. Decoding errors do not populate it.
- The cache is lifetime-bounded, not capacity-bounded. Long-lived collections of public-key slices can accumulate decoded entries; an interior pointer into a larger live allocation retains its entry until that entire allocation becomes unreachable. This is a material memory tradeoff for one-shot certificate/key workloads, not a free universally faster Verify.
- Invalid mutation can leave the old value resident until a future valid replacement or key GC, but the bytes check prevents its use. Mutation back to the previous bytes may reuse it correctly.

Baseline Verify is expected to have zero allocations on ordinary valid inputs (confirm via benchmark). Warm allocations must also be measured. Cold allocation and cleanup costs are mandatory results, not a footnote.

## FIPS and old snapshots

`NewPublicKey` is just length validation, point decode and raw-byte copy; it performs no per-operation service indicator, self-test or PCT that caching would skip. Actual Verify/VerifyPH/VerifyCtx still invoke their self-tests and RecordApproved/RecordNonApproved paths on every call. The public FIPS-only ctx prohibition stays in place and at the same dispatch point. Invalid-key length panic text and validation ordering are unchanged, including the check before indexing an empty slice.

Read both bundled `lib/fips140/v1.0.0-c2097c7c.zip` and `v1.26.0.zip`: BOTH export `ed25519.NewPublicKey` and `(*PublicKey).Bytes`, contain copied `aBytes`, and use the same read-only verification flow described above. Extracted source evidence: **`ed25519-snapshots.txt`**. Unlike the internal P256 optimization, this public-wrapper cache can apply when either old snapshot is selected without calling a new method. Still run compatibility tests in both modes; source inspection does not replace builds.

## Tests prepared outside source

### Baseline-compatible public tests and benchmarks

`tests/ed25519_publiccache_round2_test.go` → `src/crypto/ed25519/publiccache_round2_test.go`.

- Public behavior for Pure/ph/ctx: same-address valid-key mutation A→B, rejection of old A signature, success of B signature; mutation to off-curve encoding and back; detached copy independent of mutation; interior-pointer slice aliases; invalid signature/length/hash option.
- Exact public-key-length panic checks for nil/empty/short/long keys before first-byte addressing.
- Repeated verification over explicit GCs with key still alive.
- Parallel cold first use and warmed use, shared read-only keys, all variants. Run under race detector; no artificial concurrent mutation race.
- Uncached internal decode+Verify oracle for canonical/noncanonical identity encodings, x-sign alternative, invalid encoding and mutation back, all using the SAME public backing slice. Existing large edge-vector suite remains important for general acceptance.
- **`BenchmarkRound2EdVerifyCache`** measures complete public Verify (Pure) or VerifyWithOptions (ph/ctx), with paired `Warm` and `FreshBytes` for every workload. Pure/ctx messages: 32 B, 1 KiB, 64 KiB. ph uses its actual fixed 64-byte prehash input; prehash computation is excluded because it is not part of VerifyWithOptions. Baseline existing `BenchmarkVerification` is an independent control.
- `FreshBytes` uses a fresh `bytes.Clone` INSIDE each measured call. No forced global escape, no key ring warming, no pre-insertion into the cache. Baseline compiler may legitimately stack-allocate that copy while the cached implementation must escape it: this is an actual cost of the proposed change, not unfair measurement.

### Patch-only implementation/eviction tests

`tests/ed25519_publiccache_impl_round2_test.go` → `src/crypto/ed25519/publiccache_impl_round2_test.go`.

- Same storage+bytes returns same internal pointer; equal detached storage has an independent entry; cached Bytes does not alias stored state.
- Raw canonical→noncanonical encodings of the same point replace the cached value and retain EXACT original bytes; old decoded object remains unchanged. Invalid mutation cannot retrieve a stale value.
- A helper returns only a weak pointer to the cached VALUE after its separate input backing allocation becomes unreachable. GC+asynchronous cleanup should evict the map's strong value reference and clear the weak pointer. Uses a 10-second bounded polling timeout, no unsafe/noescape; runtime cleanup tests are inherently scheduling-sensitive and may need the existing cache package's GC-test conventions if flaky.

These tests are UNFORMATTED/UNCOMPILED and not executed. The implementation file references the new helper, so omit it in baseline timing builds; the public behavior/benchmark file is baseline-compatible. Run all existing Ed25519 tests, edge vectors, mutation/race tests and `crypto/internal/fips140cache` tests, default and purego. Run old snapshot public tests and FIPS modes (ctx tests skip where FIPS-only forbids them). Ensure large noncanonical-vector tests are not silently skipped due to unavailable testdata.

## Parent-only measurement gate

No child CPU work was run. Suggested controlled central tests:

```
./bin/go test crypto/ed25519 -run '^$' -bench 'Benchmark(Verification|Round2EdVerifyCache)$' -benchmem -count=12
```

Use independent binaries baseline vs this exact patch. Warm all service self-tests and fixture signing outside timing. Fresh-byte tests should run long enough that allocation/GC/cleanup throughput is included, rather than ending before cleanup debt is paid. Report median/variance and allocation changes for EVERY warm/cold pair; do not average them into one synthetic win. Alternate A/B and include small/large messages. Require amd64 and arm64 validation before broad platform claims. A large warm gain with an unacceptable fresh-key regression is not automatically suitable for unconditional caching in the standard-library API.

## Novelty / pending history screen

Fresh Gerrit search on September 27, 2026: `project:go (message:ed25519 OR message:fips140cache)` returned 80 changes, not truncated. No public-key decode-cache change surfaced. A second all-status query for public-key-cache phrases returned no relevant crypto change. Saved `ed25519-gerrit-history.json` and `ed25519-gerrit-cache-search.json`. This is a targeted search, not proof that no differently worded proposal exists.

Relevant existing work:

- **Merged CL654096, “crypto/ecdsa,crypto/ed25519: cache FIPS private keys”** introduced this infrastructure to avoid required private-key PCTs. Its commit explicitly acknowledges first-use allocations. Inspected its patch and review comments: they discuss private keys/weak-cache implementation, not public verification caching. Saved `ed25519-private-cache-cl.json`, `ed25519-private-cache-comments.json`, `ed25519-private-cache.patch.txt`. Credit that infrastructure; the incremental proposal is using it for public decoding, not inventing a cache. Its large FIPS signing gains are NOT evidence for this public Verify hypothesis.
- Open **CL839765**, reuse encoded R during signing, is unrelated and not claimed here.
- Open **CL834289**, DIT closures around internal Ed25519 calls, is adjacent wrapper work and might cause merge/context conflicts, but is not this cache optimization.
- Open **CL742920**, change incorrect-public-key-length panic behavior, is a semantic proposal; this patch deliberately preserves current panic behavior and does not absorb it.

Primary records:
```
https://go-review.googlesource.com/c/go/+/654096
https://go-review.googlesource.com/c/go/+/839765
https://go-review.googlesource.com/c/go/+/834289
https://go-review.googlesource.com/c/go/+/742920
```

## Final disposition — REJECTED / DEFERRED (September 27, 2026)

Parent compiled this prototype and reports that its functional cases pass, but the full public suite FAILS existing `TestAllocations`: **expected 0 allocations, observed 7**. That test calls `priv.Public()`, which creates fresh public-key backing storage each iteration; pointer identity therefore provides no reuse and exposes the predicted cold-cache allocation cost.

This is an existing public-operation allocation regression, not a test defect. **Do not change or weaken TestAllocations, force baseline allocations, or develop a new value-cache framework to rescue this prototype.** Parent restored production source. The patch and proposed tests remain historical experimental artifacts, not a recommendation or a passing candidate. No further CPU work is requested. Earlier “worth one experiment” language above describes the pre-measurement hypothesis and is superseded by this disposition.
