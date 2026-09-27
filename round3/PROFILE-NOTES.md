# Profile inventory and interpretation

All measurements collected by the parent from actual complete public API benchmarks, with one pinned guest CPU. Profiles are diagnostic and were not mixed into the paired timing datasets.

## Baselines

- Non-PQ: f6653cda (first-pass findings + round2 ML-KEM/CTR/name improvements; rejected RSA public-key cache excluded).
- PQ authoritative: 62c2afb8 = upstream2ff5743d + all13 Filippo CLs ending at current822040 PS3. Separate worktree /home/exedev/go-pq-stack; exact originalGerrit revisions in references/pending-stack.json. No own earlierPQ improvements in this comparison baseline. Profiles under stack-profiles/. Unstacked profiles are historical only for PQ claims.
- Same compiler: go1.28-devel_2ff5743d linux/amd64. Pending worktree uses identical compiler tools and copied generated toolchain configuration, with its own GOROOT/source. New stack kernel AVX2 path is enabled on this AMD EPYC9554P and appears in ML-DSA profiles.

## Observations that changed priorities

- P256 VerifyASN1: Q multiplication70.32% cumulative; all doubling48.38%; fixedbase12.55%; order inverse9.06%; the two constant-time selection routines only3.00% flat. Consequently variable indexing alone is not a large-win explanation. Go already removes fixedbase doublings through positional precomputation.
- P384/P521 Verify: complete homogeneous doubling approximately55% cumulative; fieldMul/Square dominate. Generic wNAF reduces additions, not half of two doubling chains. A separate public Jacobian/mixed engine would be a larger project.
- Stacked ML-KEM768/1024 Encaps: canonical fieldReduceOnce30.51/26.41% flat; 1024 genericencoding11.67% cumulative (includes compression). Good targets for tiny compiler-intrinsic lowering and fixed layouts.
- Stacked ML-DSA44: canonicalfieldReduceOnce12.28% flat Sign,4.67% parse+Verify. Its earlier48% unstacked Sign figure is obsolete after pending lazy reductions. PartialMontgomery reduction now25.08% Sign. Do not generalize the canonical helper proof to partial/wide helpers.
- RSA2048 publicVerify: rr setup29.44% cumulative,ExpShort65.71%; Montgomery multiply89.20%. Cold setup improvement can help without a reused key. Normal precomputed Sign: Exp90.90%,shiftIn6.69%; distinguish it from the earlier aggregate sign profile.
- Native warmHMAC-SHA256: compression45.50% flat; Sum88.77% cumulative; UnmarshalBinary3.86% cumulative. NativePBKDF2-SHA256: compression47.22%,Sum85.65%,Unmarshal4.28%. This explains previous weak native-cache results and motivates a fixed-digest recurrence that removes the entire generic finalization path, not just checkpoint restores.
- HardwareAES-GCM: assemblydominates; softwareGHASHunrolling is not a default-native CPU gain.

## Profile-label caveats

The initial profiles/hmac and profiles/pbkdf2 selectors also matched opaque/marshalable wrapper variants because regex components lacked a leadinganchor. They are aggregate diagnostics, superseded for native claims by hmac-native-warm, hmac-native-cold and pbkdf2-native. Initial rsa-sign includes all precomp/noprecomp subcases; rsa-sign-precomp is the exact ordinary precomputed case. The failed first pending-worktree pprof attempt lacked generated buildcfg sources; copying the exact same built toolchain's generated configuration fixed this, and profile-stack-rerun completed. These failures/aggregates are preserved, not represented as clean evidence.

## Primary implementation references

- Official BearSSL7bea48e5e850ab4cafbe68d3765cdaba13a86d6f: i31/i62 exponentiation, word-quotient conversion/reduction, HMACkey/context split, complete/incomplete EC formula and window-to-affine discussions. Clone and official bigint/constanttime/speed/ctmul pages in references/.
- Official pq-crystals/kyber3edd5af5991927164edd4aacebfcbee00b8064e7, dilithiumd35ba3fe5449bee3e6d43e1f296c3ca818bd36be: conditional correction and fixed codec concepts. Not BearSSL PQ code—BearSSL has none.
- BoringSSL pinned wNAF reference; Pornin crrl lattice/verification comparisons: exact paths/revisions in ecc-engine.md. Source concepts guide independent Go prototypes, not transplanted benchmark claims or differently licensed implementation bodies.

Percentages here are inclusive CPU attribution, not predicted speedups; inlined leaf and caller fractions overlap. Actual A/B results live under bench/ and all PQ headline comparisons use the stacked tree.
