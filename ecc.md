# ECC low-complexity performance audit

Source: Go `2ff5743d9fd52fac166225e75df0c2c1edf82abb`. Primary source inspected locally, including the two bundled FIPS snapshots for the ECDH ownership question. **No production edits, no benchmarks, and no Go test/build runs performed.** Parent owns all timing. Three `ecc_audit_test.go` files were added and gofmt'd; they are not yet compiled. Proposed patches below are files outside the repository, not applied changes.

## Priorities

| Candidate | Confidence | Expected public benefit, not measured |
|---|---|---|
| 1. Defer unused ECDSA HMAC_DRBG update | Strong CPU lead; compliance review needed | Two HMAC computations plus one HMAC construction avoided per usual signature, randomized and deterministic |
| 2. Reuse ECDH internal owned byte slices | Very strong, minimal | One fewer retained allocation/copy per NIST public/private import |
| 3. Reuse already encoded ECDSA nonce | Very strong, one line | One fewer temporary encoding/allocation per generic signature and key generation |
| 4. Stop rebuilding fiat's fixed parse bound | Strong | Avoid Sub + Montgomery conversion + encoding twice per uncompressed NIST parse |
| 5. Compare fiat elements in Montgomery representation | Strong invariant, moderate review | Two Montgomery conversions/encodings avoided per on-curve equality check; one per zero check |

Do not claim percentage wins until public benchmarks confirm. Candidates 4/5 mostly improve public import/validation, not scalar arithmetic; accelerated P256 is unaffected. They compose with 2 but should be measured separately.

## 1. ECDSA HMAC_DRBG does an unused final update

**Source:** `src/crypto/internal/fips140/ecdsa/hmacdrbg.go:136-175`, especially `159-172`. Its own comment already suggests this optimization. Each call to `Sign`/`SignDeterministic` creates a fresh DRBG. `randomPoint` normally requests one nonce, then the object becomes dead. The final update nevertheless computes `HMAC_K(V || 0)` and `HMAC_newK(V)`, constructing another HMAC in between. P521 needing more than one hash output block does not mean a second Generate: its blocks are produced by the inner loop.

**Minimal change:** move the unchanged final-update block before the output loop, after argument/reseed checks, guarded by `if d.reseedCounter > 1`. Keep the increment after the loop. Reuse the existing counter, no new field/global cache. `ecc-drbg-lazy.patch` contains this change (~block move plus branch/comments).

**Correctness argument:** first request starts from Instantiate's state, unchanged. Every later request first materializes exactly the preceding request's deferred Update, then executes the unchanged output loop. Output sequences and counter/reseed limits are identical. Never remove updates between requests: rejection sampling, ACVP multi-request sequences, and s390x KDSA retries require them.

**Tests/benchmarks:** existing public `crypto/ecdsa.BenchmarkSign`, added `BenchmarkAuditDeterministicSign`, and existing `TestRFC6979`, nonce safety, signature vectors. Added internal `TestAuditDRBGSequence` compares against a frozen eager Generate for SHA256/SHA512, nil/plain/block-aligned personalization, repeated zero-sized requests, short/multi-block requests, and max-size output. Add panic-boundary/reseed-limit tests and run ACVP DRBG vectors before landing. Existing `TestRandomPoint` tests nonce rejection (independent of DRBG); multi-request oracle is necessary too.

**Risks:** FIPS review must accept deferred materialization of specified state. Output equivalence is not by itself a full compliance argument; the in-memory post-call K/V differs, and it has different backtracking-resistance properties if that internal state is inspected/compromised between calls. Scope is explicitly per-signature nonce generation, not the application's general RNG. Source comment supports the direction, but do not silently generalize it. Service-indicator calls and CAST/PCT paths stay intact. A frozen `GOFIPS140` module won't receive this internal optimization. BoringCrypto signing bypasses this path. s390x hardware signing still uses this DRBG and must exercise retries.

## 2. NIST ECDH imports duplicate already owned storage

**Source:** `src/crypto/ecdh/nist.go:103-117` and `120-143`; `src/crypto/internal/fips140/ecdh/ecdh.go`, `NewPrivateKey`, `NewPublicKey`, and `Bytes` accessors.

