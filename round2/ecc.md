# ECC round-two: early source finding (2026-09-27)

> **Final status: NO RECOMMENDED ECC WINNER.** Ed25519 pointer-cache fails existing allocation expectations (0→7); P256-only verification gain is not significant (4.7%, p=.101). See final dispositions; artifacts are unselected experiments.

**Strongest lead: inversion-free final ECDSA verification check.** Current `verifyGeneric` computes `p1.Add(p1,p2).BytesX()`, doing a full field inversion solely to compare `x mod n` with public r. A small `EqualX([]byte) bool` point method can compare X with r·Z (generic projective P224/P256/P384/P521) or r·Z² (accelerated P256), with infinity rejection and strict canonical field parsing. On failure, retry the exact integer r+n only if it fits and is <p. All these curves satisfy n<p<2n. This preserves the exceptionally rare but valid x>=n case and avoids accepting wrapped r+n>=p. No scalar arithmetic/point representation rewrite is needed. Public `crypto/ecdsa.VerifyASN1`/`Verify` are the timing target; no timing claims yet.

**Second cheap experiment:** verification currently shares signing's constant-time `inverse(c,w,s)`. Existing `bigmod.Nat.InverseVarTime` can invert the already-public, nonzero canonical s without new arithmetic. Only change the verifier, NEVER the shared inverse/signing path. P256 already has a hand-tuned order chain; it may be a regression there. P224/P384/P521 currently use generic bigmod.Exp and are more promising. Test separately from final-coordinate change. No production edits/compiles/CPU timing performed.

Current nistec exposes no CombinedMult/MultiScalar method, and verifier already uses ScalarBaseMult for G. Combining them is therefore new multiplication machinery, not an overlooked call-site fast path. Lower priority than the bounded helper.

Artifacts and full correctness/novelty details will follow in this file.

## Ready for parent selection (no timing yet)

Two independent, unapplied patches are prepared:

- `patches/ecc-projective-x.patch`: 7 files, +123/-16. Adds `EqualX([]byte) bool` to the four portable point implementations, point generator template, accelerated P256, and the internal ECDSA generic constraint. Replaces only the verifier's final affine conversion/reduction. The hand-maintained portable P256 file is updated separately from the template. No Fiat field changes or new representation.
- `patches/ecc-verify-vartime-inverse.patch`: one verifier-only call-site substitution using existing `bigmod.Nat.InverseVarTime`. Test independently; a final version can preserve P256's specialized chain if timings require it. This is a hypothesis, not an asserted speedup: the existing binary-GCD implementation is not a fast divsteps/BEEU implementation, and may lose to specialized exponentiation.
- `patches/make-ecc-patches.py` reproduces both patches from the baseline source. Both passed `git apply --check` before unrelated parent edits. No production edits, builds, test runs, gofmt, or benchmark execution were performed by this agent. Existing unrelated source changes in `aes/ctr.go` were observed and left alone.

### Projective proof and acceptance boundaries

For each supported curve n < p < 2n. Existing validation enforces 0<r,s<n and canonical curve point encodings. A finite point has canonical affine x in [0,p). Therefore `x mod n == r` iff `x == r` or `x == r+n < p`. Equality can be checked without inversion because Z is nonzero in a field:

- Portable P224/P256/P384/P521 store homogeneous projective coordinates, x=X/Z. Compare X against rZ.
- Accelerated P256 (`p256_asm.go`, shared amd64/arm64 implementation) stores Jacobian coordinates, x=X/Z². Compare X against rZ²; r must first be converted to Montgomery form using the existing RR constant/multiplication convention. Reuses `p256Sqr`, `p256Mul`, `p256LessThanP`, `p256Equal`, `isInfinity`; no assembly changes.

