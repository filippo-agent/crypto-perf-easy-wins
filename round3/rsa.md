# RSA/bigmod round 3 — source/profile findings (27 September 2026)

No production changes, builds, tests, profiles or timings run by this agent. Parent owns CPU. Baseline f6653cda. **No key-reuse caches.**

## Current priority update — parent scouting, not final paired results

Parent reports roughly four paired samples: the larger-kernel composition looks flat/slower; unrestricted rrWord is roughly flat at 2048, ~10–15% less Verify time at 3072, and ~20% at 4096. These are **preliminary parent observations**, not agent measurements, not n=12 final results, and not claims about Sign, import, keygen or all architectures. The initial source-only ranking below is superseded: **prioritize wide RR setup, not larger-kernel composition**.

Requested narrower candidate is now `patches/rsa-rr-word-ct-wide.patch` (standalone against baseline). `patches/rsa-rr-word-ct-wide-incremental.patch` changes only the gate atop the original RR-only patch. Do not apply both. The gate is:

```go
if len(m.nat.limbs) >= 3072/_W && m.BitLen() == len(m.nat.limbs)*_W {
    return rrWord(m)
}
```

This is **not a public-only path**. Dispatch depends only on announced length/exact modulus bit length, already permitted to leak. All 1024/1536/2048-bit RR construction keeps the old arithmetic; common 2048/3072/4096 RSA private primes therefore keep old RR setup. Wide secret moduli (for example 3072-bit primes of a 6144-bit key) still enter exactly the same constant-time word helper. Full 3072/4096 public N uses the new setup on every operation, with no key reuse assumption. Non-normalized sizes always retain the fallback. No hardware division, new APIs/imports, mutable state, new assembly or frozen-snapshot edits.

This is **RR-only**: no change to the shared shiftIn dispatch and no larger-kernel patch bundled. The helper's private implementation named shiftInWord is used to construct RR, but ordinary Mod/CRT reductions stay unchanged. Keygen/import can still change when they construct the full wide N or unusually large private primes, so their controls remain required; this gate is risk reduction, not a claim of zero private-path effects.

## Initial source-only ranking (superseded by scouting above)

1. **Reuse existing accelerated row kernels at 3072/4096 bits:** `patches/rsa-large-existing-kernels.patch`, 25 added lines, no assembly changes. These full-modulus sizes currently miss the 1024/1536/2048 fast cases. Strongest low-review-cost source lead; test whole cold Verify/Encrypt at 3072/4096, with 2048 and purego controls.
2. **Constant-time word-at-a-time RR setup:** `patches/rsa-rr-word-ct.patch`, one file, ~78 added lines. Parent's 2048 Verify profile spends **29.44% in RR**, so setup is meaningful even without key reuse. BearSSL-inspired quotient reduction computes RR using n word shifts instead of seven Montgomery products plus doublings. The fixed-work quotient estimator keeps secret-modulus constructors safe in principle; benchmark/correctness/constant-time validation required. No new public/internal-exported API, imports, lazy state, caches, or snapshot boundary.
3. **Same word reducer for normalized shiftIn:** `patches/rsa-shift-word-ct.patch` or combined `rsa-rr-shift-word-ct.patch`. Optional separate candidate, especially for CRT/private import reductions. Current mixed Sign profile has 6.36% in shiftIn; isolate signing subcases before extrapolating.

Specialized squares and an i62-style engine are assessed below, not advertised as measured wins. Public-N-only hardware division is deliberately deferred because it needs a clean secret/public and frozen-FIPS API boundary; the shared prototypes never use hardware division.

## Primary references read

