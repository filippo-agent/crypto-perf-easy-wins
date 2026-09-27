# RSA / bigmod round 2

Date: September 27, 2026. Baseline: `04a082e1` (upstream plus four first-pass wins). **No production changes, compiles, correctness runs, or timings by this agent.** Parent owns central timing. All benchmark claims below are hypotheses or exact arithmetic counts, NOT measured speedups.

## Strongest leads first

1. **Trial division before Miller–Rabin setup:** avoid Montgomery rr, modulus allocation, `(w-1)/2` construction and exponent serialization for candidates rejected by small factors. Two tiny internal bigmod APIs suffice; no representation redesign. Measure public `crypto/rsa.GenerateKey`, not `isPrime` alone.
2. **Read-only remainder and 64-bit grouping:** eliminate per-triple Nat clones/quotient writes, then optionally group six small primes per remainder on ordinary amd64/arm64. Same sieve primes and acceptance criteria. Separate control patches identify whether either produces a worthwhile whole-keygen gain.
3. **Common public exponent:** fold the final multiply of `x^65537` together with conversion out of Montgomery form. A 10-line branch, preserving one independent raw-base copy, replaces 19 Montgomery multiplies with 18, and drops the final constant-one Nat. Whole public Verify/OAEP must demonstrate benefit; maximum arithmetic saving is modest. This is now a concrete no-extra-copy specialization of a previously deferred idea, not a claim of a freshly discovered arithmetic identity.

**Important correction:** `DivShortVarTime` DOES mutate x. A naked hoist of `mr.w.Nat()` outside the trial loop is WRONG. `nat.go:1276–1286` writes the quotient with `x.limbs[i], r = bits.Div(...)`. Each triple must divide the original candidate, not the prior quotient. `Modulus.Nat()` intentionally copies to protect the modulus. The proposed `RemShortVarTime` discards the quotient and leaves the receiver untouched; it is not a removal of necessary alias protection.

## Patches (unapplied)

All paths below are under `/home/exedev/crypto-audit/round2/patches/`.

| Patch | Apply to | Purpose |
|---|---|---|
| `rsa-remshort-only.patch` | baseline | Add nonmutating remainder; clone the modulus once, not per triple; keep early MR setup |
| `rsa-trial-before-setup.patch` | baseline | Main candidate: raw Nat parser + remainder, then MR setup only for survivors |
| `rsa-trial-before-setup-clone-control.patch` | baseline | Isolate setup deferral: raw parser but retain a fresh copied Nat per triple and existing DivShort |
| `rsa-trial-before-setup-six.patch` | baseline | Main candidate + six-prime groups on 64-bit platforms |
| `rsa-trial-six-incremental.patch` | main candidate | Same six-prime experiment as a small incremental diff |
| `rsa-exp65537-fold.patch` | baseline or any keygen variant | Independent common-exponent specialization |

The baseline alternatives are mutually exclusive: do not stack them. All five baseline patches pass `git apply --check`; the incremental patch was generated directly from its stated parent. No patch was applied. `make-rsa-patches.py` recreates them, but **do not rerun it on a modified production tree**, since it reads the working source as its baseline.

## 1. Deferred setup + read-only remainder

### Exact source reasoning

`rsa/keygen.go:isPrime` currently calls `millerRabinSetup` first. That routine calls `bigmod.NewModulus`, which parses w, allocates modulus state, calculates m0inv and rr; then it copies w, subtracts one, shifts, allocates byte encoding, and removes leading zero bytes. Only then does the trial loop reject most candidates. The source describes the current 255 small primes as catching 84.9% of composites; that percentage is not a measurement of our benchmark streams.

Each trial triple calls `mr.w.Nat().DivShortVarTime(product)`. `Nat()` invokes `NewNat().set`, and `set` invokes `reset` (clears storage) plus `copy`; DivShort then overwrites all limbs with an unused quotient. Whether any particular copy causes a heap allocation depends on compiler escape analysis and size: **do not advertise 85 fewer allocations for common 2048/4096-bit keys without measuring**. The copies/clears/writes themselves are concrete source work.

