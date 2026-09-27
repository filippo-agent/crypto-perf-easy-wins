# Round 2 — native HMAC state caches / KDFs

## Ready for central evaluation (not yet compiled, tested, or timed)

**Best lead: restore the native SHA2/SHA3 digest with value assignment instead of binary unmarshaling on every reused HMAC.** New design is substantially smaller than the hypothesized `ResetTo`/`CloneInto` API: no hash API is needed. The exported internal Digest types are already entirely value-copyable; whole-value assignment is legal despite their private fields. HMAC already imports all three packages for its approval check.

Artifacts, outside the source tree:
- `round2/hmac-native-copy.patch`: localized production proposal changing only `src/crypto/internal/fips140/hmac/hmac.go`.
- `round2/hmac-files/hmac.go`: gofmt'd proposed complete file.
- `round2/hmac-files/native_round2_test.go`: copy to **src/crypto/hmac/native_round2_test.go**; complete public HMAC, PBKDF2.Key, and HKDF.Key tests/benchmarks, same source usable with baseline and candidate.
- `round2/hmac-early.md`: early finding.

No production changes, builds, benchmark processes, or timing performed by this worker. gofmt only. Parent owns application, compilation and timings.

## Mechanism and expected scope

Current Reset already saves the state after hashing the ipad and opad, so this removes **no cryptographic compression in steady state**. The overhead removed is serialization at the first Reset and, importantly, two endian-converting/validating UnmarshalBinary calls for every subsequent Reset/Write/Sum operation. Sum still finalizes inner and outer normally, with normal service-indicator calls.

Add `native any` to HMAC; on the first Reset save an immutable `*[2]sha256.Digest`, `*[2]sha512.Digest`, or `*[2]sha3.Digest`. Thereafter Reset assigns the saved inner value into the live inner digest, and Sum assigns the saved outer value into the live outer digest. A pair is one allocation instead of the two marshaled-state allocations. Cache setup stays lazy, preserving the existing policy for one-shot HMAC. Discard the receiver's old pad slices once the native cache is installed. No unsafe operation, assembly, architecture limitation, public API, or mutable global cache.

**Primary whole-operation hypothesis:** public PBKDF2.Key(SHA256, ..., 4096, ...) runs two restorations for essentially every iteration, so removal of byte-order conversions/validation and interface calls can matter. SHA-NI makes overhead a larger fraction of SHA256 on normal amd64; SHA512 may show a smaller percentage. Long multiblock HKDF and reused public HMAC may improve. One-block HKDF has no warm cache and is a strict regression control, not a claimed beneficiary.

SHA3 is included because its state is also value-copyable, but its existing marshal/unmarshal already mostly copies native bytes and Keccak dominates. If it buys nothing, omit SHA3 specialization without changing generic correctness; test memory/cold tradeoffs before doing so.

## Memory and cold-path costs — important acceptance condition

- On 64-bit the original HMAC layout is 96 bytes; with `native` placed **before** the two flags it is 112 bytes (not 120; preserve field ordering in supplied patch). Every cold HMAC pays those 16 additional bytes and one nil-cache switch in Sum.
- Native Digest value sizes by source layout: SHA256 120 bytes, SHA512 216 bytes, SHA3 240 bytes. Pair allocations request 240/432/480 bytes; actual allocation size-class rounding must be measured. Current two marshaled-state byte slices request 108+108, 204+204, or SHA3 marshal-size pairs respectively.
- Cache buffers are immutable and may safely be shared by Clone. Retaining the original key-pad buffers after first Reset is unnecessary; receiver slices are set nil. A clone made before Reset keeps its own slice headers and remains valid.
- Full-value assignment copies the inactive message buffer for SHA2 too. It is simple and safe, but a selective `ResetTo` helper that copies only h/nx/len/variant and x[:nx] is a possible **follow-on only if profiling justifies it**. For an HMAC padded-key checkpoint nx is zero. Don't begin with that API; don't claim full-copy memory traffic is free.
- Allocation-count improvement alone is insufficient. Require complete cold/two-use HMAC, PBKDF2 at 1/2/4096 iterations, one-block/multiblock HKDF, and ECDSA signing controls.

## Generic hashes / key and clone semantics