Local official BearSSL source root: `/home/exedev/crypto-audit/round3/references/bearssl`, revision `7bea48e5e850ab4cafbe68d3765cdaba13a86d6f`.
- `src/int/i31_modpow.c`: keeps result in normal representation and running base in Montgomery; no final conversion.
- `src/int/i31_modpow2.c`: fixed windows up to five, constant-time full scan, normal initialization and conversion.
- `src/int/i31_tmont.c`, `i31_muladd.c`: word shifts with high-word quotient estimates and bounded corrections.
- `src/int/i32_div32.c`: fixed-work quotient/remainder primitive used by i31 reduction.
- `src/rsa/rsa_i31_pub.c`, `rsa_i62_pub.c`: actual public-operation callers, modulus/input validation and window engine invocation.
- `src/int/i31_fmont.c`: actual Montgomery reduction rather than generic multiplication by one.
- `src/int/i62_modpow2.c`: 62-bit words, integrated multiplication/reduction using two-product accumulations, same generic multiply for squares; converts using i31 reducers.
- Official bigint design page read from the parent-fetched `references/bearssl-bigint.html`; especially “Generic Modular Reduction” and “Modular Exponentiation”. Inspiration only, no transplanted source.

Go: `src/crypto/internal/fips140/bigmod/nat.go` (`rr`, `newModulus`, `shiftIn`, `montgomeryMul`, `Exp`, `ExpShortVarTime`); `src/crypto/internal/fips140/rsa/rsa.go` (encryption and post-CRT fault-check shared public exponentiation).

## First concrete candidate now available: **constant-time** word reduction

`patches/rsa-rr-word-ct.patch` (one file; unapplied/uncompiled): normalized/full-limb moduli compute RR using n word reductions, starting from R-m. Word quotient estimation uses a fixed _W-iteration divider, **not bits.Div**. Two corrections always execute with masks. Thus it is intended to preserve constant time for **secret primes too** (pending validation), avoids an additional public-modulus constructor, requires no new imports/APIs, and does not break old FIPS module API compatibility. Fallback for non-full-width moduli is unchanged. This avoids the compatibility/security problems of the public-only constructor idea. A public-only hardware-divider variant could be faster but needs a clean snapshot-compatible API boundary; NOT silently inserted into this shared helper.

`patches/rsa-shift-word-ct.patch` applies the same reducer to normalized `shiftIn` only (RR unchanged). `patches/rsa-rr-shift-word-ct.patch` is combined. These patches are alternatives, not stackable. Full file generation in `candidates/rsa/make-patches.py`; independently written arithmetic, not copied C.

**Parent profile evidence:** `profiles/rsa-verify.top/.cum`: RSA-2048 PKCS1 Verify spends 29.44% cumulative in rr, 31.20% in fipsPublicKey, 89.20% in montgomeryMul, 75.52% flat in addMulVVW2048. These are inclusive/non-additive. Meaningful setup saving is possible without reuse. `rsa-sign.top/.cum` is MIXED existing benchmark subcases, not one warm operation: Exp 90.65%, Mod 6.38%, shiftIn 6.36%, private setup 11.27%. Therefore do not turn that 6.36% into a prediction for every signing subcase.

## Second concrete candidate: reuse existing accelerated kernels for larger public N

`patches/rsa-large-existing-kernels.patch`: 25 added lines in existing addMulVVW. For 3072/4096-bit rows, combine two existing 1536/2048 kernels, then propagate the lower-half carry across the upper half using a fixed loop. No new assembly, imports, exported API or state. This is independent of the RR candidate (stackable conceptually; generated patches have disjoint code hunks).

Go has specialized montgomeryMul cases only for 1024/1536/2048 bits; 3072/4096 full-modulus public operations currently take generic Go addMulVVW, even though all these lengths are fixed/public. The existing amd64 helpers use ADX dual carry chains when available; arm64 helpers are unrolled. A two-block composition reuses them without assembly expansion. **This is source-driven, not supported by the supplied RSA-2048 profile** (that profile already uses the best existing 2048 helper). Expected target: complete 3072/4096 Verify/Encrypt, including cold setup; 2048 is the unchanged-path control. Private CRT half-sized operations largely already accelerated; their public fault-check may improve.