Main patch:

1. Preserve the exact empty-input / low-two-bits guard of `millerRabinSetup` before processing anything.
2. `wn := bigmod.NewNat().SetBytesVarTime(w)` wraps the existing `resetToBytes`: no new byte-decoding arithmetic. It resizes/trims identically, with explicit variable-time naming/documentation.
3. Trial divide with `wn.RemShortVarTime(p1*p2*p3)`. This uses exactly the existing high-to-low bits.Div recurrence, discarding the quotient. `r < divisor` remains true after every step; hence the next two-word quotient fits a word and Div cannot overflow.
4. Only after all primes pass, invoke the **unchanged** `millerRabinSetup` and remaining MR code.

This deliberately reparses survivors. That is a linear copy/decode versus a new ownership-transferring modulus constructor or partially initialized Modulus invariant. Measure the simple version first; avoid adding a constructor API merely to eliminate one survivor parse.

**Do not substitute `bits.Rem` casually:** local `math/bits.Rem64` normalizes its high word using an additional `% y` before `Div64`, because its general contract allows hi >= y. Our recurrence guarantees hi < y, so `bits.Div` with ignored quotient is the right existing primitive.

### Optional 64-bit grouping

The current table guarantees each triple's product fits uint32. Therefore the product of two triples fits uint64. On 64-bit targets, combine up to six primes and test the same individual residues. A full survivor needs **43 big-Nat remainder scans rather than 85** (42 groups of six, one triple). On 32-bit targets preserve triples exactly. Rejection remains an OR of divisibility by the identical 255 primes; no probable-prime test is weakened or removed.

This isn't a predicted 2x speedup: early rejects, scalar `% p` operations, six-factor product calculation, control flow, and the entire MR cost remain. Also arm64's bits.Div64 lowering differs from amd64: the high-valued six-prime divisor can have different software-division costs. Request real arm64 timing before promoting a cross-platform win. No architecture assembly is introduced and 32-bit arithmetic remains bounded.

### Security / FIPS / aliasing

- Keygen and `isPrime` already explicitly permit variable time. New variable-time APIs are used only in this path. No variable-time operation enters private-key import, signing, decryption, CRT arithmetic, or private-key validation.
- MR exponent, iteration thresholds, random-base source/range/retries, trial-prime set, candidate top/bottom bits, e-coprimality, λ(N), small-d and close-prime checks, CAST/PCT and FIPS approval accounting remain unchanged.
- Trial division and setup draw no randomness. Given the same candidate/base randomness, the output and number/order of random draws are unchanged. Delaying setup skips only deterministic work for already rejected candidates.
- Inputs with last bits not 11 reject before parsing, just as before. 0, 1, empty, even, and 1-mod-4 candidates remain rejected. Small primes in the table still return false from isPrime (existing behavior): real `randomPrime` candidates are at least 16 bits, so do not “fix” this and accidentally alter the algorithm in a performance patch.
- `SetBytesVarTime` copies bytes and reuses the receiver's own capacity; no backing array aliases caller data. The resulting standalone Nat is not a modulus view. `RemShortVarTime` does not alter limbs or announced length; zero divisor still panics, including when the receiver is empty.
- No global mutable cache, shared scratch, retained secret-key state, or concurrency behavior change. New scratch is local. No existing `Modulus.Nat` semantics change.
- Edit live `crypto/internal/fips140` only, not frozen modules/snapshots. Public benchmark explicitly requires module v1.28.0 to match the current keygen corpus/algorithm. Old snapshot runs cannot establish this patch's performance; ordinary API regression tests remain useful there.

## 2. Public exponent 65537 folding

Current `ExpShortVarTime` does: one conversion x→xR, 16 squarings, multiplication by xR, conversion out via Montgomery multiply by integer one = **19** Montgomery products.

Specialized branch does: copy raw x to a private Nat, copy/convert x into out, 16 squarings, final Montgomery multiply by raw x = **18**. Algebra: before the last multiply `out = x^65536 R`; MontgomeryMultiply(out, x) yields `x^65537`, not a Montgomery-domain value. Both inputs remain reduced exactly as required.