The helper rejects infinity BEFORE comparing, including representations with X=0,Z=0. It strictly parses a fixed-length field element and rejects p or greater, never reduces its input modulo p. In the verifier, r is re-encoded from the validated bigmod Nat, preserving existing acceptance of whatever scalar encodings `SetBytes` accepts. For the rare/invalid second candidate, r+n is formed by byte-wise integer addition with a carry; overflow beyond the field byte width is rejected. The same field parser then enforces r+n<p. This intentionally avoids new prime/order constants and custom field comparisons. `c.N.Nat().Bytes(c.N)` supplies n only on the fallback path. P521 cannot be treated as a 528-bit prime; its field parser enforces the actual 521-bit limit.

No changes to `NewPublicKey`, compressed point decompression, canonical coordinate checks, hash truncation, DER decoding, r/s bounds, or custom-curve fallback. Public APIs continue returning bool, although the internal error text for infinity becomes the ordinary invalid-signature error. No promise of stable internal error strings was found. The compressed internal key path remains supported even though public `ParseUncompressedPublicKey` requires uncompressed input.

No receiver mutation: the helper only reads point coordinates and uses local field elements. Its supplied byte slice is read-only. The verifier mutates newly allocated `r.Bytes`, not `sig.R`. No retained state, global cache, key-local table, mutation/concurrency contract, or secret buffer lifecycle changes. Invalid signatures pay a second parse/candidate comparison; measure these separately, not just valid signatures. The existing Fiat SetBytes/Equal implementation is left intact so this is not a repackaged field-bound/equality experiment.

### FIPS, secrets, and version boundaries

Both changes stay wholly inside `crypto/internal/fips140`. Existing public dispatch, `RecordApproved`, CAST and PCT calls remain. Signing still performs `BytesX`, and the secret nonce inverse still uses the original constant-time `inverse` routine. `EqualX` is documented for public verification inputs. The variable-time alternative is only appropriate in `verifyGeneric`: its own public Verify documentation already explicitly permits timing leakage of all inputs. NEVER replace the shared `inverse` helper with variable-time code; signing uses it with secret k.

Mathematical equivalence is strong, but internal module/algorithm changes still need normal FIPS review and ACVP/CAST validation; this is not a claim of automatic compliance approval. Both point and ECDSA changes ship as one coherent current-module edit. Frozen GOFIPS140 snapshots replace these internal packages together and remain unoptimized; no new method is called directly from a public package, so no feature-probe/fallback bridge should be needed. Test public compatibility against both snapshots anyway. s390x KDSA hardware verification bypasses `verifyGeneric`; its fallback is compatible. BoringCrypto is outside scope. Main required performance targets are default amd64, purego, and arm64.

### Tests prepared outside the source tree

These files have NOT been formatted, compiled, or run. Parent should copy to the indicated package as `ecc_round2_test.go`, then gofmt/compile centrally:

1. `tests/crypto_ecdsa_ecc_round2_test.go` → `src/crypto/ecdsa/ecc_round2_test.go`.
   - All four curves assert n<p<2n.
   - Construct an actual point T with x>=n and set Q=[r^-1]T, s=1,e=0. Then verification recomputes T and MUST accept the r+n case, with both low and high s. Random signatures essentially never exercise this.
   - Construct invalid T with small x and r=x+p-n. A wrongly field-reduced r+n would match and accept; correct code rejects.
   - Separately construct integer-byte-carry wrap cases for P224/P256/P384; P521's encoding has spare bits and cannot reach this byte-overflow case with r<n.
   - Q=-G with r=s=e=1 forces R=infinity and must fail.
   - Checks zero/out-of-range/negative r/s, trailing DER, public VerifyASN1 and legacy Verify.
   - Complete public `BenchmarkRound2VerifyNormal`: 8 deterministic, normal-sized-signature fixtures per curve, valid and hash-tampered variants. Includes warmup/fixture verification and full public DER/key-parse/arithmetic work on every iteration.
   - `BenchmarkRound2Verify` separately tests rare r+n, invalid wrap, and s=1/n-1 edges. **Do not use its degenerate s=1 timings to estimate normal variable-time inversion benefit.** Existing BenchmarkVerify and the normal-fixture benchmark are the headline controls.