Recognize exact native concrete pointer types only, with an additional concrete-type check on outer. Wrapped hashes and arbitrary hash.Hash implementations take the existing marshalable fallback unchanged, including ignored MarshalBinary errors and propagated/panicked UnmarshalBinary errors. Nonmarshalable hashes still rehash pads. A constructor returning different native families does not accidentally hit a wrong type assertion. A native pair can correctly retain differing SHA2 variants if an unusual constructor returns them (each live object is restored to its own captured variant).

HMAC.Clone already copies the HMAC struct then clones the mutable inner/outer digests. Sharing the new pair in its struct copy is safe because the pair is never mutated. Never use the cached digest itself as the working outer. Keep the uniqueness guard on hash constructors. Sum's caller-prefix and non-destructive semantics are unchanged. New still fully processes/copies the key before returning; later key mutation cannot affect state.

Native cache contains key-derived secret state and must be protected like the existing marshaled secret state. New does not change data-dependent control flow; native-family checks and buffer sizes depend on public algorithm selection. No new output, random input, nonce generation, or validation behavior.

## FIPS / snapshot boundaries

The patch only changes implementation inside `crypto/internal/fips140/hmac`. Public constructors and `fips140hash.UnwrapNew` remain unchanged. No public package acquires a dependency on a new method absent from older snapshots. Old snapshots remain untouched and keep old behavior when selected. BoringCrypto remains a separate public path and is not a performance claim.

Preserve HMAC.Sum's entire approval/type/key-length preamble, and both real Digest.Sum calls. MarkAsUsedInKDF and its short-HMAC-key exemption are unchanged. Native Reset/copy methods do not record approval now and still do not after the change. Validate service-indicator tests with FIPS on, plus CAST/ACVP paths. Public SHA3 gets unwrapped to the module Digest; its unusual Clone signature currently means public HMAC Clone may return ErrUnsupported — tests explicitly preserve that instead of inventing support.

## ECDSA hmacDRBG coordination (no DRBG patch)

`newDRBG` creates several fresh HMACs and performs a Reset in the second update. Generate resets a retained HMAC per output block and again for the final update, then creates a fresh HMAC. Thus native state caching reaches ECDSA sign, but its HMAC reuse counts are low and larger cold object costs could offset improvements. Do **not** combine with first-pass lazyDRBG (already rejected) or advertise that old idea again. Central control: existing **crypto/ecdsa.BenchmarkSign/{P256,P384,P521}** and correctness vectors in crypto/ecdsa + crypto/internal/fips140/ecdsa. Existing `TestAuditDRBGSequence` compares two implementations that both use current HMAC, so it is NOT an independent oracle against a shared HMAC bug; use existing known-answer DRBG vectors / deterministic signature tests as well as our independent raw-pad HMAC/KDF oracle.

## Concrete correctness sources and remaining test matrix

Prepared `native_round2_test.go`:
- independent raw-pad HMAC reference never caches/clones/marshals;
- 6 SHA2 variants, 4 SHA3 variants, SHA1, opaque SHA256 wrapper, marshalable SHA256 wrapper;
- keys 0/1/16/block-1/block/block+1/2block+3; messages empty, small, SHA2 pad boundaries, full block boundaries and multiblock;
- first use and 3 reused rounds; repeated Reset; fragment writes; nil writes; caller prefix; repeated Sum; Write-after-Sum; mutation of original key buffer;
- Clone before and after native-cache setup, branch divergence, concurrent operations on distinct clones for -race;
- full PBKDF2.Key vs independent oracle at iterations 1/2/17, partial and 1/2/4-block outputs;
- full HKDF.Key vs independent oracle through maximal 255-block output; zero output; excessive-output rejection;
- PBKDF2 nonpositive output rejection. Iteration validation itself is unchanged (open CL765002), don't conflate with this optimization.

Run existing public HMAC custom constructors/uniqueness/unmarshal-error tests and module tests too. FIPS-only mode rejects intentionally short-key/non-approved-hash cases in our broad test matrix: use normal mode and `GODEBUG=fips140=on` for that matrix, and existing dedicated approved-only tests for `fips140=only`. Need purego, -race, and old snapshot selection tests. Unusual-architecture compilation is correctness only, not a performance selling point.

## Public benchmark plan

All prepared benchmarks call live public production entry points; compile them unchanged in both versions. Never compare a `Base` helper compiled after patching with an earlier candidate function and call it a baseline.

