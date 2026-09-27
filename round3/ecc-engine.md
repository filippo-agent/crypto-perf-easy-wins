# Portable ECC verification engine — September 27, 2026

## Early disposition / ready experiment

**Parent-confirmed P384 follow-up:** helper timings now confirm Square≈85–96ns versus Mul(x,x)≈55–57ns; P521 is near parity, withdrawing its earlier~1.6× profile inference. Independent tiny shared-field wrapper+generator patches and full alias tests are documented in`ecc-square.md`; selected experiment is compile-time amd64-only. Keep separate from both wNAF and the public-only Double copy. Baseline asm actually has fewer instructions/spills in Square, so the slowdown cannot simply be attributed to extra Square spills.

**Follow-up lattice finding:** appended primary-source analysis of Pornin2020/454, AntipaSAC2005, and pinned crrl. The130-bit P256 helper takes full R and is for Schnorr/FROST; crrl ordinary ECDSA still uses full-width wNAF. Missing R sign means unchanged ECDSA normally needs1.5 candidate attempts; credible gross generic valid-signature budget~24% before lattice overhead, not a free halving of all work. Test-only algebraic oracle supplied.

**Worth measuring, not a claimed very-large gain:** a 96-line handwritten width-5 wNAF recoder + combined multiplication helper, using existing complete Add/Double and existing immutable G table, with no per-key retained state. Unapplied patch: `patches/ecc-engine-wnaf.patch`; generator: `ecc-engine-files/make-patch.py`. P384/P521 only, accelerated P256 untouched. `git apply --check` passes. NO builds/tests/timings run by this worker. Tests and full source review follow below.

**Late diagnostic:** profile/call-count inference suggests generated Fiat Square may cost ~1.6× self-Mul on this build despite identical arithmetic primitive counts. A separate helper benchmark and optional public-engine-only Double copy (`patches/ecc-engine-square-mul.patch`, follow-on) are prepared below. Could add ~6 API percentage points if confirmed; unmeasured, do not assume. Private paths and Fiat methods remain untouched.

Crucial nuance: combining G and Q **does not halve doublings**. Existing Go fixed-base positional tables already remove all G doublings. The actual opportunity is to reduce *both* scalars' additions with sparse signed digits while reusing Q's unavoidable doubling chain for G, and to remove constant-time scans. A separate signed-Q engine retaining unsigned positional G gives away about half the possible addition saving.

Parent's supplied baseline profiles: `profiles/ecdsa-p384.{top,cum}` and `profiles/ecdsa-p521.top` show Double ~54.7% /54.8%, Add ~26.5% /25.8%, table.Select ~4.93% /4.87%, order inverse ~7.55% /8.64%, BytesX ~5.66% /5.26%. These categories explain why lookup-only cannot be a large generic-curve gain and why merely switching scalar encodings cannot plausibly produce a 2x improvement. Existing p384Cmovznz is NOT all table lookup: modular field arithmetic also uses it.

Approximate model (NOT measured): baseline P384 needs 387D+200A (380 loop D,7 table D,96+96+7+1 A); width-5 combined wNAF uses about 384D+135A (one table D,~383 loop D,7 table A,~64+64 scalar A; leading/carry edges vary). That is about 32.5% fewer additions, not half the doublings. Applied to the actual profile, rough gross budget ~8.6 percentage points from Add +4.9 from scans +small D reduction = **~14% runtime reduction before recoding/negation/dispatch costs**, not a promise. P521 similarly around ~14–15%. A wider window has diminishing returns because per-operation Q-table setup grows.

## Primary sources reviewed

BearSSL official clone at `references/bearssl`, revision `7bea48e5e850ab4cafbe68d3765cdaba13a86d6f`:

* `src/ec/ec_prime_i31.c:551` uses a constant-time 2-bit point_mul; `api_muladd:761` explicitly calls point_mul twice and adds. Its TODO about joining ladders is not evidence that Go has two doubling chains.
* `src/ec/ec_p256_m64.c:1681` also deliberately does two multiplications. Pornin explains joint-table problems: complete mixed addition costs more, a four-by-four-bit joint table needs 255 points, and an arbitrary public-key relation can put infinity in the table. `window_to_affine:1349` batch-normalizes a *single-point* table using one inversion; a mixed table can contain infinity. `point_mul_inner:1269` uses a constant-time scan.
* Go already has complete projective Add/Double, so exceptional cases need no new formulas in our prototype. The engine uses two small odd-multiple tables, not a 255-point joint table. Borrowed G points are never mutated.

