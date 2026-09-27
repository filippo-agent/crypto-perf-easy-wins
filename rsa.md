# RSA / DSA / bigmod audit

Audited snapshot: Go master `2ff5743d9fd52fac166225e75df0c2c1edf82abb`.
Audit date: September 27, 2026. All line numbers below refer to the unchanged production snapshot.

**No production edits, compilation, functional-test execution, or performance timing by this agent.** Two test-only files and two unapplied patches are prepared. Parent owns timing and patch integration. Recommendations are unmeasured.

## Summary / prioritization

1. **Worth measuring first: avoid full-width multiplication/reduction of a one-word public exponent during RSA key validation.** Adds a six-line internal operation composed entirely of existing arithmetic primitives, with two small call-site changes. Could materially improve public private-key parsing / initial precomputation; does not speed ordinary precomputed signing.
2. **Tiny, safe but likely modest: use existing `subtle.XORBytes` in MGF1.** Four lines become one. Measure public OAEP encryption / PSS verification, not only the mask generator, before claiming a useful win.
3. No comparably strong DSA or Boring numeric-conversion lead. Other tempting changes mostly require new APIs/state, affect rare paths, or threaten constant-time/validation guarantees.

## 1. Stop reducing known-zero product limbs in CRT exponent checks

### Source and public entry points

* `src/crypto/internal/fips140/rsa/rsa.go:245–247,260–261`, `checkPrivateKey`: expand `E` to the entire modulus width and call `de.Mul(dP, pMinus1)` and its q analogue.
* `src/crypto/internal/fips140/bigmod/nat.go:932–985`, `Nat.Mul`: even moduli take the full `2*n`-limb multiply-and-reduce path. The Montgomery fast path is only for odd moduli. Here p−1 and q−1 are even for ordinary RSA keys.
* `nat.go:656–680`, `Nat.Mod`: skips the first `n−1` limbs, then calls `shiftIn` for each remaining limb. `shiftIn` (`615–647`) performs a bit-at-a-time modular reduction, with `_W` passes over all modulus limbs.
* `crypto/rsa/rsa.go:581–626`, `precompute`, calls the internal constructors even when public CRT values are supplied. So this affects `PrivateKey.Precompute`, unprecomputed `Validate` / private-key operations, and PKCS#1/PKCS#8 imports using supplied CRT values. Existing public `BenchmarkParsePKCS8PrivateKey/2048` (`rsa_test.go:897`) exercises the intended win.

### Why work is unnecessary

`E` is positive and at most `2^31−1` after `checkPublicKey`, so it always fits a single limb on both 32-bit and 64-bit Go. The exact product `dP*E` fits `n+1` limbs. The existing routine nevertheless computes `n` product rows and reduces a `2*n`-limb result whose upper `n−1` limbs are known zero from sizes alone.

A short-product wrapper can use exactly the existing `addMulVVW` (`nat.go:910`) followed by `Mod`. This is not a replacement modular arithmetic algorithm: it is the existing even-Mul implementation with the known single-word operand width reflected in the temporary size.

On amd64, for 1024/1536/2048-bit p−1, reduction needs **2 rather than 17/25/33 `shiftIn` calls**; product construction needs one row rather than 16/24/32. These are operation counts, not speedup measurements. The remaining full-width reductions of d modulo p−1/q−1 stay in place, so do not mistake the microbenchmark gain for total import speedup. A substantial fraction of precomputed-key validation is plausibly removable; end-to-end measurement is needed.

### Minimal proposed change

Unapplied patch: `/home/exedev/crypto-audit/rsa-mulshort.patch` (two production files).

Add to bigmod, with ordinary method documentation and `//go:norace`:

```go
func (x *Nat) MulShort(y uint, m *Modulus) *Nat {
    n := len(m.nat.limbs)
    t := NewNat().reset(n + 1)
    t.limbs[n] = addMulVVW(t.limbs[:n], x.limbs[:n], y)
    return x.Mod(t, m)
}
```

Replace the two set-E/multiply sequences by:

```go
de.SetBits(dP.Bits()).MulShort(uint(priv.pub.E), pMinus1)
// ...
de.SetBits(dQ.Bits()).MulShort(uint(priv.pub.E), qMinus1)
```

