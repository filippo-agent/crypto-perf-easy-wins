# Round 3 — symmetric/hash/KDF source and profile follow-up

**September 27, 2026; baseline f6653cda.** No production edits, builds, tests, profiles, or timings run by this worker. All artifacts below are outside the repository. The three principal proposals and the gated cold-HMAC probe pass `git apply --check`; that is not a correctness or performance result. Test sources are gofmt'd.

## Decision summary

| Candidate | Scope / evidence | Cost and current decision |
|---|---|---|
| **Fixed-size SHA256 PBKDF2 recurrence** | Default amd64/arm64 public PBKDF2.Key. Profile has substantial generic hash finalization/copy overhead, not just checkpoint restoration. | **Strongest new experiment**, 76 added lines / three internal files, no new compression kernel. More specialized-path/layering review than a tiny cleanup. Corrected v2 patch passes parent-run public HMAC/PBKDF2 tests; paired performance evidence pending. |
| In-place CTR_DRBG rekey | Public crypto/rand.Read **with FIPS on only**. Source shows temporary Block/CTR copies at two updates per ordinary Generate. | Small API/internal ownership change, no arithmetic/assembly change; **secondary experiment**, needs public Read profile/measurement to justify. |
| Explicit GHASH multiplier lanes | Public AES-GCM **only with software GHASH**, e.g. mainstream amd64 with PCLMUL disabled or purego. Existing arithmetic, no secret tables. | Small local Go rewrite; conditional scope, **not** a default EPYC GCM win. Outside patch and independent bitserial tests ready. |
| SHA3 squeezing per-word I/O | Requested hypothesis checked through public SHA3/SHAKE wrappers and backend dispatch. | **Already absent** in current little-endian/amd64 code; no new proposal. |
| 64-bit reflected GHASH / wide-vector GCM engines | Larger separate tier, below. | Source/mathematical opportunities only, **not recommendations**, no code or unsupported gain claim. |

No new key-reuse cache. No Boring path. No unusual-architecture-only recommendation. No resurrection of native HMAC cache/ResetTo, direct SHA2 padding, pending HKDF hoists, selected CTR partial buffering, or unsuccessful TLS helpers.

## 1. Profile evidence — important selection caveat

Parent-generated files `profiles/pbkdf2.{bench,top,cum}` and `profiles/hmac.{bench,top,cum}` used regexes matching **SHA256, OpaqueSHA256, AND MarshaledSHA256**. Their profiles combine the three workloads. These are not native-SHA256-only percentages, and the opaque wrapper recompresses pads because it does not expose marshaling. Do not use the combined fractions for a quantitative native-path speedup bound.

Combined PBKDF2 flat samples: SHA-NI compression **49.40%**; Digest.Sum **14.32%**; memmove **10.64%**; checkSum **6.59%**; Write **5.14%**. SHA256 UnmarshalBinary is only **1.17% flat / 2.66% cumulative**. Combined warm HMAC: compression **53.01%**, Sum **13.27%**, memmove **11.60%**, checkSum **6.47%**, Write **4.59%**, UnmarshalBinary **1.28% flat / 2.99% cumulative**. Flat figures are not additive with cumulative figures.

The native public profiling rows were PBKDF2/SHA256/4096/one block **696883 ns/op**, HMAC/SHA256/32/warm **158.7 ns/op**. These are single profiling-run baseline numbers, **not an A/B result**. The point of the profile is directional: checkpoint serialization alone was not the dominant remaining overhead; the generic finalization/copy/call path is more substantial. Exact native-only follow-up is now available below; the combined results remain labeled as historical aggregate evidence.

Parent `profiles/aes-gcm.{bench,top,cum}` combines public 1350-byte AES128 Open and Seal. `gcmAesDec`+`gcmAesEnc` account for **87.37% flat**; `encryptBlockAsm` **5.44%**, `gcmAesFinish` **1.65%**. Generic `ghashMul` is absent. This explicitly rules out promoting any software GHASH tweak as a speedup for default EPYC AES-GCM. These 1350-byte steady-state profiles also say nothing about constructor-inclusive tiny-message GCM.

### Native-only follow-up received at 14:50 UTC

Parent `hmac-native-warm`, `hmac-native-cold`, and `pbkdf2-native` each contain a single native SHA256 benchmark (verified their .bench files), so these supersede the aggregate samples for attribution:

| Workload | Relevant sample attribution |
|---|---|
| Warm HMAC/32, 150.7 ns profiling row | SHA-NI **45.50% flat**; Sum **14.27% flat / 88.77% cumulative**; memmove **14.97% flat**; checkSum **7.25% flat**; Write **4.91% flat**; UnmarshalBinary **3.86% cumulative**. |
| PBKDF2/4096/one block, 652695 ns profiling row | SHA-NI **47.22% flat**; Sum **12.42% flat / 85.65% cumulative**; memmove **12.10% flat**; checkSum **8.03% flat**; Write **5.46% flat**; UnmarshalBinary **4.28% cumulative**. |
| Cold HMAC/32, 507.9 ns profiling row | Internal HMAC.New **13.31% flat / 59.56% cumulative**; mallocgc **29.73% cumulative** (overlapping New); SHA-NI **31.39% flat**. Five allocations, 480 B/op. |

These are profiling baseline observations, not paired A/B gains. Native PBKDF2 reinforces the fixed-recurrence experiment: it removes general finalization/copy/call machinery rather than targeting only the ~4% cumulative checkpoint decoding. No constructor optimization could materially accelerate a 4096-round KDF merely by improving its one New call.

**Narrow cold-only follow-up:** New's 13.31% flat makes pad-loop attribution worth checking, but its 59.56% cumulative is not pad-building time. `patches/hmac-pad-singlepass.patch` is a source-only, net-deletion probe: keep both existing pad allocations, copy the normalized/truncated key into ipad once, and produce ipad/opad from each original ipad byte in one loop. No allocation coalescing, native cache, API, object-layout or keyctx change. It removes one key copy and one loop traversal without making any speedup claim. This is explicitly the combined-pad-build follow-up authorized after New was profiled, not a newly discovered general HMAC mechanism. **Gate timing effort on New line-level attribution**, ideally parent's pprof list; if pad loops account for little of that flat time, discard it.

Because the loop ranges over the already-sized ipad, arbitrary custom hashes with digest Size greater than BlockSize preserve the original `copy` truncation behavior. Iterating directly over the normalized key would not preserve this corner case. Existing independent round2 public HMAC tests cover long/short keys, mixed factories, Reset/Clone and cold complete New/Write/Sum. Keep their unchanged cold/two-use/warm benchmark sources and fresh construction inside each cold timing iteration. Do not reuse prior pad-coalescing helper measurements. This patch is separate from PBKDF2-fixed-digest and is not added to the decision shortlist without the attribution and complete-operation result.

## 2. Strongest new mechanism: specialize the PBKDF2 digest recurrence

### What changes

`internal/fips140/pbkdf2.Key` already computes U1 generically, preserving password normalization, salt/index hashing, constructor behavior and existing validation. For SHA256, every subsequent input U is **exactly 32 bytes**. Each inner or outer hash starts after one 64-byte pad block, so its final compression block is always:

`U[32] || 0x80 || zero[23] || BE64(768)`.

The experiment initializes that block **once per derived-key block**, then runs the existing SHA256 block dispatcher twice per iteration, overwriting only its first 32 bytes. It accumulates T in eight uint32 words and serializes once at the end. XOR commutes with the big-endian encoding, so this is exactly the existing bytewise XOR recurrence, including the already-selected XOR optimization's semantics.

The number of cryptographic compressions remains **two per iteration**, not one. What disappears from each iteration is the entire generic HMAC Reset/Write/Sum path: repeated checkpoint unmarshaling, temporary Digest copies for nondestructive Sum, general padding and buffered Write logic, repeated interface calls, byte-slice output copies and redundant service-indicator calls. It still serializes each compression's chaining words into the next block; it does not pretend the existing compression ABI accepts native digest words as a message.

### Novelty versus rejected work

- **Not the round2 native-cache experiment:** no new HMAC field, allocation, persistent native state, or general HMAC fast path. Decode the *existing* marshaled checkpoints twice per output block; do not replace the checkpoint cache. The inner loop never calls the generic finalization API.
- **Not the prior direct-pad change:** that changed padding inside ordinary hash Sum but preserved repeated clone/Write/Sum/interface machinery. This exploits PBKDF2's fixed-message recurrence and fixed length across thousands of operations.
- **Not the existing CL27458 cache optimization:** that already removes pad recompression; this does not claim those compression savings again.
- **Not HKDF loop hoisting:** neither info nor counter allocation is involved.

### Artifact and API boundary