Carry argument: each kernel computes its half independently; add the returned low carry to the upper result, then add that overflow bit to the upper returned carry. The final word cannot overflow because the complete z+x*y is < B^(n+1). Both loops and calls depend only on length. Exact z==x alias works because upper multiplication reads upper source before correction; partial overlap retains no new guarantee. The purego implementation may regress (same multiply work plus an extra carry pass and calls), so benchmark it and consider a clean assembly-availability gate only if needed; do not hide the purego outcome. Mainstream amd64/arm64 gains still require measurement.

## Prepared test/benchmark artifacts (not run)

All **outside the repository**, under `benchmark-sources/rsa/`:
- `bigmod_round3_test.go` → `src/crypto/internal/fips140/bigmod/bigmod_round3_test.go`: baseline-compilable independent local prototype, quotient tests (100,000 cases), normalized word reduction/RR math/big comparisons across 1–65 limbs and edge values; exercises even moduli for shift reduction, public production `shiftIn` and `NewModulus` as well; exact alias/full carry/zero tests for the large-kernel combination. Microbenchmark `BenchmarkRound3RR` is diagnostic only.
- `rsa_public_round3_test.go` → `src/crypto/rsa/rsa_public_round3_test.go`: complete PKCS1/PSS Verify and OAEP Encrypt at 2048/3072/4096. Both per-operation setup (ordinary current path) and DER-parse+operation controls. No reuse optimization; both must improve if the claim is a cold-operation win.

Parent validation commands after copying these files (not executed by this agent):

```
bin/go test crypto/internal/fips140/bigmod -run 'TestRound3|TestBigmodImplementations'
bin/go test -short crypto/internal/fips140/bigmod crypto/internal/fips140/rsa crypto/rsa
bin/go test -tags=purego -short crypto/internal/fips140/bigmod crypto/internal/fips140/rsa crypto/rsa
GODEBUG=fips140=on bin/go test -short crypto/internal/fips140/bigmod crypto/internal/fips140/rsa crypto/rsa
GOFIPS140=v1.26.0 bin/go test -short crypto/rsa
```

Compile all benchmark variants centrally; same compiler/options, alternating pinned A/B with no concurrent CPU jobs. Measure public `BenchmarkRound3RSAPublic` first. `BenchmarkSignPKCS1v15/2048$` isolates the retained-private-key signing path; do NOT aggregate it with noprecomp subcases as the current broad profile does. Run noprecomp subcases separately for CT-RR/shift impacts. RR-only's intended win is public setup, not large warmed private-sign speedups. Add public GenerateKey/import controls because CT-RR changes secret-modulus setup too.

Extra correctness required beyond prepared randomized tests: exhaustive toy-base proof harness for quotient correction (not a production test), crafted one/two-correction cases, `hi==divisor` saturation, lengths straddling normalized/fallback (1023/1024/1025, 2047/2048/2049 etc), leading-zero encodings, all-zero/one invalid moduli, no mutation of modulus/input, odd/even constructor behavior, and full standard malformed/padding/KAT/CRT-fault tests. Purego, forced ADX-off, native amd64, arm64 runtime and 32-bit execution (not just cross-build) matter. Constant-time inspection must confirm no input-sensitive branch or hardware divide in `divWordNormalized` / corrections. Length/normalization dispatch leaks only bit length, already allowed. No secret-dependent shortcut is authorized.

## BearSSL/Go comparison and explicitly rejected shortcuts