`SetBits` copies, so dP/dQ remain intact for the consistency checks at lines 278–284. `Mod` operates on the independent product temporary, so overwriting x is safe.

### Security, portability, compatibility

* Lengths and loop bounds depend only on the existing announced modulus width, not the secret CRT exponent or product value. **Do not trim the product** based on its value; the fixed extra carry limb is important.
* Uses the existing constant-time multiply/add/reduction primitives; no variable-time division, `math/big`, new assembly, or secret-dependent branch.
* All validation equations, error ordering, CRT coefficient checks, small-d / close-prime checks, FIPS approval markers, CAST/PCT behavior remain.
* A single-word y of any value, including zero / max uint, is mathematically supported; public RSA still validates its exponent exactly as before. No special E=65537 behavior or assumption is necessary.
* Constructor inputs with invalid/even p can make p−1 odd; the proposed helper remains mathematically correct for odd moduli too. Do not narrow it to a panic on odd modulus without reviewing malformed-key compatibility.
* Internal helper and callers are inside the same FIPS module. Do not rewrite frozen snapshots. Boring RSA operations are unchanged; RSA precompute/validation paths still merit Boring-build coverage.
* At `n == preallocLimbs` (2048-bit p−1 on amd64), `n+1` grows beyond NewNat's preallocation and may allocate. Record allocations for 4096-bit key imports before choosing a different scratch-array strategy. Keep the first experiment simple.
* Keep the `//go:norace` convention because this helper directly invokes the inline limb loop in `addMulVVW`.

### Prepared tests / measurement plan

`src/crypto/internal/fips140/bigmod/perf_audit_test.go` contains:

* `TestAuditMulShort`: candidate helper versus `math/big`, multiple bit widths (including non-word-aligned / >preallocation), even and odd moduli, zero and m−1 operands, random reduced operands, multipliers 0,1,3,65537,max uint.
* `BenchmarkAuditEvenMulPublicExponent/{1024,1536,2048}/{FullProduct,ShortProduct}`. Identical per-iteration copy and public exponent; compares the current method with the candidate **without production changes**.

Parent may first run these tests and microbenchmarks, then apply the patch and compare:

```
bin/go test crypto/internal/fips140/bigmod -run '^TestAuditMulShort$'
bin/go test crypto/internal/fips140/bigmod -run '^$' -bench '^BenchmarkAuditEvenMulPublicExponent$' -benchmem -count=10
bin/go test crypto/rsa -run '^$' -bench 'BenchmarkParsePKCS8PrivateKey|BenchmarkSignPKCS1v15/2048/noprecomp' -benchmem -count=10
```

Functional coverage after applying: `crypto/internal/fips140/bigmod`, `crypto/internal/fips140/rsa`, `crypto/rsa`, and x509 parsing tests. Particularly `TestNotPrecomputed`, `TestModifiedPrivateKey`, `TestPSmallerThanQ`, `TestLargeSizeDifference`, tiny/non-byte-aligned keys, deterministic keygen vectors, invalid CRTs, and `TestBigmodImplementations`. Repeat purego and 386; FIPS-enabled and Boring builds if available. For end-to-end size scaling, extend parse benchmark to existing 3072/4096 fixtures.

Optional later caller, **not included in the patch**: `keygen.go:98`, the `e.ExpandFor(λ).Mul(d, λ)` check has the same one-word-by-even-modulus inefficiency, now at full RSA width. Could instead copy d and `MulShort(65537, λ)`. Measure deterministic `BenchmarkGenerateKey`, but keep it separate from initial validation experiment. ACVP large-exponent validation must remain on full Mul: its E is up to 256 bits.

## 2. Reuse accelerated XOR in MGF1

`src/crypto/internal/fips140/rsa/pkcs1v22.go:64–67`, `mgf1XOR`, has a byte-by-byte XOR loop with two loop-bound conditions. The same file already imports FIPS `subtle`, whose `XORBytes` (`subtle/xor.go:18`) implements exactly the min-length operation, with architecture-specific implementations and a generic fallback.

Unapplied patch: `/home/exedev/crypto-audit/rsa-mgfxor.patch`:

```diff
-        for i := 0; i < len(digest) && done < len(out); i++ {
-            out[done] ^= digest[i]
-            done++
-        }
+        done += subtle.XORBytes(out[done:], out[done:], digest)
```

No new import, API, or algorithm. Destination and first input overlap exactly; digest is independently allocated by Sum. The final partial digest is handled by XORBytes' min length. No secret-dependent branching is introduced. The hash input sequence, reusable digest buffer, counter, and state-reset semantics are unchanged. A pathological custom hash returning storage aliased to caller output is not an ordinary supported hash contract/use pattern; still include custom-hash and separate-MGF-hash public tests when reviewing.

`src/crypto/internal/fips140/rsa/perf_audit_test.go` contains `TestAuditMGF1XOR` (zero/partial/full blocks plus counter carry) and side-by-side `BenchmarkAuditMGF1XOR` for 223/479-byte masks. Candidate helper shrinks the out slice rather than using done; the production patch uses the smaller one-line substitution above. Prepared, **not executed**.

Measure public `BenchmarkEncryptOAEP/2048`, `BenchmarkVerifyPSS/2048`; private-key exponentiation will drown out this change in signing/decryption. Expected whole-operation benefit is modest, potentially noise. Do not promote based only on the mask microbenchmark. Existing PSS vectors, OAEP vectors/Wycheproof, mixed MGF hashes, zero/max salts, and non-byte-aligned PSS tests cover semantics. Purego and FIPS tests also apply.

## Rejected / lower-priority leads