**Use parent-corrected `patches/pbkdf2-fixed-digest-v2.patch`; v1 is superseded and must not be applied.**


1. New internal `sha256.PBKDF2InnerLoop` (50 lines) can call the existing private `block` dispatcher; uses a [64]byte block, [8]uint32 total and one scratch Digest.
2. Internal free function `hmac.PBKDF2InnerLoop(h *HMAC, ...)` (21 lines) checks exact native SHA256 types/sizes, KDF marking, and existing marshaled checkpoint availability; restores two local Digests once and delegates.
3. Five-line fast-path invocation in PBKDF2 after U1; all other hash constructors stay in the existing loop.

**API-surface correction from parent validation:** v1 incorrectly made the HMAC helper an exported method. Although HMAC is defined in an internal package, the concrete object escapes through public hash.Hash, so its extra exported method became reachable via a type assertion. Public HMAC TestExtraMethods correctly rejected it. Parent changed it to a package-level function and changed PBKDF2's caller; no cryptographic arithmetic changed. The v2 form does not enlarge the returned hash's method set. Full corrected proposed source is preserved under `symmetric-files/pbkdf2-fixed-digest-v2/`; the parent's v2 patch is authoritative. The old generator and v1 directory are historical artifacts, not a safe regeneration path for the corrected candidate.

**Parent-reported validation:** public crypto/hmac and crypto/pbkdf2 tests pass after this correction. This worker ran no tests. Other backend/FIPS/ACVP checks remain pending unless separately recorded by the parent. A single uncontrolled public PBKDF2/SHA256/4096 scout pair was about 636 µs versus 528 µs; it is **not an accepted percentage, paired timing result, or recommendation**. Await the parent's interleaved full-operation measurements and controls. The full-PQ-stack baseline clarification does not affect this SHA256-only candidate.

This is an **experimental API shape**, not polished upstream design. Having PBKDF2-named code in the hash package is the principal layering objection; maintainers may prefer a small fixed-HMAC compression interface, but introducing a general interface before proving a substantial public PBKDF2 gain would be premature. Do not generalize to every SHA2/SHA3 variant up front. The patch has no assembly changes and no new public API or old-snapshot dependency.

### Correctness/security constraints

- SHA256 only: both concrete Digests must have Size 32 and both checkpoints must be SHA256, `nx==0`, `len==64`. SHA224, mixed families/variants, opaque wrappers and arbitrary custom hashes retain fallback behavior.
- HMAC.New is unchanged, including two constructor calls, uniqueness check, key normalization and pad preparation. Unusual constructors are not silently replaced with SHA256.New.
- T and U must be separate 32-byte buffers; current PBKDF2 allocates them separately. Each fast path consumes the already-written U1, updates both, and never aliases the cached checkpoints.
- The live HMAC state deliberately does not track the last fast-path iteration. This is safe only because PBKDF2 calls Reset before the next derived-key block and never exposes its HMAC. The helper documents that obligation.
- Iteration<=1 behavior and key-length validation are untouched, including existing nonpositive-iteration behavior. No iteration count, salt length, or password policy change.
- Only public algorithm/length/count controls branch. No secret-dependent lookup, shift count, or loop bound. Existing compiler/assembly SHA dispatch remains intact. Each compression call is one block, preserving short assembly-call/preemption limits.
- PBKDF2's service-indicator checks and the U1 HMAC Sum remain in place. The helper records approved once per recurrence invocation. `RecordApproved` cannot override nonapproval from short salt/output/custom hash. Review FIPS indicator/CAST/ACVP behavior rather than assuming that fewer calls are automatically acceptable.
- Scratch chaining state is key-derived secret state, like existing HMAC state. No global cache, new concurrent mutable object, unsafe alias, or entropy change.

### Test and measurement plan

Copy `symmetric-files/pbkdf2_round3_test.go` to `src/crypto/pbkdf2/`. It is baseline-compatible and compares complete public Key calls with an independent loop built from public HMAC (which the patch does not change). Covers password lengths 0/1/32/63/64/65/128; salts across finalization/block boundaries; iterations -1/0/1/2/3/17; partial and multiple output blocks; SHA224/SHA512/opaque-SHA256 and mixed-constructor fallback. Existing round2 HMAC tests add raw-pad independent oracles and SHA3/custom-hash controls.