| Area | BearSSL official implementation | Go baseline / transfer assessment |
|---|---|---|
| Input conversion | i31/i62 modular exponentiation converts x by repeated word shifts and quotient-estimated reductions, no separately stored RR | Go constructs RR on every public-key conversion and multiplies by it. New CT RR candidate keeps Go's existing representation/invariants but borrows the word-reduction idea. It is not merely deleting required RR work. |
| Quotient estimation | i31_muladd normalizes virtual top words, br_div uses fixed-work bit division, q-1 estimate followed by masked plus/minus correction | Prototype deliberately narrower: full-limb moduli only, saturated overestimate, exactly two masked additions. Full-width limb arithmetic needs explicit overflow tracking; 31-bit spare-bit arithmetic cannot be pasted in. |
| Public exponentiation | rsa_i31_pub/rsa_i62_pub invoke windowed constant-time engines even for public E | Go already uses a short-public-exponent chain, generally better suited to 65537. Do not port BearSSL's public fixed window or cite its old benchmark figures as an improvement over Go. |
| Exponent windows | i31/i62 choose up to five bits from scratch capacity, scan all candidates in constant time | Go has a four-bit fixed window and stack-local tables. A five-bit window only saves ~35 Montgomery products for a 1024-bit exponent after table construction (~3% before doubled scan work); not a likely major low-cost Sign improvement. |
| Squares | i31/i62 use their generic Montgomery multiply | Specialized squares would be new Go work, not a BearSSL implementation to port. See counts below. |
| Montgomery output | Dedicated frommonty does only reduction, omitting multiplication by known-one | Go uses generic montgomeryMul by one. Half of one product at most; profile montgomeryReduction is only 3.86% of public Verify and much less of Sign. Prior 65537-fold already saved more arithmetic and was unresolved. Not a new headline. |
| Core arithmetic | i62 uses 62-bit limbs and combines two products using a 128-bit accumulator; i31 uses 31-bit limbs to keep carries simple | Go already uses 64-bit limbs, existing ADX/BMI2 dual carry-chain assembly, specialized 1024/1536/2048 widths. Replacing this with i62 would be an engine/representation rewrite with no demonstrated major gain. Reuse missing larger-width kernels instead. |
| Final reduction | Conditional subtract to keep canonical <m representation | Go explicitly rejects Almost Montgomery redundant range, citing prior invariant issues. Removing reductions is not a tiny safe patch; no proposed range weakening. |

**Specialized-square arithmetic bound (not a measured benefit):** generic Montgomery multiply uses n² operand word products plus n² reduction products (ignoring O(n)). Squaring can use n(n+1)/2 operand products plus n² reduction products: about **25% fewer total multiplies**, not 50%. At 2048 cold Verify, RR has seven squares and E65537 has sixteen; 23 of the 26 total Montgomery products are squares. Even if total square time fell by 25%, the sampled 89.2% Montgomery fraction puts an optimistic whole-op ceiling near 20%, not a 2x win. That is an illustrative work bound, not a wall-time guarantee: additions, carries, temporary buffer, reduction, and existing assembly change the constants. A generic triangular square would mostly use short/variable-length Go addMul rows and may lose against today's fixed-size ADX kernel. A credible next implementation would need carefully retained accelerated reduction and an independently measured square kernel, then full Verify/Sign comparisons. Not worth a broad replacement engine without that evidence.

**Why not simply skip RR for 65537?** A Montgomery-domain starting base still needs xR mod N. Deleting RR without replacing conversion computes the wrong exponent. BearSSL's replacement works because it has a word reducer; Go's bit-shifting `Mod` does not make that free. Direct base conversion could save one Montgomery product on top of a cheaper word reducer, but a lazy/no-RR public-modulus representation introduces partial initialization and an API/snapshot issue. The prototype instead preserves all existing `Modulus` invariants and precomputes RR once per operation; no lazy state, no cache.

**Why not bits.Div in the shared RR/shift helper?** RR sees secret p/q; shiftIn sees private representatives and secret moduli. Hardware division and data-dependent correction loops are disallowed there, even if RSA Verify inputs are public. A separate public-N-only constructor could use division on N and R² safely for Encrypt too (it never sees plaintext), but direct introduction of a new `bigmod.NewModulusPublic` called outside the FIPS module does not compile against frozen module snapshots that lack that symbol. Do not silently accept that compatibility regression or use a mutable “public” flag. CT helper avoids this problem entirely. A future narrowly isolated Verify-only exponentiation could relax more input timing, but shared Encrypt/private fault checking must remain untouched.

**Small cleanup ceilings:** profile memclr/memmove combined <2% public Verify; avoiding redundant zero-before-copy or blanket scratch pooling cannot explain large gains and adds alias/lifetime complexity. Initial secret exponent window shortcut saves only a handful of >1000 products. Newton inverse setup uses five scalar iterations already. None merits a new headline.