Internal constructors already clone the caller's private/public encoding. The public wrapper allocates a second clone of the same bytes. Existing public `GenerateKey` already shares these immutable internal-owned slices with the wrapper.

**Minimal change:** in non-Boring `NewPrivateKey`, `privateKey: fk.Bytes()` instead of `bytes.Clone(key)`. In `NewPublicKey`, move the wrapper's clone into the Boring branch; after non-Boring construction set `k.publicKey = fk.Bytes()`. `ecc-ecdh-clones.patch` has both changes. No verification/parsing is removed.

**Expected impact:** one allocation and 32/48/66 bytes of requested private storage, or 65/97/133 bytes of requested public storage, removed per successful import (allocator-rounded B/op savings differ). Private import CPU improvement likely tiny beside base multiplication. Public import is cheap enough for the allocation to be meaningful. Invalid non-Boring public imports also no longer make the early wrapper clone.

**Tests/benchmarks:** added public `BenchmarkAuditKeyImport/{P-256,P-384,P-521,X25519}/{Public,Private}`; X25519 is an unchanged control. Added `TestAuditKeyImportOwnership`: mutate constructor input and all public Bytes results, check equality and actual ECDH output. Existing full `BenchmarkECDH` includes public import and gives the honest end-to-end effect.

**Compatibility:** wrapper `PrivateKey.Bytes` and `PublicKey.Bytes` return copies, never exposing shared owned buffers. Internal code does not mutate the key slices. Boring's constructor branch must keep its own clone. I inspected `lib/fips140/v1.0.0-c2097c7c.zip` and `v1.26.0.zip`: **both** constructors clone input and both accessors return their stored slice, same as current source. Thus no new internal method or version probe is needed. Run ordinary, purego, both old-module modes, and Boring builds/tests.

## 3. ECDSA immediately decodes and re-encodes the nonce

**Source:** `src/crypto/internal/fips140/ecdsa/ecdsa.go:256-258` in `randomPoint`:

```diff
 if k, err := bigmod.NewNat().SetBytes(b, c.N); err == nil && k.IsZero() == 0 {
-    p, err := c.newPoint().ScalarBaseMult(k.Bytes(c.N))
+    p, err := c.newPoint().ScalarBaseMult(b)
```

`b` is already exactly `c.N.Size()` bytes. The P521 right shift has already happened. A successful SetBytes verifies that its value is canonical; Bytes emits that exact same fixed-size representation, including leading zeros. Keep all sampling, shifting, rejection and nonzero checks untouched. The point implementations read but do not mutate the scalar input. The bigmod scalar still exists for subsequent signature arithmetic.

**Patch:** `ecc-nonce-bytes.patch` (one production line). **Expected:** remove a Nat encoding and its output allocation per successful generic sign/keygen. Confirm allocation reduction with public Sign/GenerateKey benchmarks; generics/compiler behavior should be measured rather than assumed. No change to public verification. s390x KDSA signing calls `randomScalar` instead, so no signing effect there.

**Tests:** existing internal `TestRandomPoint` covers invalid/zero rejection and all four curves; public RFC6979 and vectors ensure exact outputs. Include P521 leading-zero cases and input immutability; no old-FIPS external API change. This edits near deliberately sensitive nonce-generation code, but not its distribution or arithmetic.

## 4. Fiat SetBytes recomputes the same constant every time

**Source:** `src/crypto/internal/fips140/nistec/fiat/{p224,p256,p384,p521}.go:79-84`; template in `fiat/generate.go`.

Every parse constructs field one, subtracts it from zero, converts the result from Montgomery form, encodes it, and reverses its endianness solely to obtain the constant bound p-1. Then it performs the correct constant-time range check. This bound never changes.

**Minimal change:** derive it once as a package-level constant-like value and keep the existing comparison. `ecc-fiat-bound.patch` updates the four wrappers and their generator template. This illustrative minimal patch uses an unexported never-mutated `pNNNMinusOneEncoding` initialized with the current exact expression. An alternative is to have the generator emit the literal fixed-length bytes; that avoids runtime initialization/state entirely but requires slightly more generator plumbing. This is constant materialization, not key-dependent cache state. Regenerate/gofmt before landing; illustrative patch appends output declarations rather than matching generator declaration placement.