Additional primary source saved as `references/boringssl-wnaf.cc.inc`, from BoringSSL revision `0ef36ca7bce0b1b1a63dc07775a4f3d4f49efd73`, `crypto/fipsmodule/ec/wnaf.cc.inc`: interleaved public multi-scalar multiplication, signed odd-multiple tables, per-digit negation; cites Möller's simultaneous exponentiation work. Our implementation is independently written Go, not translated/copied library code. It extracts bits from original big-endian bytes and skips five positions at every nonzero digit. Its naming convention is width 5 (digits ±1..15); BoringSSL's constant is 4 for the same digit range. This is established technique, not a new algorithm; the opportunity is Go's verification-only call site.


## Precisely what is (and is not) implemented

* `public_naf.go` is an original width-5 recoder. It does not modify the scalar, reduce modulo n, or assume its most significant bit is set. It represents the entire integer exactly, including one carry bit. Method length guards limit scalars to 48/66 bytes. The 529-digit buffer also handles maximal 528-bit P521 *encodings*, beyond the normal canonical ECDSA order bound.
* `VarTimeDoubleScalarBaseMult` constructs Q,3Q,...,15Q using 1D+7A per call. Eight existing odd G multiples are borrowed from generatorTable()[0]. Only 8 of the already-existing 15 points in that first table are used; no global allocation/table beyond today's fixed-base table and no key cache.
* It interleaves two wNAFs on one doubling chain; all Add and Double calls are the existing complete homogeneous projective formulas. Negative digits make a scratch copy and replace Y with 0-Y using the existing Fiat Sub. **No new Negate API, field representation, field arithmetic, assembly or bigmod inverse is needed.** Input Q and scalar slices are read-only unless Q is deliberately the receiver. Precomputation occurs before overwriting the receiver, supporting p==q.
* Borrowed G entries are never written, even transiently. Negative Q/G scratch points are distinct from the receiver. The complete formulas cover infinity, equal/opposite points, cancellation followed by later additions, and arbitrary valid Q relations to G. This avoids BearSSL's mixed-addition exception hazard rather than proving adversarial relations impossible.
* A four-line `CombinedMultPublic` wrapper uses the **same verifier capability interface and identical verifier hunk as the low-cost P256 worker**. The independent patches each apply to baseline. To combine, apply either full patch and the other excluding `src/crypto/internal/fips140/ecdsa/ecdsa.go`; do not apply duplicate verifier hunks. The generic point constraint is unchanged. P224, portable P256, and all private multiplication call sites fall back to or retain their original code.
* Generated P384/P521 files AND their `generate.go` template are updated in the patch; conditional template emission excludes P224. Handwritten recoder+method+wrapper is 96 lines including comments/blank lines, plus ~30 verifier lines replacing ~18. Generated copies are not counted as independent handwritten implementations. Formatting and regenerate-diff checks remain parent work.

## Why this engine instead of simpler alternatives

Current generic Q ScalarMult is radix-16 unsigned and always selects/adds every nibble, including zero. It initializes [1..15]Q with 7D+7A. P384 executes 380 loop D and 96 selected Adds; base multiplication executes 96 Adds with precomputed doublings. P521 operates on a 66-byte scalar: 524 loop D,7 setup D,132+132+7+1=272 Adds. Normal canonical P521 scalars leave seven leading zero bits in this fixed-width baseline loop.

Width-5 wNAF expected density is 1/6 for random scalars (not a worst-case guarantee). Normal P521: ~521 loop D plus1 setup D,~2*521/6+7=181 Adds. Relative to 531D+272A, roughly 91 fewer A and ~9 fewer D; leading/carry edge variation is small. Profile-weighted gross saving ~8.6% Add+4.9% scans+~0.9% Double =~14.4% before overhead. P384 ~14%. Sampling uncertainty and code layout mean these are only budgets to justify a benchmark.