* **Late Miller–Rabin setup (plausible follow-up, not selected):** `keygen.go:257–271` constructs an odd Modulus (including Montgomery rr) and the MR exponent before trial division rejects most candidates. Moving trial division first could save setup for rejected candidates. However the current public bigmod API lacks a modulus-free byte-to-Nat parser; exporting `resetToBytes` or adding a new parser is needed, plus sequencing / small-input behavior review. This is a reasonable next experiment, but larger surface and noisier keygen measurements than candidate 1. Do not import `math/big` into FIPS or hand-roll a new remainder routine merely to make the diff look smaller.
* **`Nat.Mod(Q.Nat(), N)` in CRT recombination (`rsa.go:435`) looks costly but normally isn't.** Q is much shorter than N, so Mod's first-n−1-limbs copy path does no shiftIn at all. Replacing it with Q.Nat().ExpandFor(N) saves at most a cheap copy in common keys, and requires careful invalid/unbalanced-key review. Not an expensive unnecessary reduction.
* **m2 mod p (`rsa.go:430`):** for same-sized primes, a conditional-subtract-style reduction looks tempting. Existing `SetOverflowingBytes` serializes and checks the input's bit length, and unusual imported prime sizes require fallback. Introducing adaptive leakage about the secret CRT residue is not acceptable. No change selected.
* **Replacing qInv Fermat exponentiation (`rsa.go:88–96`) with `InverseVarTime`: rejected.** NewPrivateKey is also used to import long-lived private keys. Key generation's variable-time allowance does not make variable-time key import/precomputation acceptable. Splitting keygen-only derivation would add API/control-flow complexity for a small fraction of full keygen.
* **Dropping d consistency, public-key, or CRT fault checks: rejected.** The repeated-looking work is security and FIPS validation. Current `checkPrivateKey` compares d against both dP/dQ even though ordinary CRT operations do not use d. Existing `TestModifiedPrivateKey` specifically covers this.
* **Removing `precomputedIsConsistent` exports/comparisons (`crypto/rsa/rsa.go:258–285`): rejected as a shortcut.** Precompute is not a literal no-op just because the internal key is cached; it checks mutated key/CRT values. A word-wise internal comparison API could avoid bytes/allocations, but adds surface and must preserve bit-length-only leakage, nil and leading-zero handling. Not needed on hot precomputed Sign/Decrypt: `fipsPrivateKey` returns the cached key directly.
* **Caching public modulus Montgomery state (`crypto/rsa/rsa.go:684`): not selected.** Rebuilt per operation, but public key fields are mutable; a new cache plus consistency checks violates the no-new-cache brief. Boring's established cache is not a free template to replicate.
* **Skipping `Nat.set`/`reset` zeroing or removing copies around Montgomery operations:** some full-overwrite copies are redundant, but `reset` deliberately clears previously-used limbs; aliasing behavior and scratch lifetime need care. Small linear-memory savings beside quadratic exponentiation do not justify global changes without a profile.
* **Fold final short-exponent multiply with Montgomery reduction (`nat.go:1050–1068`): plausible but not selected.** For odd E, multiplying the penultimate result by an unconverted base can eliminate one Montgomery multiply (E=65537 currently uses 19 total). Need an unconverted-base copy to preserve out==x aliasing, or an extra specialized exponent path. This is more arithmetic/control-flow review and maintenance than simple redundant-work removal; not benchmarked.
* **Skip initial squarings of 1 in `Nat.Exp`:** saves a few operations out of thousands; needs special first-window handling and constant-time table selection, not an exemplar-size win.
* **GCD-only call computes unused extended-GCD coefficients (`nat.go:1091`):** true, but adding a separate GCD algorithm or optional coefficient mode expands a recently verified arithmetic implementation and buys only keygen setup time. Not selected.
* **Cache bit length in Modulus / replace bitLen with bits.Len:** caching adds state; bits.Len has architecture-dependent constant-time issues explicitly documented at `nat.go:456`. Repeated BitLen walks are small beside exponentiation. No change selected.
* **Make Nat.Bytes word-at-a-time (`nat.go:157`):** potentially faster serialization but a broader numeric-encoding rewrite, with partial most-significant limb and overflow/panic semantics. No demonstrated public entry-point benefit. `setBytes` already uses native-width big-endian loads.
* **OAEP hash.Sum directly into db (`pkcs1v22.go:394–407`):** could eliminate one lHash allocation and copy. Requires moving em allocation and respecting custom Sum implementations (retain copy if Sum returns separate backing). Very small allocation saving, likely swamped by RSA. PSS encoding already uses `hash.Sum(h[:0])`; verification cannot blindly reuse db because tiny legal layouts can overlap h.
* **MGF hash-state caching / fixed stack digest buffer:** no new hash marshaling interface or maximum custom-hash-size assumption selected. Digest allocation is already reused across rounds; a maximum-sized local scratch may escape through hash.Hash anyway.
* **DSA (`dsa.go`):** parameter generation and verification use ordinary math/big; there is no established combined-exponentiation fast path to substitute for the two verification exponents. Replacing `fermatInverse` with ModInverse explicitly worsens the chosen timing properties, even though the package as a whole is not constant-time. Removing the first s.Mod in Sign grows the next multiplication (hash length is arbitrary); uncertain benefit in a deprecated package. Retry-buffer hoisting only helps degenerate-key retries. No selected DSA patch.
* **Boring numeric conversion:** `bbig.Enc` is already a zero-copy word slice; `Dec` uses SetBits on a word view rather than round-tripping bytes. Nil/empty distinctions and aliasing matter. `boring.go:65–106` already converts little-endian native words directly to/from BN. Removing copies in `crypto/rsa/boring.go` would lose the mutation-safe cache snapshots. No win found.
* **Boring cryptRSA's two calls (`boring/rsa.go:189–210`):** first is the EVP output-size query, not a second private exponentiation. Replacing it with key-size assumptions could remove cgo overhead but changes generic encryption/decryption scaffolding; no verified expensive duplicated crypto work here. KeepAlive/finalizers are mandatory.
* **Legacy multi-prime CRT precomputation:** public fields are still populated for compatibility although the internal multiprime private operation intentionally does not use CRT. Removing the unused-looking calculations would break observable values. New multiprime optimizations oppose the explicit complexity trade-off.

## Source coverage

### Production Go: read sequentially, not just searched