## Novelty and status

New code-site ideas in this pass: (1) CT normalized word reduction for cold RR / optionally existing shiftIn; (2) compose existing accelerated row kernels for 3072/4096 full-modulus arithmetic. These are standard arithmetic identities/implementation techniques applied to current Go, not novel cryptographic algorithms. Neither appears in the previously screened pending queue or prior round notes; **no new comprehensive Gerrit search was performed**, so novelty remains bounded to the supplied audit history and current source.

Previously selected validation MulShort, prior sieve/deferred setup/remainder variants, weak public key caches, and 65537 folding are explicitly NOT counted as new. No pending HMAC/PQ/ECC work is repackaged. No measured improvement is claimed by this report. Patches/test artifacts are unapplied and uncompiled by this agent; all production review/testing and benchmark qualification remain with parent.

## Follow-up: RR threshold sanity check against the supplied profile

Parent reconfirmed that `rsa-verify` is exactly complete RSA-2048 PKCS1 Verify; `rsa-sign` remains aggregate and is not a normal-Sign profile. No additional CPU work was run.

At full-width RSA-2048 on 64-bit, current `threshold=n/4=8` performs **17 modular doublings and seven Montgomery squares**. Neighboring threshold choices give:

| Threshold | Doublings | Montgomery squares |
|---|---:|---:|
| n/8 = 4 | 9 | 8 |
| n/4 = 8 (current) | 17 | 7 |
| n/2 = 16 | 33 | 6 |
| n = 32 | 65 | 5 |

This makes a threshold sweep cheap to implement, but it is NOT strong evidence of a large gain. A rough profile-based model actually favors the current threshold: rr is 29.44% cumulative and Add is 5.29% (public Verify's Add work is in RR); dividing gives ~0.31% of total operation per doubling and ~(29.44−5.29)/7 = 3.45% per RR square, with setup overhead folded into the latter. Moving to n/8 adds one square and saves eight doublings (~0.96 percentage points more modeled work); moving to n/2 removes one square and adds sixteen doublings (~1.53 points more). These are **rough model differences, not measured A/B results**, and inclusive profiles/codegen/size effects limit their precision. They argue against claiming the old threshold alone hides a huge 2048-bit improvement. A portable sweep at 3072/4096 and other CPUs could differ, especially after changing their row kernels.

The word-reduction proposal targets a different algorithmic cost: n quotient-estimated word reductions instead of repeated full Montgomery squarings. It must still beat the fixed-work divider's cost; the n² multiplication count is not a timing result. No public-only hardware division or data-dependent correction was inserted in shared arithmetic.

## Actual precomputed-Sign profile and wide-gate review

`profiles/rsa-sign-precomp.top/.cum` (BenchmarkRound3PrecomputedRSASign, 9.56s samples) is now the correct isolated private-operation evidence: Exp 90.90% cumulative; montgomeryMul 84.31%; shiftIn/Mod 6.69%; addMulVVW1024 58.79% flat; assign 9.52% cumulative. RR is not a sampled normal-operation cost. Consequently **RR-only is not claimed to accelerate precomputed Sign**. The 6.69% reduction hotspot supports a separate modest upper bound for a shiftIn experiment, not bundling new CRT arithmetic into the wide-RR candidate. The prior aggregate sign profile remains historical broad evidence only.

Detailed source proof and test obligations: `candidates/rsa/rr-word-review.md`. In brief: normalized m gives R-m<m; n word shifts give R² mod m. Saturated top-two-word division overestimates the true quotient by at most two; the signed n+1-word remainder lies in [-2m,m), so two unconditional masked additions suffice. No helper branch or memory address depends on secret limbs. The new gate depends solely on lengths/bit length and is **not restricted to public moduli**. Source review found no need to weaken timing, aliasing or Modulus initialization contracts; compiler review and empirical validation remain parent work.

No production edit, test, build, pprof invocation or timing was performed for this follow-up. Only alternative patch/report files were written while the paired benchmark job runs.
