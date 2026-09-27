# Selected follow-up: P256-only projective verification

> **Final status: NOT RECOMMENDED.** The actual P256-only patch measured 4.7% median improvement, p=.101, not significant. Earlier all-curve ~8% figures do not establish this patch as a win.

Prepared September 27, 2026, against independent baseline `04a082e1`.

## Recommendation

Proceed with **one** narrowed P256-only measurement, not more inversion/multiplication variants. Parent's whole-operation n=12 results justify this bounded follow-up: full projective patch P256 78.60→72.31 µs (reported −8%, p=.017), while P384 regressed +3.84% (p=.028). These are parent-supplied measurements of the PREVIOUS all-curve patch, not measurements of this new narrowed patch. P521's prior benefit does not require including it in this smaller submission. Drop the variable-time inverse variant from this P256 proposal: the measured P256 regression and allocation tradeoffs do not justify retaining it here.

The final-coordinate comparison is a known algorithm implemented elsewhere; this is an original remaining Go optimization opportunity, not an algorithmic invention.

## Artifact and exact scope

`patches/ecc-projective-p256-only.patch` changes exactly three files: **+63/-1**, including comments/blank lines (about 50 non-comment executable/declaration lines). Reproduction script: `patches/make-ecc-p256-patch.py`. Both are independent of the previous all-curve patch and generated from `git show 04a082e1:<path>`, not experimental working-tree edits.

1. `nistec/p256.go`: canonical field parse, infinity rejection, compare x*Z with X. **Uses `&p.z` and `&p.x` because purego P256 stores field values, not pointers.** This corrects the original illustrative patch's missing address operators; the earlier uncompiled patch was not build-ready for that representation.
2. `nistec/p256_asm.go`: canonical parse and Montgomery conversion, infinity rejection, compare x*Z² with X. Existing field operations only. Same Go wrapper serves default amd64 and arm64.
3. `ecdsa/ecdsa.go`: compute R once, detect the optional `interface{ EqualX([]byte) bool }`, call a shared comparison helper when available. Otherwise execute the original BytesX/mod-n/equality path unchanged. Only P256 implements the optional interface.

The generic `Point` constraint, Curve layout, generator template, other curves, order inverse, signing, public APIs, precomputation and key caches are **unchanged**. `verifyProjectiveX` owns r/r+n logic for both P256 backends: canonical validated r, exact integer addition of n, byte-carry overflow rejection, and EqualX's strict r+n<p field bound. Equality false for infinity. No mutable shared state or input/point mutation.

Prefer capability detection to `c.ordInverse` gating: an order-inversion acceleration is an unrelated feature and should not implicitly control availability of a coordinate-comparison operation. The optional-interface pattern also avoids broadening `ecdsa.Point` just to accommodate P256. The two interface calls and the type assertion are intentional and must be measured; generic code generation can affect CPU/layout. P384 is unchanged mathematically but pays a failed capability assertion, so **measure its complete public operation as a neutrality control**, rather than promise zero cost.

`git apply --check` passes. No production files were changed and no gofmt, compiler, tests, or benchmarks were run by this agent for this follow-up.

## Validation and acceptance gate

Existing public `ecc_round2_test.go` and internal ECDSA differential tests work unchanged. They cover actual valid x=r+n, invalid reduction of r+n modulo p, integer-byte-carry wrap, infinity, compressed keys, canonical parsing, and original acceptance semantics. Existing FIPS/old-snapshot rationale remains: this is wholly inside the coherently replaced internal module, with no public call to the new method and no removal of validation/CAST/PCT/service indicators.

Use `tests/nistec_p256_ecc_round2_test.go` in place of the earlier all-curve point helper test. It retains affine-vs-projective oracle, computed infinity, nontrivial Z, import/alias/canonical-bound tests for P256 only, and asserts that P224/P384/P521 do NOT expose EqualX. Do not install it alongside the previous point helper test (shared test helper names). This new file is unformatted/uncompiled; parent should format and run centrally. As before, old snapshots should run public tests, not a new internal helper capability test they cannot satisfy.

Required follow-up is baseline vs this exact patch:

- Existing complete public `BenchmarkVerify/P256` plus normal-sized deterministic-signature `BenchmarkRound2VerifyNormal/P-256/{Valid,InvalidHash}`.
- Adversarial `BenchmarkRound2Verify/P-256/{ValidRPlusN,InvalidFieldWrap}` and correctness for infinity/overflow; report their timings separately, not in the ordinary workload headline.
- P384 public Verify neutrality control, ideally P521 and Sign control too.
- Default amd64 and purego correctness/performance; arm64 public verification confirmation before claiming architecture-independent gain. No new assembly is proposed.
- Compare allocations and valid-vs-invalid timing. If optional dispatch erases the P256 gain or materially harms P384, stop and reassess rather than proliferate speculative variants.

The previous 8% result is encouraging but remains a hypothesis for this changed dispatch/layout. Retain only if repeated controlled full-operation timings confirm it.

## Final disposition — NOT RECOMMENDED (September 27, 2026)

Parent's measurement of the **actual narrowed P256-only patch** reports complete public Verify median improvement of **4.7%, p=.101**: not statistically significant. This supersedes the earlier motivation based on the different all-curve prototype's ~8% result. Do not advertise a demonstrated 8% P256 win or recommend this patch on the available evidence. Retain it only as an unselected experimental artifact; no further CPU work is requested.
