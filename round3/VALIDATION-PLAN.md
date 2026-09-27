# Final gates (after all timings)

Mainstream native amd64 measurements; portable/arm64 codegen and cross-build checks are not arm64 timing.

1. Only select independent wins. Main worktree baseline f6653cda remains without the declined RSA key cache; PQ worktree baseline62c2afb8 includes all13 current pending CLs, no earlier own PQ changes.
2. Native full short suites, purego/FIPS-on/race affected packages. Do not weaken public method/allocation tests. PBKDF2's original helper-method prototype failed TestExtraMethods and was corrected to an internal package function before acceptance.
3. Exhaustive canonical-reducer domain (ML-KEM6658 inputs; ML-DSA16760834) and exact compression oracle; full PQ KAT/accumulated/malformed/implicit-rejection tests against stacked representations.
4. Inspect final inlined amd64/arm64 reducer code for data-dependent branches; explicit constanttime intrinsic required, not ordinary Go if. No assertion of timing from source alone.
5. PBKDF2 fixed recurrence: native SHA256 only; independent HMAC oracle, iterations<=1 preserved, partial/multiblock output, long password/salt, custom/wrapped/mixed hash fallback, service indicators; generic algorithms unchanged.
6. P384 Square-via-Mul: identical generated arithmetic and aliasing, wrapper/template agreement, full Sign/Verify/ECDH, purego, ARM64 compile-time fallback. This is amd64 codegen optimization, not a universal S/M arithmetic law.
7. Public wNAF engine: differential all scalar/window boundaries and zero/n-1/n/n+1, identity/equal/opposite points, receiver aliases, all invalid signatures and r+n cases; private scalar code unchanged. Reparse-per-operation results must be included.
8. RSA RR-word: current experiment includes shared secret-modulus constructor use. Constant loop/divider/corrections, no hardware divide, normalization/size gate allowed. Exhaustive toy-base quotient/correction checks plus math/big random boundaries; private keygen/import/sign controls. Never introduce variable-time division into private p/q setup.
9. Same compiled toolchain baseline/candidate, paired binaries, no profiling or other CPU work concurrent with timed results. Separate profile data and scouts from accepted benchmark evidence.