**Expected:** two Sub/conversion/packing sequences removed for uncompressed SetBytes, one for compressed. Public `ecdh.P384/P521().NewPublicKey`, `ecdsa.ParseUncompressedPublicKey`, and `elliptic.Unmarshal` directly benefit. Public ECDSA Verify validates the public point in NewPublicKey and again in verifyGeneric, amplifying this smaller cost. P224 also benefits; P256 benefits only in purego/non-accelerated builds.

**Tests:** field input 0,1,p-1 accepted; p,p+1,max rejected; wrong lengths rejected; receiver unchanged on error. Compare generated constants to current `Sub(0,One).Bytes` and independent big.Int p-1. Public off-curve/noncanonical-coordinate tests and Wycheproof should retain identical acceptance. Test both purego and accelerated build selection. No external FIPS API change; old snapshots stay unchanged.

## 5. Fiat equality/zero checks needlessly leave Montgomery form

**Source:** same four wrappers, `Equal`/`IsZero` at `33-46`; template `fiat/generate.go`. Crucial invariant in **each** `{p224,p256,p384,p521}_fiat64.go:15-25`: all generated operations require and preserve values strictly below the prime in their **unique saturated representation**. The purego P256 precomputed table also stores canonical Montgomery residues, and generator/set/select paths preserve them.

Thus equality is simply constant-time XOR/OR over stored limbs, and zero is constant-time OR over limbs. Multiplication by Montgomery R is a bijection, and zero maps to zero. No inversion/reduction/serialization is necessary.

**Patch:** `ecc-fiat-equal.patch` changes the template and four wrappers. Fold limbs into uint64 `diff`, then `int(1 ^ ((diff | -diff) >> 63))`; analogous OR for IsZero. A shared constant-time zero helper would reduce repetition if maintainers prefer; avoid Go array `==`, which can compile to early exits. The proposed arithmetic has fixed work for each field size, including on 32-bit targets.

**Expected:** greatest proportional effect on cheap on-curve checks/imports. Scalar multiplication loops do not routinely call Equal, so don't advertise a large ECDH/signing speedup. Serialization's IsZero is tiny beside inversion. P224 compressed parsing additionally calls equality 95 times in Tonelli–Shanks, though thousands of squarings still dominate.

**Tests:** different arithmetic histories yielding the same element (Sub(a,a), p-1+1, a*1, Square vs Mul, Select), random reduced values, 0/1/p-1, all four sizes. Compare to old Bytes-based oracle and keep aliasing tests. Run public parsing/sign/verify/ECDH tests, purego and at least a 32-bit build. No fiat-generated arithmetic is changed. Explicitly **do not apply raw-limb equality to Edwards field**: its representation is not unique and can exceed the modulus. This invariant deserves a source comment so future representation changes don't invalidate the optimization.

## Benchmark/test files prepared

- `src/crypto/ecdh/ecc_audit_test.go`: public imports + alias/ownership test.
- `src/crypto/ecdsa/ecc_audit_test.go`: deterministic public signer + uncompressed public parser.
- `src/crypto/internal/fips140/ecdsa/ecc_audit_test.go`: output-sequence eager DRBG oracle.

Suggested parent-controlled commands (all serial, repeated benchstat runs; no timings yet):

```sh
./bin/go test crypto/ecdh crypto/ecdsa crypto/internal/fips140/ecdsa -run 'TestAudit|TestRandomPoint|TestRFC6979' -count=1
./bin/go test crypto/ecdsa -run '^$' -bench 'Benchmark(Sign|AuditDeterministicSign|GenerateKey|Verify|AuditParsePublicKey)$' -benchmem -count=10
./bin/go test crypto/ecdh -run '^$' -bench 'Benchmark(AuditKeyImport|ECDH)$' -benchmem -count=10
```

Use public import subbenchmarks for candidates 2/4/5, not only fiat microbenchmarks. Warmed signing/import differs from cold fixed-table initialization; added b.Loop benchmarks exclude setup, and deterministic signing explicitly warms the key cache/self-test. Check full end-to-end ECDH as a sanity bound. Rerun relevant public tests with `-tags=purego`, `GODEBUG=fips140=on`, both bundled GOFIPS140 versions, and BoringCrypto when supported. FIPS snapshots naturally won't include internal-source changes; the public ECDH ownership change should still apply.