2. `tests/nistec_ecc_round2_test.go` → `src/crypto/internal/fips140/nistec/ecc_round2_test.go`.
   - Helper vs old BytesX equality oracle for generator, scalar results, Double/Add results, n-1 scalar, and computed infinity; wrong x, malformed lengths, p,p+1,max, all-zero encodings.
   - Uncompressed and compressed point imports (Z=1), point/input immutability, and arithmetic-generated nontrivial Z. Run default and purego to cover BOTH coordinate representations.
3. `tests/internal_ecdsa_ecc_round2_test.go` → `src/crypto/internal/fips140/ecdsa/ecc_round2_test.go`.
   - Frozen pre-change `verifyGeneric` oracle, including original constant-time inverse, affine conversion and modulo-n comparison.
   - Deterministic signatures at hash lengths 1,28,32,48,64,66,80; compressed/uncompressed keys; invalid public encodings/coordinates; zero/order/out-of-range and leading-zero signature encodings; input nonmutation.
   - Compare acceptance, not errors, so existing internal acceptance quirks are preserved.

Still required: all existing public/internal ECDSA tests, Wycheproof vectors, RFC6979, race/concurrent Verify, CAST/PCT/ACVP, default/purego, arm64 compile+run when available. The new point-helper test requires the current patched module; for old snapshots run PUBLIC tests rather than expecting an old nistec package to expose the new internal helper.

### Central measurement plan

Parent should build four variants, without concurrent work: baseline, projective only, variable-time only, both. Keep P256 specialized chain variant available if the general inverse loses there. Run repeated A/B/A whole-public-operation measurements of:

```
./bin/go test crypto/ecdsa -run '^$' -bench 'Benchmark(Verify|Round2VerifyNormal|Round2Verify)$' -benchmem -count=10
```

Also unchanged public Sign/GenerateKey/ECDH controls. Warm base-point tables/self-tests before timing. Deterministic fixtures prevent random differences in scalar Hamming patterns and inverse iterations from masquerading as gains. Check valid and fully processed invalid inputs separately. Evaluate default amd64 and purego; require arm64 public-operation confirmation before claiming universal improvements. No microbenchmark-based percentage claims. Binary size and B/op matter but do not replace CPU evidence.

### Novel-versus-known check (September 27, 2026)

This is an original *Go call-site opportunity*, NOT a newly invented ECDSA algorithm. Primary sources saved alongside this report:

- BoringSSL commit `3d450d2844db825a906fc19f7bb1e6ce765047db`, title “Speed up ECDSA verify on x86-64,” explicitly describes saving the affine inversion by comparing r·Z². It also combines variable-time scalar multiplication and x86 binary inversion. Its historical whole-operation measurements cannot be attributed just to this helper or projected onto Go. The commit credits Nir Drucker and Shay Gueron; saved `ecc-boringssl-history.json`.
- Decred's secp256k1 `ecdsa/signature.go` describes both rZ² and (r+n)Z², including the required r+n<p guard, and credits Greg Maxwell for the suggestion. Saved `ecc-decred-reference.go.txt`. We use the argument, not secp256k1-specific bounds or implementation.
- Fresh Gerrit open query `project:go status:open (message:ecdsa OR message:nistec)` returned existing scalar-mult refactor/dismantling/field work but no matching inversion-free-verification change. Saved `ecc-gerrit-open.json`.
- Broader all-status query for `EqualX`, `InverseVarTime`, or `projective` found CL632415, merged 2024, adding the existing bigmod inverse used for RSA keygen. No ECDSA reuse surfaced. Saved `ecc-gerrit-related.json` and `ecc-gerrit-inverse-detail.json`. Query coverage is not proof that no differently worded CL exists; check again before publication.