Public `BenchmarkRound3PublicPBKDF2` includes fresh construction for **every** operation: SHA256 primary, SHA224/SHA512/opaque controls; iterations 1/2/17/4096 and 32/64-byte output. No retained password-key cache. Start with SHA256/4096/32, then exact cold controls and larger output. Also run existing known-answer and FIPS tests, purego, amd64 without SHA-NI, and arm64 when available. Native-only timing is required before any headline percentage.

## 3. Small separate experiment: reinitialize CTR_DRBG in place

### Source proof and mechanism

Current `drbg/ctrdrbg.go:46–84` builds `aes.New(K)`, calls `aes.NewCTR(cipher,V)` (copies the AES Block), then assigns the whole CTR to the Counter. Ordinary FIPS `Generate` does **two updates** when additional input is nonnil, and `drbg.Read` supplies fresh OS additional input to normal requests. This is per-operation constructor work, not relying on a user reusing a public key.

`patches/drbg-inplace-rekey.patch` adds internal `aes.ResetCTR` and replaces those two source sites. The helper initializes the owned `CTR.b` directly using the same `newOutlined`, resets IV/offset and clears the partial-output cache. It **still clears the Block**, preserving zero-initialized unused round keys and backend fields. The claim is avoided temporary object copies and return plumbing, **not** eliminating AES expansion, avoiding all zeroing, or changing rekey frequency.

The expansion algorithm, old-state encryption of seed material, pre-increment of V, post-Generate update, request/reseed limits, RoundToBlock, OS entropy/additional-input calls and FIPS records are unchanged. AES encryption-only expansion was an old, more invasive idea; it is not this patch.

### Ownership/review constraints

This helper is restricted to CTR_DRBG's exclusively-owned CTR. key and iv come from an independent local temporary and must not overlap the receiver. Do not turn it into a concurrent public rekey method, omit the partial-output clear, or initialize pointers to stack temporaries. On s390x the Block embeds a raw-key slice/backing storage and fallback pointer, so direct initialization must preserve their lifetime and backend-reset behavior; whole-Block clear intentionally avoids stale fallback pointers. This is correctness coverage, not an unusual-architecture performance pitch.

No new public signature or dependency across frozen FIPS snapshots. Public random output cannot be compared directly, so use deterministic CTR_DRBG KAT/ACVP output sequences, including successive Generates with partial lengths and reseeds, plus the existing full module suite.

### What is not demonstrated

No parent RNG profile is available here, so the copy cost may be too small beside entropy syscalls and key expansion. In normal non-FIPS mode `drbg.Read` calls sysrand directly: **zero claimed improvement**. Initial NewCounter also pays slow getEntropy; constructor-only microbenchmarks do not establish public rand.Read savings. Precomputing the fixed zero-key first three AES blocks would affect this rare initialization, not ordinary Generate, so it is not a useful new shortlist item.

Copy `symmetric-files/rand_round3_test.go` to public crypto/rand for serial complete Read benchmarks, separately with `GODEBUG=fips140=on` and default negative control; initial entropy acquisition is explicitly outside the steady-state timing. Sizes 16/32/64/1024/65536/65537 cover ordinary and request-splitting behavior. Existing public parallel rand benchmark is an additional contention control. Candidate-only `rekey_round3_test.go` belongs in internal AES and compares rekeyed vs freshly initialized streams across all AES key lengths, fragmented calls, IV carries and RoundToBlock.

## 4. Software GHASH: portable local rewrite, explicitly conditional

Current Go `aes/gcm/ghash.go:24–70` directly credits Pornin's hole-multiplication method. It runs a four-element mask loop and another four-element multiplication/index/modulo loop on each ghashMul call. GHASH decomposes each 128-bit product into **nine** such helpers. Each helper performs **16** ordinary 32x32-to-64 products: 144 products per data block.

`patches/ghash-explicit-lanes.patch` mechanically expands those same Go expressions into four named uint64 x/y lanes and four constant-index products/masks. It makes constants/register dataflow visible to the compiler and removes loop bookkeeping, array indexing and modulo. **Arithmetic count and mathematical algorithm are unchanged.** No table, retained-H cache, new assembly boundary, architecture tag or data-dependent branch. Existing attribution comment is retained.

This is inspired by the explicit arithmetic layout in BearSSL `src/hash/ghash_ctmul.c`, not a claim that Go was missing Pornin's algorithm: Go already has it. Our source was generated algebraically from the current Go indices, not translated from C.