An unsigned width-5 *sliding* Q window can use 16 positive odd multiples and avoid point negation: ~m/6 Q Adds +15 table Adds, but unchanged m/4 G Adds. P384 total ~176A including final combination versus 200A: materially less headroom than joint wNAF's ~135A. A signed-Q-only path similarly leaves all fixed-base additions intact (~167A). A naive joint radix-4 table trades two small tables for ~15 mixed combinations and m/2 additions; it does not buy enough because the original G doubling chain is already absent. Width-6 signed Q would use 16 odd multiples and ~m/7 additions: at P384 it saves only ~1 additional Add after doubling its setup cost; width7 loses. Tuning should follow whole-operation measurements rather than grow a table speculatively.

Even deleting **every** addition and scan would leave most current time intact (about 55% Double and 13–14% inversions/parsing/other), so no small re-encoding engine can support a factor-of-two speed claim. Direct table lookup alone has a ~5% generic API ceiling before replacement work. The wNAF candidate potentially clears the low-cost threshold at ~10–14% but is not the “very large” tier.

## Larger tier: public-only Jacobian/mixed-coordinate engine (not implemented)

This is the credible route toward a **roughly one-quarter to one-third runtime reduction**, rather than asserting that wNAF alone is revolutionary. It is a larger arithmetic review and should NOT be folded into the small experiment.

Source counts: current Go P384/P521 complete projective Double is **10 field Mul+3 Square**, with 15 field Adds and6 Subs; Add is **14 Mul**,20 Adds,9 Subs. BearSSL `ec_p256_m64.c:p256_double` lines781–852 instead uses the familiar a=-3 Jacobian doubling with **4 Mul+4 Square**. Its `p256_add_mixed` starting996 uses **8 Mul+3 Square** but is incomplete for equal/infinity inputs. These are operation counts, not cross-library cycle measurements. The a=-3 identity applies to P384/P521 too; transferring the *representation and formulas safely* is significant new work.

**Do not assume Square is cheaper than Mul on this build.** From the profile totals and source call counts, P384 executes approximately 6,700 field multiplies and1,550 squares per verification, with 5.09s and1.93s respectively; this implies an average Square/Mul cost around1.6. P521 initially gave a similar count/profile estimate, but parent’s later isolated helper diagnostic shows near parity there; that P521 inference is withdrawn. The P384 diagnostic does confirm~1.6× on this build. See`ecc-square.md`; do not generalize this ratio across curves or architectures. Fiat's generated Mul and Square each contain the same number of bits.Mul64 calls (P384:78; P521:162), so traditional optimized-squaring arithmetic ratios need not transfer.

At S/M=1.0–1.6, Jacobian Double saves roughly30–38% of multiplicative work in the sampled55% doubling component (~16–21 whole-operation percentage points before overhead). Add wNAF's ~9 points and scan removal's ~5, then pay a Q-table batch-normalization inversion (~5% plus setup), with mixed-addition benefits smaller when Square is expensive. This supports investigating **~25–35% runtime reduction**, not claiming a measurement or guaranteed2x. Field additions, memory traffic, exceptional-case checks, cache effects and compiler output require measurement; these estimates are selection bounds. See the separate public-only Square-via-Mul experiment below before investing in any new coordinate engine.

Requirements: a separate public verification point representation; existing Fiat fields can remain. Parse Q into affine coordinates, construct its per-operation odd table, batch-normalize once (nonzero finite Q on these prime-order curves makes 1Q..15Q finite); maintain public Jacobian accumulator; explicitly branch for infinity, equality and opposition in mixed Add. G affine odd multiples may be fixed global public constants. Preserve invalid-key checks and final canonical x/r+n behavior; do not apply incomplete formulas without guards or branch on a secret nonce. A conversion sandwich around each existing homogeneous Double would add enough Mul/Square operations to erase much of the gain—this needs a coherent engine, not just swapping one formula. Frozen FIPS module integration and ACVP tests are mandatory. This exceeds the present “no new math” low-review-cost scope; no implementation was started.

## Security, novelty, and acceptance boundaries