| Area / every owned production file | Coverage / disposition |
|---|---|
| `crypto/rsa/rsa.go` | Types/equality, signer/decrypter dispatch, validation/consistency, keygen/multiprime compatibility, precompute, FIPS conversion/cache paths. Candidate 1's public path; rejects above. |
| `crypto/rsa/fips.go` | PSS/OAEP/v1.5 sign/verify wrappers, Boring routing, FIPS-only checks, hashing, error translation. No hot expensive duplicate computation found. |
| `crypto/rsa/pkcs1v15.go` | Encoding/nonzero randomness, raw RSA routing, constant-time session-key and padding checks. No selected change. |
| `crypto/rsa/boring.go`, `notboring.go` | Mutation-checked cache, copying/word conversions, build stub. No selected change. |
| `crypto/dsa/dsa.go` | Entire parameters/keygen/inverse/sign/verify implementation; no selected change. |
| `crypto/internal/fips140/rsa/rsa.go` | Entire constructors/export/checks/public exponent/CRT decrypt paths. Candidate 1. |
| `crypto/internal/fips140/rsa/keygen.go` | Entire prime selection, trial divisions, MR setup/rounds, totient/inversion and PCT. Optional short-mul follow-up; setup-order lead deferred. |
| `crypto/internal/fips140/rsa/pkcs1v15.go` | Precomputed DER prefixes, EM construction, sign/verify, hash approval/size maps. Already avoids generic ASN.1 work. |
| `crypto/internal/fips140/rsa/pkcs1v22.go` | Entire MGF/PSS/OAEP code and FIPS accounting. Candidate 2. |
| `crypto/internal/fips140/rsa/largeexponent.go` | Entire ACVP-only large-E key/public/private validation and operations. Not a production optimization target; not compatible with single-word E optimization. |
| `crypto/internal/fips140/rsa/cast.go` | Static known key and one-time sign/verify CAST. No repeated runtime derivation to remove. |
| `crypto/internal/fips140/bigmod/nat.go` | Entire 1273 lines: storage/encoding/comparison, sizing, modulus setup, rr, reductions, generic/specialized multiply, exp, binary extended GCD and short division. Candidate 1 built from existing primitives. |
| `crypto/internal/fips140/bigmod/nat_asm.go`, `nat_noasm.go`, `nat_wasm.go` | CPU dispatch/noescape bindings, generic sized wrappers, Wasm 32x32 multiplication fallback. No new platform work proposed. |
| `crypto/internal/boring/bbig/big.go` | Entire zero-copy native-word adapters. |
| Related `crypto/internal/boring/boring.go`, `doc.go`, `rsa.go` | Entire numeric conversion helpers/types and RSA C wrappers, key lifetime, setup/size queries. Other Boring algorithms owned elsewhere, not claimed here. |

### Assembly / generator / metadata

* Read all handwritten bigmod assembly: `nat_386.s`, `nat_arm.s`, `nat_arm64.s`, `nat_loong64.s`, `nat_ppc64x.s`, `nat_riscv64.s`, `nat_s390x.s`. These are sized add-multiply helpers; no API-level unnecessary work found and assembly tuning is outside brief.
* `nat_amd64.s` is generated, 1230 lines. Reviewed the complete generating source `_asm/nat_amd64_asm.go` and representative emitted code/dispatch, **not a line-by-line independent audit of every repeated generated instruction**. ADX/BMI2 dispatch and fixed sizes are already established fast paths.
* `_asm/go.mod`, `_asm/go.sum`: inspected generator dependencies, no performance lead.

### Tests / examples / data (coverage distinct from production audit)

* `crypto/rsa/{rsa_test.go,pkcs1v15_test.go,pss_test.go,rsa_wycheproof_test.go,example_test.go}`: inventoried all test/benchmark functions and inspected relevant helpers/matrices/body sections, including public import/sign benchmarks, malformed/precomputed/unbalanced keys, mixed OAEP hashes, PSS sizing/vector readers. Not an exhaustive audit of every embedded key/vector byte or every test body.
* `crypto/rsa/{boring_test.go,equal_test.go,rsa_export_test.go}` and `crypto/dsa/{dsa_test.go,dsa_wycheproof_test.go}`: read complete test code; no proposed test-performance changes.
* `crypto/internal/fips140/rsa/{keygen_test.go,pkcs1v15_test.go,pkcs1v22_test.go}`: read complete test code and vector-loader semantics.
* `crypto/internal/fips140/bigmod/nat_test.go`: inspected property-test helpers, encoding/arithmetic test map, microbenchmarks, sized implementation checks, inverse vector loader. This audit does not claim independent verification of all arithmetic vectors.
* Data inventoried, not optimized or independently revalidated: public RSA `testdata/{det-keygen.json,keygen2048.txt,keygen3072.txt,keygen4096.txt,pss-vect.txt.bz2}`; internal RSA `testdata/{gcd_lcm_tests.txt,miller_rabin_tests.txt}`; bigmod `testdata/mod_inv_tests.txt`.