## Existing optimizations: compatibility traps and rejected leads

- **Referenced CL839765:** duplicate R.Bytes remains in internal Ed25519 signer. Its reuse is already the supplied lead and is deliberately not counted here. Keep domain-separated PH/context behavior and signature-byte identity when applying it.
- **Referenced CL814601:** current `crypto/ecdh/x25519.go:103+` uses a method-set assertion for BytesMontgomery and falls back to the ladder. Do not replace this with a direct new-method call: old FIPS snapshots lack it. Do not extend Edwards multiplication to arbitrary X25519 peers: twist and cofactor/clamping semantics differ. The existing mapping correctly uses `(Z+Y)/(Z-Y)`, avoiding a separate affine inversion.
- **Ed25519 key cache:** public keys/private keys are mutable slices. Mutation comparisons and pointer-key lifetime handling are essential. Dropping comparisons or adding a public-key cache violates the no-new-cache objective. Hashing the seed is already cached for warmed Sign; do not claim seed-hash simplification is a steady-state signing win.
- **ECDSA private cache:** public big.Int fields may mutate; the byte comparisons cannot be dropped. Sign key construction validates Q on a cache miss, not on every cache hit. Public Verify really reparses Q twice, but storing decoded points needs a larger generic/type/cache/validation redesign. Not a tiny proposed patch.
- **ECDH repeat peer decoding:** NewPublicKey validates, ECDH re-decodes. Storing point objects in the nongeneric key changes layout and curve dispatch, and verification-step/FIPS reasoning; reject for this low-complexity pass.
- **Ed25519 verify compare:** replacing encoded-R comparison with point equality by decoding signature R would add a square-root operation and change acceptance of noncanonical R. Not equivalent.
- **Edwards SqrtRatio:** its internal check value serializes three times for Equal; normalizing once is possible but the square-root exponent dominates, and direct limb comparison without reduction is wrong. Not shortlisted.
- **Clamped scalar wide reduction:** SetBytesWithClamping passes 64 bytes whose top half is zero through SetUniformBytes, which executes an unnecessary third-chunk Montgomery conversion/multiply/add. A 32-byte-specialized reduction could omit it, but duplicates reduction logic and likely saves little on public keygen/cache misses; warmed Ed25519 signing does not clamp. Not shortlisted without evidence.
- **NIST decompression:** elliptic.UnmarshalCompressed parses an affine point then Bytes performs inversion of known z=1. A new decode-to-affine API could avoid it, but branching on general secret-derived z==1 is unacceptable, and changing internal/exported method availability needs old-FIPS guards. Unlike the supplied CL, the encoded output is not already present. Deferred.
- **Field arithmetic:** Edwards Invert/Pow22523 already batch squarings through SquareN; NIST inversions/square roots use addition chains; scalar-base paths already use precomputed tables. Avoid new chains, assembly, window widths, P521 Solinas arithmetic, or wholesale batching. These exceed review/maintenance constraints.
- **NIST first identity addition:** generic ScalarBaseMult/ScalarMult still perform one avoidable first identity Add, but removing it requires loop special cases for a fraction of total work; no strong public claim. Leading identity doublings are already skipped.
- **ECDSA signature encoding:** a fixed-capacity cryptobyte builder might reduce grow allocations, but existing raw r/s Sign/Verify wrappers intentionally bridge ASN.1 for compatibility. Not shortlisted because main crypto/DRBG dominates; do not redesign DER acceptance or duplicate signing dispatch.
- **elliptic normalizeScalar:** for short scalars, zero-pad/copy could replace big.Int SetBytes+FillBytes. Tiny, deprecated-only, little effect beside scalar multiplication. Long scalars still need modulo reduction; constant-time properties must not worsen. Not shortlisted.
- **FIPS PCT/CAST:** apparently repeated sign/verify/ECDH computations are required checks, not accidental duplicate work to delete. Ed25519 PCT could reuse its generation point, but changes keygen interfaces and only helps FIPS mode.
- **s390x:** KDSA uses an explicit nonce to preserve deterministic/hedged behavior and retries instruction interruptions/new-nonce cases separately. Keep parameter-block lengths/zero padding and retry behavior. Cannot benchmark on this host.