Primary source locations (plain source records, not recommendations):

```
https://boringssl.googlesource.com/boringssl/+/3d450d2844db825a906fc19f7bb1e6ce765047db
https://raw.githubusercontent.com/decred/dcrd/master/dcrec/secp256k1/ecdsa/signature.go
https://go-review.googlesource.com/c/go/+/632415
```

### Other leads reviewed and not promoted

- There is **no existing CombinedMult method** to enable. The generic base multiplication already uses a positional precomputed table and eliminates base doublings. A naive joint/Shamir multiplication cannot claim to halve a pair of doubling chains that are not both present. A new variable-time signed-window engine might help but exceeds this bounded helper proposal.
- P256 already has a fixed order-inversion chain (38 multiplications +254 squarings); rediscovering it is not a win. Other curves use generic bigmod.Exp with a constant exponent, a 4-bit secret-independent table scan and generic squaring. Specialized order chains would need either new Montgomery bigmod APIs or new scalar-field representations/generated arithmetic. Prefer the existing verifier-only inverse experiment before undertaking that larger work.
- Caching decoded Q would remove reparsing but needs a moderate type/layout change plus rigorous public mutable-big.Int cache invalidation. Caching the scalar table stores 15 points per key (at least ~2.5 KiB of field payload for P384 and ~3.2 KiB for P521, plus objects/pointers); one-time table construction is only 14 additions/doublings versus the full scalar loop. Cold imports grow cost and cache lifetimes matter. Not recommended ahead of the zero-retained-memory comparison helper.

## Selected P256-only follow-up after parent measurements

See **`ecc-p256-only.md`** and **`patches/ecc-projective-p256-only.patch`**. This is the selected narrower experiment, independent against baseline: only P256 exposes EqualX, optional interface dispatch preserves the original affine fallback for all other curves, and a shared verifier helper handles r and r+n. Three files, +63/-1 including documentation/spacing. Purego P256 correctly takes `&p.z`/`&p.x` (original illustrative patch lacked these; parent caught/fixed them). No variable-time inverse or generic constraint/template changes. Parent's prior 8% P256 improvement motivates testing; it is not yet a measurement of this narrower patch. No production edit/compile/timing was performed here.

## Ed25519 reusable public-key decode-cache follow-up

See **`ed25519-publiccache.md`** and independent **`patches/ed25519-publiccache.patch`**: public wrapper +17/-4, reuses existing weak-cache infrastructure, exact bytes validation preserves mutable slices and noncanonical encodings, one helper covers Pure/ph/ctx. Current and both old snapshot verification paths only READ decoded public keys. Full warm-vs-fresh public-operation benchmark and mutation/copy/GC/parallel tests prepared outside source. **Reusable-key-only hypothesis**, with unavoidable cold escape/cache/cleanup overhead and retained-memory costs; no timing claims or production changes. Fresh history search found no duplicate public-cache CL; existing private cache is credited to merged CL654096.

## FINAL ECC DISPOSITION — no recommended winner (September 27, 2026)

- **Ed25519 pointer public-key cache: rejected/deferred.** Parent compiled it; functional cases pass, but the full public suite fails existing TestAllocations, expected 0 allocations versus 7 observed when priv.Public() supplies fresh storage on each iteration. This confirms the cold-workload concern. Parent restored source. Do not alter the allocation test or build a new value-cache framework to save the prototype.
- **P256-only projective comparison: not recommended on available evidence.** Actual narrowed-patch complete public Verify measurement: 4.7% median improvement, **p=.101**, not significant. Earlier ~8% findings were for a different all-curve prototype and cannot serve as this patch's result.
- All patches/tests remain experimental records, not approved production changes or demonstrated winning recommendations. No further CPU work requested/performed by this agent. The selected stronger opportunities are elsewhere in the parent audit; this ECC pass should not inflate the shortlist.