## Handoff artifacts

* Report: `/home/exedev/crypto-audit/rsa.md`
* Unapplied candidate patches: `rsa-mulshort.patch`, `rsa-mgfxor.patch` beside report.
* Only repository files created by this agent:
  * `src/crypto/internal/fips140/bigmod/perf_audit_test.go`
  * `src/crypto/internal/fips140/rsa/perf_audit_test.go`
* Test files were gofmt'd. **Not compiled or run; no performance numbers asserted.** Other shared-repository modifications belong to other agents/parent and were not touched.

## Follow-up: open-CL subject check and timing embargo

Read the parent-provided `open-crypto-cls.json` subject snapshot after handoff. No subject there appears to duplicate the single-word CRT validation multiplication or MGF1 XOR-call-site candidates. This is a **subject-only screen**, not an exhaustive novelty assertion or inspection of every CL diff.

Nearby work to avoid conflating with these candidates: CL 824126 reduces the RSA CAST size; CLs 834298 / 686615 / 598337 add RSA DIT closures; CL 831726 concerns OAEP MGF hash approval; CL 837366 concerns auto-detected PSS salt in FIPS-only mode; CL 481618 is AVX-512 IFMA RSA assembly. CL 733845 concerns pseudo-SIMD byte operations in internal subtle, not the MGF1 call-site substitution, but could affect its baseline after landing.

Parent reports `rand-bench` running and owns all compilation/testing/timing. This agent has performed only local text/source review since that notice; test files and patches remain uncompiled, unrun, and unapplied.

## Updated scope and public import benchmark

User clarified: **exclude BoringCrypto and require a substantial complete high-level operation improvement.** Boring notes above are negative coverage only, not proposed work or required benchmarking. MGF1 XOR remains deprioritized unless a complete public OAEP operation shows a meaningful gain. MulShort must be judged on full key import, not its helper microbenchmark.

Added `src/crypto/rsa/parse_audit_test.go`, external `rsa_test` package:

```
BenchmarkAuditParsePKCS8PrivateKey/2048
BenchmarkAuditParsePKCS8PrivateKey/3072
BenchmarkAuditParsePKCS8PrivateKey/4096
```

Uses `test2048Key`, `test3072Key`, `test4096Key`; DER is marshaled once before `b.Loop` starts timing. Every timed iteration invokes public `x509.ParsePKCS8PrivateKey` including RSA validation and precomputation. No key generation, private/internal import shortcut, or timed setup. Reports allocations. Suggested central command:

```
bin/go test crypto/rsa -run '^$' -bench '^BenchmarkAuditParsePKCS8PrivateKey$' -benchmem -count=10
```

Parent reports the math helper test already passes. This agent has still performed no compiles/tests/timings. The new public benchmark is gofmt'd but not compiled here.

Rechecked the suggested tiny keygen setup/trial-division lead against the existing APIs: `Nat.SetBytes` and `SetOverflowingBytes` both require a pre-existing Modulus, and `NewModulus(w)` performs the odd-candidate Montgomery setup one wants to avoid. No direct existing fast path was overlooked. It is possible to manufacture a cheap even power-of-two bounding modulus and parse w against it, or use w−1 as a fake even modulus with adjusted trial remainders, but these introduce synthetic-modulus scaffolding/extra parsing and a clever invariant merely to evade the missing raw-Nat constructor. Ignoring SetBytes' overflow error and relying on its partially assigned receiver is also unacceptable. The clean route remains exposing the existing raw byte parser (`resetToBytes`) as a deliberately variable-time internal operation, then moving setup after trial division. That is a plausible separately reviewed improvement, but **not a stronger tiny lead under the clarified review-complexity constraint**; no additional prototype or production patch prepared.