## Coverage map and limitations

Complete initial 97-file manifest: `ecc-files.txt`. Core production Go and generators were traced through public entry points down to conversion/arithmetic calls. Generated arithmetic and architecture assembly were reviewed at invariant/API/dispatch/loop-structure level, **not re-proved or instruction-by-instruction performance-audited**. No claim of exhaustive arithmetic-security review. Test names/harnesses and relevant bodies were inspected; compressed vector payloads cataloged, not decoded in this pass.

- `crypto/ecdh`: all three production files (`ecdh.go`, `nist.go`, `x25519.go`); equality/Bytes, constructors, imports, Boring/FIPS dispatch, ladder and fixed-base bridge. Tests: ecdh, Wycheproof harness.
- `crypto/ecdsa`: `ecdsa.go`, `ecdsa_legacy.go`, `boring.go`, `notboring.go`; all key conversion/serialization, cache use, signing/verification dispatch, custom-curve fallback, DER wrappers. Tests: main, Wycheproof, equal, example; vector fixtures cataloged.
- `crypto/ed25519`: public `ed25519.go` and internal FIPS `ed25519.go`, `cast.go`; seed/private/public construction, key cache, Pure/PH/Ctx sign/verify, FIPS tests. Main/Wycheproof/edge-vector test harnesses; sign.input.gz cataloged.
- `crypto/elliptic`: `elliptic.go`, `nistec.go`, `params.go`; native dispatch, marshal/unmarshal, scalar normalization, affine adapters, generic Jacobian compatibility methods. Main/P224/P256 test harnesses.
- Internal FIPS `ecdsa`: `ecdsa.go`, `hmacdrbg.go`, `cast.go`, `ecdsa_noasm.go`, `ecdsa_s390x.go`, `ecdsa_s390x.s`; math, sampling, DRBG, self-tests and hardware fallback. Main test file.
- Internal FIPS `ecdh`: `ecdh.go`, `cast.go`; validation/sampling, owned bytes and repeated decoding, self-test. order_test.go cataloged.
- `edwards25519`: `doc.go`, `edwards25519.go`, `scalar.go`, `scalarmult.go`, `tables.go`; encodings, conversions, scalar reductions, aliases, constant-time and variable-time tables. `scalar_fiat.go` generated arithmetic invariant/operation boundaries reviewed. Scalar/point/table tests and alias suites cataloged.
- Edwards `field`: `fe.go`, `fe_generic.go`, `fe_amd64.go`, `fe_amd64_noasm.go`, `fe_amd64.s`, `_asm/fe_amd64_asm.go`; noncanonical bounds, reduction/encoding, Equal/sign, inversion/sqrt, Mul/Square/SquareN, architecture build tags and generator. Field tests/benchmarks/alias tests cataloged; _asm go.mod/go.sum are tooling metadata.
- `nistec`: `nistec.go`, `generate.go`, generated `p224.go`, `p384.go`, `p521.go`, hand-maintained `p256.go`, `p256_asm.go`, `p224_sqrt.go`, `p256_ordinv.go`; serialization/validation, projective/Jacobian paths, table selection, scalar multiplication and inversion. `p256_table.go` is generated embedded fixed-table data; endian conversions inspected, table data not rederived. `p256_asm_{amd64,arm64,ppc64le,s390x}.s` and `_asm/p256_asm.go` cataloged by primitives/control-flow/build tags; no assembly candidate proposed. Four nistec test/benchmark files cataloged; _asm module files are tooling metadata.
- `nistec/fiat`: `generate.go`, `{p224,p256,p384,p521}.go`, four `_fiat64.go`, four `_invert.go`, `cast.go`, README/Dockerfile, benchmark_test.go. Wrapper template and all four invariant headers checked; arithmetic generation and inversion contracts inspected. Generated operation bodies sampled, not independently formally verified.

## Follow-up: safer existing HMAC fast path? (no builds/timings)