Only verifyGeneric after public point/scalar validation calls the new capability. ECDSA public verification already permits timing dependent on public inputs; all digit indices, negation decisions and zero skips are public. The helper is deliberately named/documented public/VarTime. Signing's k*G, ECDH, keygen, and existing nistec scalar methods remain byte-for-byte unchanged. No scalar inverse change. BytesX and SetOverflowingBytes still handle final x>=n; no inverse-free comparison from round two is repeated. Public parsing, compressed points, hash truncation, DER parsing, r/s bounds and generic-curve fallback are untouched.

Current-module code still requires normal FIPS review: mathematical equivalence is not automatic approval. Existing self-tests, approved-service recording and PCT remain. No public-package call to a new internal method means frozen module snapshots remain coherent; test public ECDSA against them instead of copying new internal helper tests into the old module.

This is an original Go call-site opportunity using established wNAF, not novel scalar mathematics. Low-cost worker's fresh `references/ecc-lowcost-open-gerrit.json` lists current scalar refactor CL627936, assembly dismantling627943, formula compilation669535, field inversion move693937 and point/field tests693938; no matching portable verification wNAF proposal surfaced in that query. That is not a proof of exhaustive novelty. CL109135 and BoringSSL public-P256 precedent already exist; neither is silently presented as a newly invented technique. Prior accepted Ed25519/X25519 improvements and rejected ECDSA projective/inverse changes are distinct.

## Executable parent test and measurement plan

All new files are outside production and **unformatted/uncompiled/untested**. No pprof or CPU tests were run by this worker. `git apply --check` succeeded. Copy:

* `ecc-engine-files/nistec_engine_round3_test.go` -> `src/crypto/internal/fips140/nistec/engine_round3_test.go` **candidate only**, since it intentionally tests the new unexported recoder and helper.
* `ecc-engine-files/public_engine_round3_test.go` -> `src/crypto/ecdsa/engine_round3_test.go` baseline AND candidate.

Point tests reconstruct every NAF as an independent math/big integer; check digit bounds/separation; zero/max/alternating/random inputs; compare combined results with unchanged ScalarBaseMult+ScalarMult+Add for 0,1,n-1,n,n+1,max and random scalars; Q=G,-G,infinity,non-affine3G,compressed3G; p==q alias, wrong-length nonmutation, scalar/Q nonmutation and concurrent borrowed-G reads. Both groups are prime order, so finite valid Q is the only subgroup check needed. Parent should run -race separately, not alongside timing. Add exhaustive carry/window boundary fixtures if a candidate proceeds to landing.

The public benchmark has eight distinct keys and deterministic signatures, valid and invalid-hash controls, and Warm/FreshCoordinates/Reparse modes. FreshCoordinates creates new key/coordinate objects per call; Reparse includes ParseUncompressedPublicKey+VerifyASN1 in every timed iteration. Current publicKeyToFIPS already reparses Q on every VerifyASN1 (no public-key cache); the extra modes explicitly exclude amortized-key assumptions. Fixed global generator precomputation is warmed equally for old/new, as permitted by the user. A genuinely process-cold first-use test can measure generator initialization separately; the candidate reuses the exact same sync.Once initialization, so it promises no cold initialization saving.

```sh
# Parent only, after applying candidate and copying/gofmt'ing test sources:
./bin/go test crypto/internal/fips140/nistec -run 'TestRound3(PublicNAF|Engine)$'
./bin/go test crypto/ecdsa crypto/internal/fips140/ecdsa
./bin/go test crypto/ecdsa -run 'TestRound2ECDSAVerifyEdges$'
./bin/go test crypto/ecdsa -run '^$' -bench 'BenchmarkRound3VerifyEngine$' -benchmem -count=12
# Retain baseline profiling workload for comparability:
./bin/go test crypto/ecdsa -run '^$' -bench 'BenchmarkRound2VerifyNormal/P-(384|521)/Valid$' -benchmem -count=12
```

Run baseline/candidate/A again with no concurrent CPU work. Record valid/invalid and fresh/reparse separately; do not promote helper operation counts into API percentages. Confirm P256 fallback/private Sign/GenerateKey/ECDH neutrality, allocations/stack growth and binary size. Run current-module default and purego correctness, existing frozen verification oracle and rare r+n/invalid-wrap vectors from round two, independent Wycheproof vectors, CAST/PCT/ACVP, race and arm64 correctness/API timing. Cross-compilation alone is not an arm64 performance result. Parent must check normal old snapshots with public tests. Avoid changing allocation expectations just to make a candidate pass.