Default amd64/arm64 accelerated GCM bypasses this helper entirely. Valid mainstream targets are software-GHASH configurations (e.g. amd64 VM without PCLMUL, `GODEBUG=cpu.pclmulqdq=off`, or purego), not default EPYC bulk encryption. **Do not extrapolate** from the Loong64-only assembly CL806280 or count that pending work as original.

`ghash_round3_test.go` (internal GCM) uses an independent bitserial 32-bit carryless-product oracle, all monomial pairs, structured maximal patterns/random values, and a separate bitserial GF(2^128) GHASH oracle. Inputs test separate zero-padding of multiple slices and tails. Existing GCM vectors must cover nonce sizes other than 12, truncated tags, empty/partial AAD/plaintext, in-place buffers, invalid-tag output clearing and overlap panics. Public `gcm_round3_test.go` measures Seal including fresh NewCipher/NewGCM controls; existing BenchmarkAESGCM covers Open too. Default hardware mode is a negative control, software mode the actual hypothesis.

### Larger math option: reflected 64-bit products

BearSSL `src/hash/ghash_ctmul64.c` uses three Karatsuba products over 64-bit limbs, each obtained from **two low-half** products (ordinary plus bit-reversed operands). Thus it uses 6x16 = **96** integer multiplies rather than Go's 9x16 = **144**, at the cost of bit reversal and different reconstruction/reduction. High-half identity: `high64(CLMUL(x,y)) = Reverse64(low64(CLMUL(Reverse64(x),Reverse64(y)))) >> 1`.

This is a moderate arithmetic/backend rewrite, not the tiny unroll patch. It has no need for new key caches; H reversals can be call-local. The 33% multiplication-count reduction is **not a 33% GHASH/AES-GCM time prediction**: additional logical operations matter, and software AES can dominate. BearSSL's own historical asymptotic amd64 table gives ctmul 193.48 MB/s and ctmul64 247.03 MB/s, a kernel comparison on their C build/hardware, **not current Go, not whole GCM, and not a giant enough gain to justify immediate complexity**.

A tempting shortcut is invalid: do not simply widen the hole masks and use a full `bits.Mul64` product without rechecking carry bounds. Sixteen selected bits can produce a coefficient 16, overflowing a four-bit lane; BearSSL's truncated low-half/reversal construction avoids retaining that overflowing carry. New code needs an independent polynomial proof and exhaustive structured tests.

Also reject the nine-instead-of-sixteen inner-product variant in `ghash_ctmul.c` under BR_SLOW_MUL: the primary source explicitly says its extra logic is about twice slower on modern pipelined x86 multipliers. It is aimed at expensive-multiply embedded machines, outside this request's focus.

## 5. SHA3 public squeezing: requested per-word overhead is already gone

Trace: public `crypto/sha3.(*SHAKE).Read` initializes the zero value and calls module SHAKE.Read -> Digest.read. amd64 and arm64 wrappers use `readGeneric`; `sha3.go:121–141` uses **one copy for each contiguous rate portion**, then a permutation when the rate is exhausted. Digest's state is already `[200]byte`; it does not serialize each 64-bit word while squeezing.

The generic permutation (`keccakf.go:45–61`) directly aliases this byte state to [25]uint64 on little-endian machines. Only the big-endian branch does per-word decode/encode, and amd64 assembly consumes the byte array directly. There is no mainstream repeated-per-word-I/O optimization left here. Rewriting this to wider words/unsafe output aliasing would add complexity with no removed work.

The one-shot SHA3 Sum still clones and copies a small digest through an intermediate buffer; that exact direct-sponge Sum-copy proposal already exists in the first report and is **not new**. Tiny SHAKE consumer reads in PQ sampling are covered by the pending batched-sampler machinery, not another independent discovery.

## 6. What BearSSL taught us — and did not

All source references below are to official checkout `references/bearssl`, commit **7bea48e5e850ab4cafbe68d3765cdaba13a86d6f**, dated **April 6, 2026**. No C code has been transplanted; experiments modify the existing Go implementation and use independently expressed algebra/API invariants. BearSSL files carry Pornin's permissive license, but compatibility is not assumed as a substitute for provenance review.