Start with:
- `BenchmarkRound2PublicPBKDF2/SHA256/Iter4096/Blocks1` (primary), then SHA384/SHA512/SHA3_256;
- `BenchmarkRound2PublicPBKDF2/SHA256/Iter(1|2)/Blocks1` cold controls;
- `BenchmarkRound2PublicHMAC/SHA256/32/(Cold|Warm|TwoUses)` and same SHA384/SHA512/SHA3;
- `BenchmarkRound2PublicHKDF/SHA256/Blocks(1|2|8|255)`; SHA384/SHA512 controls;
- SHA1/OpaqueSHA256/MarshaledSHA256 controls must not suffer meaningful regressions;
- `crypto/ecdsa.BenchmarkSign`, above.

All ReportAllocs. Baseline is branch baseline with existing PBKDF2 XOR already committed. Keep pending HMAC stack/HKDF hoist absent in the first comparison, then optionally evaluate interaction on top of them if accepted separately. Require repeated interleaved central runs, not a helper microbenchmark success. No speedup claim yet.

## Novelty check, 2026-09-27

Fresh Gerrit primary API searches saved in `hmac-open-gerrit.json`, `hmac-history-{0,1,2}.json`. Open hmac/pbkdf2 searches show known stack CL520269, DIT wrapper CL834291/834295, iteration validation CL765002, benchmarks and TLS Lucky13 work; no matching native-cache proposal found by these queries. Broader state/clone/marshal/copy history surfaced **merged CL27458** (original repeated-key serialization cache) and Clone error wrapping, not a native-copy cache. ResetTo/CloneInto commit-message queries were empty. This is a scoped novelty check, not proof of universal originality.

Distinct from known pending HMAC stack-allocation and HKDF loop-hoist work; neither is re-presented as a finding. Also distinct from existing cache optimization itself: we retain precompressed pads and remove restore serialization overhead.

## Other KDF/native-hash search results

No stronger independent lead found yet. HKDF nil salt, one-shot SHA2 direct padding, SHA3 output copying, pad coalescing and lazyDRBG are previously reviewed/rejected/known and not findings here. Eliminating generic HKDF constructor probes or bypassing FIPS-aware public wrappers introduces public/custom constructor behavior and snapshot hazards for small cold-only savings. Avoid those unless a separate public-operation measurement establishes motivation.

### Follow-up requested controls (prepared, not run)

Added `TestRound2HMACMixedNativeConstructors` to public test source. Covers outer SHA256 / inner SHA512 and reverse (generic marshal fallback), SHA224/256 both orders, SHA384/512 both orders, SHA512/224-vs-256, mixed SHA3 sizes, and SHA3-vs-SHA256. Independent raw-pad oracle instantiates outer/inner separately; tests own Size/BlockSize, long keys, repeated Sum **before any Reset**, clone before Reset followed by original pad-header release, clone after Reset, and repeated warm Reset. Existing exact-pair checks in patch ensure no mixed-concrete-type fast-path assertion; full copies preserve independent same-concrete-type variant flags.

Patch already sets both raw pad headers nil after successful native cache creation. Clones retain independent slice headers, and pad bytes are never mutated.

Added outside-tree `hmac-files/ecdsa_round2_test.go`, target `src/crypto/ecdsa/hmac_round2_test.go`, with **BenchmarkRound2HMACOrdinaryECDSA/{P-256,P-384,P-521}**. Complete randomized public SignASN1; setup/one verification outside timed loop; ReportAllocs. Existing public HMAC benchmark Cold is complete New/Write/Sum, Warm is Reset/Write/Sum, TwoUses includes cold construction and first cache allocation.

No build/test/timing work performed while CTR timing runs; additions are source-only and latest appended source has not been gofmt'd.

### Selective SHA2 restore follow-up

Parent requested minimal live-state helper after initial native-pair timing. Prepared **hmac-native-resetto.patch**, incremental to native-pair patch; detailed rationale/test map in **hmac-resetto.md**. SHA256/SHA512 ResetTo copies h/nx/len/variant and x[:nx] only. Native HMAC states have nx=0, avoiding dead 64/128B buffers on both per-MAC restores. No new interface, no cold layout change, SHA3 unchanged. Source-only tests for all buffer counts, variants, marshal/Sum, continuation, self-copy and alias safety are under hmac-files; no CPU work run.