**Final worker disposition:** small portable engine ready for central experiment; no measured winner yet. Larger Jacobian proposal is a clearly separate math/representation project with credible but unmeasured larger headroom. No production changes, no key reuse, no CPU-heavy work performed.

## Late profile-derived diagnostic: public-only Square via Mul

**Potentially cheaper than a new coordinate engine; unmeasured.** The count/profile discrepancy above suggests inspecting generated Square versus Mul(x,x) code generation. P384 fiat Mul and Square each have78 bits.Mul64 and137 bits.Add64 calls; P521 each have162 and314 respectively. They have equal generated line counts too. Nevertheless the supplied profile divided by approximate call counts suggests Square is ~1.6x the average Mul cost. Register allocation/CSE/code layout may matter; profiling attribution and call-count assumptions also need checking. This is not a claim that square mathematics is inherently slower.

Prepared `ecc-engine-files/fiat_square_round3_test.go` -> `src/crypto/internal/fips140/nistec/fiat/square_round3_test.go`: isolated Square versus self-Mul diagnostics and byte-output equality tests. Run centrally only if useful:

```sh
./bin/go test crypto/internal/fips140/nistec/fiat -run '^TestRound3SquareViaMul$' -bench '^BenchmarkRound3SquareViaMul$' -benchmem -count=10
```

If that confirms a material difference, `patches/ecc-engine-square-mul.patch` is a **follow-on to ecc-engine-wnaf.patch**, not a standalone baseline patch. It copies the existing 48-line complete Double body as doublePublic and substitutes its three Square calls with existing Mul(x,x), directing only the new variable-time engine's accumulator doublings there. No new formulas, field APIs, assembly or secret-path changes; shared Fiat Square and existing Double remain unchanged. The public-only scope intentionally sacrifices duplication to preserve private signing/ECDH code. Generator and generated curves are updated together. Reproduce with `ecc-engine-files/make-square-patch.py`.

The follow-on plus the96-line base engine remains under~150 handwritten core lines (generated repetitions excluded). Test with the same differential engine/public API suite. If Square really costs1.6Mul, replacing three squares can save about12% of the Double arithmetic, roughly6 whole-operation points in addition to wNAF, before code-layout effects. **Do not promote on this helper inference**: require public VerifyASN1 A/B, fresh/reparse controls, default/purego and arm64 confirmation. Current status: both helper microtest and optional public-engine follow-on are uncompiled/unrun. Follow-on patch dry-run passed in a temporary tree containing the proposed base patch; no production tree edits. It can be discarded independently if helper/API results fail.

## Follow-up: Pornin lattice reduction versus endomorphisms — primary-source result

**Important qualification to the attractive “128-bit instead of256” claim:** lattice verification genuinely can halve the one remaining doubling chain **when the full ephemeral point R is known**. Ordinary ECDSA DER signatures supply only x(R) mod n, not R or its sign. The primary papers explicitly discuss that obstruction; it must not be omitted from an ECDSA speed claim. This is a worthwhile larger research tier, but not a switch enabling an existing half-size ECDSA implementation.

### What the actual implementations and papers do

Primary references and retrieval records are in `references/ecc-lattice-sources.txt`:

1. **Pornin, ePrint2020/454**, *Optimized Lattice Basis Reduction In Dimension2, and Fast Schnorr and EdDSA Signature Verification*, April18,2020. Algorithm4 finds small signed a,b satisfying a=b*k (mod n), using shifts/additions/subtractions in the reduction loop. Cached squared norms/inner product allow eliminating divisions from that loop. Its Curve9767 result is **30–33% runtime reduction for Schnorr**, not a Go/ECDSA measurement. The conclusion expressly warns that ECDSA omits R's y-coordinate and reduces x modulo n.
2. **Antipa et al., SAC2005/LNCS3897 (published2006), pp307–318**, *Accelerated Verification of ECDSA Signatures*, DOI10.1007/11693383_21. §4.1 analyzes ECDSA* carrying the full R; §4.2 reconstructs candidate R values for ordinary ECDSA and handles the extra work. Its “40% speed-up” rough example is459A→328A, a **1.40× throughput ratio /28.5% runtime reduction**, NOT a40% reduction. Measured ARM7 P384209ms→154ms is26.3% reduction (1.36×); those are historical implementation-specific ECDSA* results, not our results. Full-R/parity side information is outside the present API/format constraints. The paper's Case2 assumes an extra multiple of Q supplied in a certificate: explicitly excluded here as key-specific precomputation/reuse.
3. **Pornin's crrl**, pinned`4cc7cbbe8796ee8d459b815d81318603279879e4`: `src/p256.rs:1175 verify_helper_vartime` really implements the short-basis, four-term, roughly130-bit chain, but its documentation says **Schnorr/FROST** and its inputs include R. In the same file, `PublicKey::verify_hash:2274`, the actual ordinary-ECDSA verifier, calls the **full-length wNAF** `mul_add_mulgen_vartime` after inverting s. This source-level contrast is especially strong evidence against attributing the Schnorr helper's doubling reduction to existing ordinary ECDSA verification. Its `src/backend/w64/lagrange.rs` contains the optimized reducer; the generic dispatcher accepts4–8 limbs, so P521's9-limb order is not a direct supported transplant.
4. **GLV is a different mechanism.** In crrl`src/secp256k1.rs:682`, the cheap endomorphism is explicitly(x,y)→(epsilon*x,y), with an eigenvalue theta modulo the order. Its half-size split expresses k=k0+theta*k1, and it applies the cheap point map to arbitrary Q. In contrast, crrl's P256 code has no such map and uses the signature-equation lattice trick above. P256/P384/P521 are not interchangeable with secp256k1: the cube-root map does not preserve x³−3x+b unless the multiplier is trivial (comparing the nonzero linear coefficient forces epsilon=1). Nothing in Go's current point code supplies an alternative cheap nontrivial endomorphism. Merely computing[2^h]Q anew costs h doublings and consumes the hoped-for saving; retaining it per key violates this user's premise. This does not claim a theorem that every conceivable NIST-curve endomorphism is expensive; it rejects transferring this particular GLV map/optimization.

### Exact ordinary-ECDSA adaptation and missing sign cost

Keep the existing validation and public inverse. Define u1=e/s, u2=r/s modulo n. Reduce the basis(n,0),(u2,1), giving small a,b with a=b*u2 (mod n), and b nonzero modulo n. Define gamma=b*u1 (mod n). For a candidate R, check

```
[gamma]G + [a]Q - [b]R = infinity.
```

This is equivalent to the original point equation because n is prime and b is invertible. Split gamma=gamma0+2^h*gamma1 and use fixed G and[2^h]G tables, so all four scalars fit h≈m/2+small slack. This **really does remove about half of Q's old full-length doubling chain**, unlike simply interleaving the original full-width u1,u2. No reused key is required. Existing complete Add/Double can implement the point part; local negation uses existing field Sub as in our small prototype.

But a valid ordinary signature normally has two candidates R and−R for x=r. With no sign side information:

* First candidate uses roughly m/2 doubling steps, plus four half-size wNAFs (~m/3 additions overall).
* If that sign was wrong, §4.2's incremental update is `T <- T + [2b]R`. This requires another half-size arbitrary-point multiplication, not merely one point Add unless[b]R was separately computed/stored. Computing it in parallel also incurs its own half-size doubling chain.
* For valid signatures without a parity bias, the first sign is right about half the time: expected doubling work is thus **~3m/4**, not m/2. The paper explicitly models the two-candidate case as1.5 ECDSA* verifications while noting that incremental retries need less work than a full recomputation.
* An invalid-hash control constructed from a valid signature must reject BOTH signs, so it pays ~m doubling steps. Arbitrary valid signatures can deliberately select the slower sign; “average1.5 tries” is not a worst-case bound. Low-s normalization does not reveal R's parity.
* r+n may also be <p. Both x candidates must be preserved and canonical, potentially giving four R candidates. This occurs with tiny probability for ordinary random signatures but can be selected adversarially. A defensible first prototype can immediately use the ordinary verifier whenever r+n<p, preserving rare valid r+n and bounding pathological retries. A branch cannot simply ignore the second x. That fallback is not a key cache.
* Recovering a point from x needs a square root and validation. Go's P384 square-root chain is14M+381S and P521 is519S, plus checking/decompression overhead. These are roughly as expensive as the final inversion the ordinary verifier currently performs (15M+383S /13M+520S). Testing infinity at the end avoids BytesX, but it does **not** make the root-recovery cost vanish. Do not add the already-rejected standalone projective-X saving on top without paying this cost.