| Primary source | Specific observation and local implication |
|---|---|
| `src/mac/hmac.c:57–93,105–121` | Key context stores inner/outer pad checkpoints; out restores outer state and hashes inner digest. Go already precomputes equivalent checkpoints on Reset. This alone is not a new optimization. |
| `src/hash/sha2small.c:227–249,277–289` | Finalizer prepares one/two final blocks directly. **state/set_state still BE-encode/decode chaining words**; BearSSL keyctx is not proof that native struct-copy caching is universally faster. Prior Go direct-pad/native-cache failures stand. PBKDF2 fixed recurrence is a new local specialization beyond this general API. |
| `src/hash/ghash_ctmul.c` and `src/hash/ghash_ctmul64.c` | Explicit hole-multiplication lanes; reflected low-half 64-bit trick; slow-multiply Karatsuba tradeoff. Used for the scoped software-GHASH reasoning above. |
| `src/symcipher/aes_x86ni_ctr.c:45–51` | CTR initializer writes its key schedule directly into the caller-owned context and uses encryption schedule only. Inspired the local **in-place** CTR initialization; omitting decryption schedule is a separate old invasive idea, not included. |
| `src/rand/aesctr_drbg.c` | Context is reinitialized in place, but BearSSL's RNG uses a custom Hirose-based update and different key/counter policy. **Not interchangeable with Go's SP800-90A CTR_DRBG.** No algorithm/update-omission transplant proposed. |
| Saved `bearssl-constanttime.html`, section GHASH | Explains carry holes, Karatsuba, bit reversal, constant-time vs table strategies. Go's current implementation already cites this source. |
| Saved `bearssl-speed.html`, MAC/AES sections | MAC table is asymptotic kernel throughput; AES measurements omit key schedule. Cannot use either to promise Go public constructor/AEAD/RNG gains. |

Official origins: `https://www.bearssl.org/git/BearSSL`, `https://www.bearssl.org/constanttime.html#ghash-for-gcm`, `https://www.bearssl.org/speed.html`.

### High-complexity engine tier, not an asm proposal

The hardware AES-GCM profile suggests that only an actual faster combined kernel could yield a very large bulk win; wrapper shaving cannot remove its 87% assembly cost. A hypothetical 2x faster pair of bulk kernels would reduce this specific workload by at most roughly 44% if everything else stayed identical. **That is a counterfactual Amdahl calculation, not demonstrated VAES throughput or an estimated Go result.** New VAES/wider-GHASH engines, scheduling, dispatch, register pressure, tail handling and backend tests are far beyond low-cost work. No code is prepared, and BearSSL's older AES-NI code does not provide proof of that 2x premise. Only pursue with an independently documented/prototyped complete-API win.

## 7. Scoped novelty screen and execution handoff

Fresh official Gerrit query responses are saved as `references/symmetric-{pbkdf2-specialized,ghash-unroll,ctr-inplace}.json`. Relevant matches: already-merged CL27458 repeated-key HMAC, merged CL746120 constant-time GHASH, pending architecture-only CL806280 GHASH assembly, merged CL624977 CTR_DRBG introduction. No matching fixed-digest PBKDF2 recurrence/in-place rekey/portable explicit-lane change found by these queries. This is a scoped screen, not proof of universal originality. Known pending HMAC stack allocation and HKDF loop hoists remain separate credited work.

Artifacts:

- `patches/pbkdf2-fixed-digest-v2.patch` — authoritative parent-corrected PBKDF2 proposal; original `pbkdf2-fixed-digest.patch` is superseded due to a leaked exported HMAC method.
- `patches/drbg-inplace-rekey.patch`, `patches/ghash-explicit-lanes.patch` — independent production-only proposals.
- `patches/hmac-pad-singlepass.patch` — separately gated cold-constructor loop probe added only after native New profile; not allocation coalescing and not a measured finding.
- `symmetric-files/<patch-name>/src/...` — full proposed source files.
- `symmetric-files/make-patches.py` — historical generator for the three initial proposals (reads baseline, does not modify repo); **its PBKDF2 output predates the method-surface correction, so use the authoritative v2 patch instead**. The separately generated cold-HMAC probe is preserved as full source plus diff.
- `symmetric-files/{pbkdf2,rand,gcm,ghash,rekey}_round3_test.go` — target destinations described above. Only rekey test requires candidate helper; all others compile unchanged with old/new production.

Parent-only suggested order: PBKDF2 native exact profile + baseline binary, patch/check correctness, candidate binary, paired public Key timings with fresh construction; then cold/generic/FIPS/purego controls. Only then profile FIPS public rand.Read for the in-place experiment. Software GHASH is a separately labeled conditional study if desired, not a substitute headline when default GCM does not change. Never run helper benchmarks alone and promote their percentages as whole public-operation gains.