Reviewed the complete current `internal/fips140/hmac/hmac.go`. **No existing rekey/reinitialize fast path can replace final `d.newHMAC(K)` while preserving the eager state.** `HMAC.Reset` only restores the SAME key's cached ipad/opad states. `Clone` likewise preserves that key (and allocates two hash clones); it cannot turn K into the freshly derived K'. Reusing either directly would compute the wrong DRBG state/stream. The two final HMAC outputs are different-key, dependent computations, not redundant hashes that can be merged.

An internal `ResetKey` could reuse hash objects/buffers, but it is a new API/ownership path rather than reuse of an established one: ipad/opad may have been replaced by serialized states and may share storage with HMAC clones; it must reset marshaled, keyLen/service-indicator state, handle long keys, and avoid corrupting live clones. Its likely gain is object allocation/pad preparation, not eliminating two HMAC evaluations. Under the clarified significant-public-CPU criterion, I would **not** advance that speculative larger change without a full Sign profile/measurement. General HMAC pad-allocation tuning is likewise not evidence of significant Sign speedup.

The first Reset in a two-use HMAC instance serializes inner/outer states even if no later Reset occurs (e.g. K1 inside Instantiate), but there is no existing no-cache Reset to invoke. Adding one creates another internal API and likely saves mostly allocation/serialization, not hash compressions; not a strong independent full-operation candidate.

Detailed lazy-test/safety review is in `ecc-drbg-tests-review.txt`. Important gaps: current sequence begins with zero-length Generate and does not directly test the common first-nonempty request; also add invalid-request/reseed-limit nonmutation checks. Output equivalence is strong but cannot demonstrate equal post-call secret-state security: lazy V retains the nonce prefix on the normal short-nonce path. This is a review gate, not an incidental FIPS footnote.

Clarified scope: allocation-only ECDH clone and nonce-encoding candidates are no longer recommended for the final shortlist absent meaningful **public full-operation CPU** measurements. BoringCrypto is excluded. Fiat candidates should be judged by public NewPublicKey/Parse CPU, not field microbenchmarks. Lazy DRBG should only be presented if public Sign speedup is significant and the state/security tradeoff is explicit.

## Fiat property tests and literal-bound patch ready

Added `src/crypto/internal/fips140/nistec/fiat/ecc_audit_test.go` (gofmt only, **not compiled or run**). `TestAuditFieldEncodingAndEquality` has P224/P256/P384/P521 subtests:

- Independent big.Int modulus expressions; cross-check p-1 against old `Sub(0,One).Bytes`.
- 0,1,p-2,p-1,p,p+1,max, malformed lengths, and deterministic random input acceptance against integer `< p` oracle.
- Error leaves receiver unchanged; returned receiver/nil pointer behavior; input immutability and no encoding alias.
- Equal/IsZero against the old canonical-Bytes/constant-time-compare oracle over all pairs of fixed boundary plus 64 deterministic random field values.
- Equal-valued histories through Set, roundtrip, add/sub/zero/one, cancellation, double negation, Square vs Mul, Select, wraparound p-1+1, and in-place arithmetic. Comparison must not mutate its inputs.

`ecc-fiat-bound-literal.patch` **supersedes** the illustrative package-init bound patch. It emits literal fixed-length p-1 bytes inside SetBytes, with no package-level state or runtime arithmetic. Generator imports elliptic/math/big (generator only), adds reference curve Params, computes p-1 at generation time without mutating the reference prime, and emits it with template `%#v`. All four outputs match this placement and are gofmt'd. Patch passes `git apply --check`; generator itself has not been run (avoids compilation/Docker). Reproduction script: `ecc-fiat-literal-patch.py`.

Parent should measure public `crypto/ecdh.BenchmarkAuditKeyImport` and `crypto/ecdsa.BenchmarkAuditParsePublicKey` separately for equality and literal-bound changes, **also existing `crypto/ecdsa.BenchmarkVerify`** to expose the smaller end-to-end signature-verification effect. Avoid extrapolating parse percentages to ECDH exchange or verification; scalar arithmetic dominates those larger operations. P256 accelerated is the unchanged control; purego P256 is affected.