A useful P384 operation budget for a carefully implemented no-side-information variant is approximately:

* Existing baseline:387D+200A, including Q table and final Add.
* Short-basis first sign:~196D+142A using width5, two per-operation8-point odd tables, and generator split at a multiple of4 so existing generatorTable[h/4] can be borrowed. The exact h/digit boundary adds a few steps over an ideal192.
* Average extra wrong-sign correction:~96D+17A. Total average~292D+159A; the order inverse is unchanged, the lattice computation is additional, and root recovery roughly replaces final inversion.

Applied only as an estimate to parent's current profile, this is ~13.4 percentage points from doublings +5.4 from additions +4.9 from scans =**~24 gross percentage points before basis reduction/recoding/negation/decompression differences**. Thus **~20%-class valid-signature improvement is credible to investigate**, perhaps more in a tuned engine, but a40–50% ordinary-ECDSA runtime reduction from “half scalars” alone is not supported. Relative to the already-proposed ~14%-budget wNAF engine, the extra gain may be single-digit percentage points. Invalid-hash and worst-sign behavior are materially less favorable. P256's lower doubling fraction and existing signed windows/affine tables leave less headroom; do not project generic-curve counts onto accelerated P256.

For full-R Schnorr/FROST, by contrast, the missing-sign correction disappears. At the supplied generic-curve doubling fractions, halving D alone has about27 whole-operation percentage points of gross headroom. This is the setting where the larger claim is intrinsically more persuasive—but adding another signature scheme or changing ECDSA's wire format is outside this task.

### Review cost and proposed executable next step

The short-vector routine is not `bigmod.InverseVarTime` under a new name. It computes a relation, not an inverse. An optimized port needs signed bounded limb vectors, double-width norms/inner products, explicit carry/overflow proofs and termination bounds. For NIST orders, do not assume both coefficients fit signed128 bits: Pornin's bound requires extra bits; crrl P256 even repairs a deliberately truncated128-bit reducer result before recoding130 digits. P384 needs corresponding~194-bit signed storage, P521~262-bit; initial P521 norms need up to1042 value bits plus sign/carry headroom. All scalars and points here are public, but public adversarial inputs still require memory safety and bounded failure behavior. A production FIPS module cannot casually import math/big for the reducer.

Prepared **test-only, uncompiled/unrun** `ecc-engine-files/lattice_oracle_round3_test.go` -> `src/crypto/ecdsa/lattice_round3_test.go`. It depends on the already-present round-two fixture helpers. It uses simple partial Euclid/math.Big as an independent algebraic oracle, not as a performance proposal. Tests check the short-fraction relation, normal deterministic ECDSA signatures, both s and n−s, invalid hashes, actual rare x=r+n signatures, and invalid field-wrap inputs acrossP256/P384/P521. Its deliberately independent scalar multiplications are slow and MUST NOT be timed as if they were the intended joint engine.

```sh
# Parent only; correctness experiment, NOT a benchmark:
./bin/go test crypto/ecdsa -run '^TestRound3LatticeOracle$'
```

Before any high-tier production proposal: benchmark a bounded-limb reducer alone to establish overhead; build an experimental half-size four-term point engine using existing complete formulas; compare full VerifyASN1 to both current baseline and simpler wNAF. Record first-sign-hit/miss, valid/invalid hash, r+n fallback, cold/reparse modes separately. No speculative scalar-reduction or ephemeral-point cache. This worker has performed source/document inspection and written test sources only—no CPU benchmarks/tests/builds.

**Updated disposition:** lattice reduction is mathematically applicable and warrants a high-tier research listing, but its strongest quoted primary-source gains concern known-R signatures or added parity information. The primary ordinary-P256 implementation itself chooses full-width wNAF. Under unchanged ECDSA DER and no key reuse, missing-R sign, recovery cost and adversarial retries make it a less compelling large-gain bet than the bare “halve doublings” slogan suggests.