The raw-base copy is essential for `out == x`; it replaces the existing xR copy rather than adding another copy. Independent x is not changed. All other exponents take the exact existing fallback. The even-modulus panic remains before the specialized branch. Zero/base-one/base-(m-1) and arbitrary odd composite moduli are supported, not only RSA primes. The branch depends solely on an already-public exponent; it remains constant-time in the input, including secret bases used by RSA's post-CRT fault check. That fault check itself remains fully present.

Public entry points: RSA signature Verify (PKCS1v15/PSS), RSA public encryption (OAEP/v1.5), and the smaller public fault-check part of private operations. No mutable-key cache, no new API, no key-local persistent precomputation, and no changed ASN.1/padding validation. FIPS checks unchanged. For widths >2048 the removed constant-one scratch may also save a heap allocation, but allocation measurements must confirm compiler behavior.

## Prepared tests and complete-operation benchmarks

Only these three repository files were created:

- `src/crypto/internal/fips140/bigmod/rsa_round2_test.go`
- `src/crypto/internal/fips140/rsa/keygen_round2_test.go`
- `src/crypto/rsa/keygen_round2_test.go`

All gofmt'd. **Uncompiled/unexecuted.** No unrelated files touched. Optional-interface tests skip new methods on baseline instead of failing compilation. Once patched, ensure those tests RUN rather than skip.

### Added correctness tests

- `TestRound2RemShort`: math/big remainder oracle and existing DivShort oracle; 0–129 limbs, leading-zero announced limbs, all-zero/random inputs; divisors 1, 2, 3, trial products, 65537, maxword−1/maxword; receiver immutability; zero-divisor panic including empty x.
- `TestRound2SetBytesVarTime`: math/big value and exact announced-length oracle; empty/leading-zero inputs, non-word-aligned lengths, shrink/grow/reuse, beyond preallocation, unchanged source, and no retained input alias.
- `TestRound2TrialDivision`: baseline copied-DivShort filter vs nonmutating triple/six filters and independent math/big oracle; 16–4096-bit and boundary-sized candidates; receiver immutability; uint32 triple-product bound.
- `TestRound2IsPrimeEdges`: empty/0/1/even/1-mod-4 rejection, the existing small-prime rejection behavior, positive/composite 3-mod-4 16/17-bit inputs against math/big, with and without leading zero bytes.
- `TestRound2Exp65537`: both prototype and current production method against math/big, x=0/1/m−1/random-ish m/2, 2–4096 bits including word/preallocation boundaries, exact out==x aliasing and independent-input nonmutation; non-special exponent fallback including even exponents and 2^31−1.

Existing tests REQUIRED: internal `TestMillerRabin` and totient vectors; public `TestKeyGenerationVectors` (exact PKCS8 output), `TestKeyGeneration`, `TestTinyKeyGeneration`, malformed-key/precompute tests; `TestBigmodImplementations`; public PSS/OAEP/PKCS1v15 known-answer, invalid signature/ciphertext and mixed-MGF-hash tests. Run full three owned package suites, purego and 386, plus FIPS enabled/only configurations with the normal expected skips. No BoringCrypto performance claims or work.

### Complete public keygen matrix

`BenchmarkRound2GenerateKey/{2048,3072,4096}/`:

- `Corpus`: existing `keygenNNNN.txt`, same reader/helper and exact public GenerateKey path as upstream benchmark, with file read/string conversion outside timer.
- `FixedStream/{0..7}`: eight independent fixed ChaCha8 candidate streams, reset for each complete public operation. This gives paired comparisons across varied prime-search paths, not only the hand-balanced corpus. The stream is **benchmark-only**, never a production random source. Reuses the standard-library test helper to neutralize MaybeReadByte consistently. It is not a claim of compliance with the det-keygen DRBG spec; exact keygen vector tests cover that separately.
- `RealRandom`: public GenerateKey(rand.Reader), normal `cryptocustomrand=0` source, no candidate injection. High natural variance; useful for realistic profiles and distribution checks, not small unpaired single-sample percentage claims.

Miller–Rabin bases still come from the global DRBG, including Corpus/FixedStream. Fixed candidate search paths are stable, but there can be base-rejection/rare extra MR-round variation. Don't advertise these as completely deterministic timings. Public candidate-source injection is only enabled for Corpus/FixedStream, as in existing Go tests.

`BenchmarkRound2Verify/{2048,3072,4096}/{PKCS1v15,PSS}` times the full public Verify, including public modulus construction and encoding checks; signatures/hash setup are untimed. Existing `BenchmarkEncryptOAEP` / v1.5 Encrypt provide independent whole-op confirmation. `BenchmarkRound2Exp65537` is only a diagnostic helper control.

### Central run plan (parent only)

Start with baseline, rem-only, delayed-setup, delayed+six, then the independent exponent patch. Use separately compiled binaries, pinned same CPU/GOMAXPROCS, interleaved A/B/A or randomized order. Include allocations and enough repeats for confidence intervals; no concurrent workloads.

```
bin/go test crypto/internal/fips140/bigmod crypto/internal/fips140/rsa crypto/rsa -run 'TestRound2|TestMillerRabin|TestTotient|TestKeyGenerationVectors'
bin/go test crypto/rsa -run '^$' -bench '^BenchmarkRound2GenerateKey/2048/Corpus$' -benchmem -count=15
bin/go test crypto/rsa -run '^$' -bench '^BenchmarkRound2GenerateKey/2048/FixedStream' -benchtime=3x -benchmem -count=10
bin/go test crypto/rsa -run '^$' -bench '^BenchmarkRound2GenerateKey/2048/RealRandom$' -benchtime=30x -cpuprofile=<variant-random.pprof>
bin/go test crypto/rsa -run '^$' -bench '^BenchmarkRound2Verify$' -benchmem -count=15
```

Extend winning candidates to 3072/4096, then arm64. FixedStream samples should be compared per seed first and summarized without overweighting one lucky short search. RealRandom requires many keys and confidence intervals; use its profiles to verify expected changes in `rr`, `Nat.set/reset`, DivShort/RemShort and MR exponentiation, not to replace paired timing. Account for first-use CAST/RNG warmup (discard first sample or warm explicitly in the harness); no CPU profiles during timing comparisons. If setup deferral looks unhelpful or regresses, run the clone-control variant to isolate the survivor parse vs remainder effects.

**Results:** pending central execution. There is currently no defensible whole-operation percentage to report.

## Novelty check / exclusions

Fresh primary Gerrit REST query `project:go status:open (rsa OR bigmod)` and text query `project:go ("trial division" OR "RemShortVarTime")` saved as `rsa-novelty-rsa.json` / `rsa-novelty-trial.json`. No matching open subject for these changes was found; this is a bounded subject/text screen, not a proof no equivalent unpublished patch exists.

The historical merged **CL 639955**, “crypto/rsa: use Div instead of GCD for trial division,” is important context (saved detail `rsa-novelty-639955.json`). Its large old keygen gains are **already in our baseline** and are not our results. We keep that division algorithm; the new work is setup ordering, quotient-free input reuse, and optional machine-word grouping. Don't conflate it with switching GCD to Div. Open RSA DIT, PSS salt, OAEP approval, CAST-size and IFMA changes are separate work. Existing first-pass MulShort validation and MGF XOR are not proposed again.

No extra optimizations selected for qInv inversion/private-key import, CRT residue reduction, global/key caches, removing validation equations, or relaxing MR rounds. In particular, the keygen variable-time allowance does NOT justify moving a variable-time inverse into shared private-key constructors.

Test-file backups are in `round2/tests/rsa/` (filenames distinguish their destination packages).

## Newly allowed public-key cache experiment

See `round2/rsa-cache.md` and `round2/patches/rsa-public-cache.patch` (independent +27/-2 one-file prototype). Adds existing weak-cache infrastructure usage, signed N/E snapshot mutation checks, full warm/fresh RSA and x509 benchmarks, concurrent/GC tests and memory probe. Uncompiled, unmeasured, unapplied; cold/memory costs must be evaluated alongside any warm gain.
