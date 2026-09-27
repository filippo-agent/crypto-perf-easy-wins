# Symmetric, hash, and KDF audit

Snapshot: Go master `2ff5743d9fd52fac166225e75df0c2c1edf82abb` (September 26, 2026). Review completed September 27, 2026. Source locations below refer to this original snapshot, not the coordinator's later benchmark edits.

## Updated executive result: whole-public-operation bar

**User clarification:** BoringCrypto is out of scope. Wins must be significant relative to the complete public operation. A helper-only improvement, or one saved hash inside a whole TLS handshake, does not qualify on its own. No performance result is established by this worker; the parent owns timing.

Current shortlist:

1. **PBKDF2 XORBytes reuse:** still a genuinely additional, tiny candidate; accept only with significant full public Key measurements.
2. **NEW: SHA2 direct-buffer final padding:** SHA-256 and SHA-512 checksums currently construct a padding scratch and call general Write just to copy it into the digest's existing buffer. Two independent patches finalize in that buffer directly. This removes buffer/control overhead from every public hash and twice per HMAC; full public Sum and HMAC benchmarks prepared. No compression or algorithm change, but no speedup claimed before measurement.
3. **HMAC pad coalescing:** an optional full New/Write/Sum experiment, distinct from the existing stack-allocation CL. It is not a headline until public MAC timings demonstrate significance.

**Disqualified as novel:** the HKDF info/counter-hoisting idea is already fully implemented by open CL **755040**, despite its API-oriented subject. Our patch is an API-neutral extraction, not a new win. Both conversion hoisting and counter reuse appear in that CL's current diff. Keep its measurements labeled known/pending work, not an audit discovery.

**Demoted:** TLS12 final-A skip and buffer reuse remain correct tiny changes, but do not headline without attributable public TLS-operation gains. The SHA3 Sum copy reduction and subtle `>=8` change are helper-level leads, not proven significant whole-operation wins. Unrelated correctness defects are not performance findings; SHA384's typo is already covered by CL **774820**.

**Execution status:** this worker made no production changes and ran no compilation, tests, or timing. Parent independently applied earlier candidates to prepare measurements. Focused test/benchmark files and HEAD-relative patches are provided, with all performance claims pending centralized execution.

## New lead: finalize SHA2 in its existing buffer

**Locations:** `internal/fips140/sha256/sha256.go:211–234` and `internal/fips140/sha512/sha512.go:279–305`, `Digest.checkSum`.

Current code creates a 72-/144-byte zeroed padding array, computes the padding length, calls the general streaming Write function, and lets it copy padding into `d.x`, dispatch full blocks, adjust bookkeeping, and check for a leftover buffer. This is necessary work for arbitrary streamed writes but redundant for private finalization of a digest copy. Construct the same final block(s) directly in `d.x` and invoke the unchanged block dispatcher:

```go
 d.x[d.nx] = 0x80
 clear(d.x[d.nx+1:])
 if d.nx >= 56 { // 112 for SHA-512
     block(d, d.x[:])
     clear(d.x[:])
 }
 byteorder.BEPutUint64(d.x[56:], d.len<<3) // offset 120 for SHA-512
 block(d, d.x[:])
```

Patches: `symmetric-sha256-directpad.patch` and `symmetric-sha512-directpad.patch`, **independently isolatable**. Each replaces the existing general-write padding path with nine lines. Byte serialization after compression is unchanged. No public/internal API addition, so no new symbol dependency on older FIPS snapshots; snapshots simply retain their own implementation until normally updated.

**Structural benefit, not measured claim:** removes the padding scratch, general Write call, and copying/control overhead. It does NOT remove a cryptographic compression. SHA-NI SHA256 is the plausible strongest beneficiary because finalization overhead is a larger part of small hashes; repeated full HMAC Reset/Write/Sum exercises it twice per MAC. SHA512 may show smaller relative impact. Large messages may show negligible change and must not be used to suggest a broad throughput improvement.

**Correctness:** Write and Unmarshal establish `0 <= nx < chunk` and `nx == len % chunk`; all padded bytes outside the existing message are cleared, including stale buffers after Reset. Exactly the same one-versus-two compression boundary is used (nx 56 / 112). SHA512 keeps the current implementation's zero upper length word. The finalized receiver is the private copy made by Sum; it is not reused, so final nx/len bookkeeping need not be maintained. Original Sum's service indicator and original caller's hash state remain unchanged. Input-content-dependent branches are not added. SHA1.ConstantTimeSum is not changed. Assembly stays untouched and sees complete blocks with the same alignment guarantees as normal buffered Write.

**Prepared validation:** new `padding_audit_test.go` in module SHA256/SHA512 compares immutable original-HEAD finalization against copied candidate for every length through four blocks, all digest variants, stale buffer contents, fragmented writes, Reset, and synthetic large total lengths. These references remain valid even after the parent patches production code. Run public golden/marshal/allocation tests, HMAC/PBKDF2 tests, purego, and FIPS tests before accepting.

**Prepared public benchmarks:** `src/crypto/sha256/padding_audit_test.go` (external package): `BenchmarkAuditPublicSHA2` calls real Sum256/Sum512 across message/padding boundaries; `BenchmarkAuditPublicStreamedSHA2` performs complete New/Reset, all 32-byte chunk Writes, and Sum; `BenchmarkAuditPublicHMAC` measures complete New/Write/Sum and repeated Reset/Write/Sum. Compile unchanged benchmarks against baseline and each independently patched production version. These are the decisive results; internal `BenchmarkAuditPaddingFullHash` is only a diagnostic.

**Expanded boundary/oracle preparation:** `symmetric-padding-review.md` records exact entry points and the source proof. Tests now include independent Python-hashlib public golden vectors; 16 deterministic randomized chunkings; intermediate Sum and Write-after-Sum; full Digest immutability; all lengths through four blocks; marshal roundtrips; modulo bit-count truncation; and actual Write crossing the uint64 byte-counter wrap. Unmarshal derives nx from length modulo block size, rather than accepting a user nx field. No compiles/tests/timing run by this worker.

### HMAC/one-shot second-pass negative finding

Re-read HMAC New, Sum, Reset, and SHA2/SHA3 public one-shot wrappers under the higher bar. Common first-use HMAC performs necessary ipad/message/opad/inner-digest work; there is no dispensable full hash compression. Reused HMAC already caches both padded-key hash states after first Reset. Skipping opad work on repeated Sum without Reset would need a separate lazy outer-state cache or changed cache initialization policy, not a tiny no-new-state fix. Replacing cached marshal/unmarshal with Clone introduces allocations unless new copy APIs are added. One-shot SHA2 cannot safely bypass non-destructive Sum with the existing public/internal API without adding symbols that old FIPS snapshots lack. Existing allocation tests already guard the obvious one-shot heap regressions. The direct-buffer padding proposal above avoids those API/cache complications.

## Novelty review against open Gerrit work

Read the supplied 336-entry `open-crypto-cls.json` and fetched primary current patches for CLs 755040, 520269, 733845, and 480095 into `open-cl-N.patch` files. Subject matching alone was insufficient: CL755040 explicitly contains both HKDF optimizations in its body.

| Candidate or adjacent idea | Existing work | Disposition |
|---|---|---|
| HKDF loop info/counter reuse | **755040**, ExpandBytes/KeyBytes, includes exactly both optimizations | Exclude from genuinely additional wins. |
| TLS13 HKDF-label preallocation | **480095**, preallocates the builder backing slice | Already deferred; current code also preallocates exact label capacity. |
| HMAC struct stack outlining | **520269**, makes New's allocation inlineable via init helper | Not proposed as new. Separate from combining ipad/opad backing allocations. |
| General subtle word-wide operations | **733845**; also **62770** for ConstantTimeCompare | Broad rewrite rejected. Our `>=8` boundary is not in 733845 (it still uses `>`), but is below the new whole-op bar. |
| SHA3 multi-lane squeezing/permutation | **818720–818722** | Different from output-copy removal; multi-lane/assembly work is excluded. Output-copy idea still needs public-operation significance. |
| SHA384 approval typo | **774820** | Already open; not a new finding or performance claim. |
| SHA2 final-padding buffer reuse | Targeted primary Gerrit queries plus actual open sha256.go/sha512.go diffs found no duplicate | New candidate; detailed scope/evidence in `symmetric-padding-novelty-arch.md`, not an unpublished-work guarantee. |
| PBKDF2 XORBytes reuse | No matching subject in supplied open inventory; **765002** concerns negative iteration validation | Remains candidate; do not combine with validation changes. |
| TLS12 final unused A HMAC | No matching subject in supplied open inventory | Correct independent helper optimization, demoted pending whole TLS impact. |

Targeted follow-up (September 27): `symmetric-padding-novelty-arch.md` records 15 successful primary Gerrit queries and review of all matching open digest-file diffs. No direct-padding duplicate found. It also documents every architecture block signature, s390x KIMD state handling, and the absence of a caller/test depending on finalized-copy nx/len. No compilation or architecture execution was performed.

The original detailed candidate/reject/coverage notes below remain useful, but rankings and eligibility are superseded by this update.

## 1. TLS 1.2: discard less, compute less

**Location:** `src/crypto/internal/fips140/tls12/tls12.go`, `pHash`, lines 28–44, especially 39–43. Public reachability: `crypto/tls/prf.go` dispatches TLS 1.2 PRF and extended master-secret generation to this implementation.

The loop computes output block `HMAC(secret, A(i)||seed)`, copies its needed bytes, then unconditionally computes `A(i+1) = HMAC(secret,A(i))`. The final `A(i+1)` is never observed. For N output blocks, current code performs `1+2N` HMAC evaluations; it needs only `2N`. The first A value and all required output blocks remain unchanged. In the warmed marshalable-HMAC path, this saves inner and outer finalizations, state restore, and one digest allocation.

Minimal change (`symmetric-tls12-skip.patch`):

```diff
 result = result[n:]
+if len(result) == 0 {
+    break
+}
 h.Reset()
 h.Write(a)
 a = h.Sum(nil)
```

Expected benefit is largest for one-output-block operations: SHA-256/SHA-384 Finished (12 bytes), and SHA-384 master secret (48 bytes). SHA-256 master secret is two output blocks. **HMAC-count reductions are not runtime percentages**: initialization, marshaling, seed length, and output allocation still contribute.

**Independent adjunct:** `var b []byte` outside the loop; change `b := h.Sum(nil)` to `b = h.Sum(b[:0])` and `a = h.Sum(nil)` to `a = h.Sum(a[:0])`. Patch: `symmetric-tls12-buffers.patch`. Previous A has already been written before its buffer is reused. A and B remain disjoint. With final-A skip and N>=1, digest-result allocations drop from 2N in the skip-only version to two; for N=1, reuse adds no benefit.

**Safety:** only public output length controls the added branch. No nonce, validation, key, or seed semantics change. HMAC Hash.Write consumes inputs; Sum appends into supplied storage. Boring hash providers still pass through the same generic machinery. Service indicators still see every needed HMAC; short-key disapproval remains sticky, so skipping redundant final HMAC does not bypass it. Keep zero-output behavior unchanged rather than introducing an early return before HMAC creation. Approved module/snapshot routing must follow normal FIPS process.

**Prepared:** `internal/fips140/tls12/perf_audit_test.go`:
- `TestAuditPHash`: SHA-256/384/512, zero/one/partial/full/multiple-block output, compares SkipFinal/Reuse/Both to existing implementation.
- `BenchmarkAuditPHash`: SHA-256/384, output lengths 12/48/104, Base/SkipFinal/Reuse/Both.
- Timing is on the real pHash algorithm, but not a complete handshake. Parent should additionally measure public TLS handshake/exporter workloads. Existing CAST and ACVP TLS12 vectors are relevant regression tests.

## 2. PBKDF2: use the existing XOR implementation

**Location:** `src/crypto/internal/fips140/pbkdf2/pbkdf2.go`, `Key`, lines 58–65.

Every noninitial iteration XORs a digest into T with a byte loop. The module already uses `subtle.XORBytes` for AES, SHA3, etc.; it has accelerated and portable word-at-a-time implementations.

Minimal change (`symmetric-pbkdf2-xor.patch`):

```diff
+"crypto/internal/fips140/subtle"
 ...
-for x := range U {
-    T[x] ^= U[x]
-}
+subtle.XORBytes(T, T, U)
```

**Expected impact:** amortized per iteration, not just per Key setup. Digest lengths 20/28/32/48/64 are relevant. Benefit must be measured against the helper's length/alias checks and call overhead, especially SHA-1 and purego. No benefit when `iter <= 1`.

**Safety:** T and U are independent storage; exact `dst==T` overlap is supported. Lengths match hash.Size under the hash.Hash contract. All U bytes are still included and T never becomes the next PRF input. No dependence on secret values; count and length checks unchanged. Use the internal subtle dependency to remain in the module.

**Prepared:** `internal/fips140/pbkdf2/perf_audit_test.go`, `TestAuditPBKDF2XOR` covers five digest widths, iterations 1/2/10/4096, partial/single/multiblock results. `BenchmarkAuditPBKDF2` compares the full derivation at 4096 iterations for SHA-1/256/384/512. Public existing benchmarks: `crypto/pbkdf2.BenchmarkHMACSHA1` and `BenchmarkHMACSHA256`. Run public tests/Wycheproof and FIPS service-indicator tests, plus purego; no new assembly is involved.

## 3. HKDF Expand: existing open work, not a novel audit win

**Location:** `src/crypto/internal/fips140/hkdf/hkdf.go`, `Expand`, lines 31–44.

`expander.Write([]byte(info))` passes the conversion through HMAC into a hash interface every iteration. Likewise `[]byte{counter}` produces fresh storage each iteration. Neither input needs a new backing allocation per block. Hash.Write must not retain input. Hoist the info conversion and use a one-byte array updated in place.

Minimal outline (`symmetric-hkdf-hoist.patch`):

```diff
-var counter uint8
+if keyLen == 0 {
+    return out
+}
+var counter [1]byte
+infoBytes := []byte(info)
 ...
-counter++
+counter[0]++
```

Change the counter tests to `counter[0]` and the writes to `Write(infoBytes)` and `Write(counter[:])`. The zero-length guard must be **after** HMAC construction/MarkAsUsedInKDF, preserving constructor and long-key-hashing behavior while avoiding eager copies for no-output requests. The coordinator already included this guard in its applied version.

**Expected impact:** for N>1 output blocks and nonempty info, potentially saves 2(N−1) allocations, plus N−1 info copies; actual compiler/allocation evidence is required. Does not remove digest state marshaling or hash compression. No allocation savings expected in common one-block expansion. Empty info has no conversion allocation to save, but counter storage still matters.

**Safety:** preserve `T(i−1)||info||counter`, counter-overflow check at 256, and arbitrary string bytes including NUL/non-UTF8. No unsafe string alias conversion, extra mutable persistent state, or validation changes. Public length limit checks remain in public HKDF wrappers. The private Expand overflow panic remains for direct internal callers.

**Prepared:** `internal/fips140/hkdf/perf_audit_test.go`, `TestAuditHKDFHoist` covers SHA-256/384/512, 0/1/boundary/255 blocks and binary info. Copied candidate predates the zero-length allocation guard but computes identical outputs. `BenchmarkAuditHKDFExpand` uses SHA-256, 1/2/8 blocks and info lengths 0/16/64/1024. Existing public HKDF benchmarks mainly call Key with one output block and will miss much of this effect. Parent should benchmark public Expand explicitly.

## Secondary leads: benchmark before elevating

### 4. HMAC pad allocation coalescing

`internal/fips140/hmac/hmac.go:185–187`, `New`: allocate `pads := make([]byte,2*blocksize)` and set `hm.ipad, hm.opad = pads[:blocksize:blocksize], pads[blocksize:]`. One allocation instead of two, same initialized bytes, no new cache/state. Patch `symmetric-hmac-pads.patch`; test/benchmark `hmac/perf_audit_test.go`, `BenchmarkAuditHMACNew`.

More broadly reached than HKDF-only changes, but likely modest. Preserve disjoint, capacity-limited pad slices, constructor uniqueness check, long-key processing, clone and Reset semantics. Existing Reset replaces ipad/opad with independent serialized buffers; it does not modify pad backing arrays. Custom hashes have arbitrary BlockSize (not only 64/128); consider overflow of doubling absurd custom block sizes. Boring public HMAC uses its independent fast path and is unaffected. Existing `crypto/hmac.BenchmarkNewWriteSum` is the best public constructor workload. Prepared equivalence tests cover short/block/long keys and repeated Reset/Sum, not complete clone/custom-hash cases.

### 5. SHA3 Sum: copy directly from the finalized sponge

`internal/fips140/sha3/sha3.go:158–161`, `sumGeneric`: after cloning, all supported fixed Sum outputs fit within the first rate block. Instead of making a 64-byte-capacity temporary, invoking the generic variable-length read machinery, and copying again into the append destination:

```go
 dup := d.Clone()
 dup.padAndPermute()
 return append(b, dup.a[:dup.outputLen]...)
```

Patch `symmetric-sha3-sum.patch`; `sha3/perf_audit_test.go`, `BenchmarkAuditSHA3Sum`. Preserves clone/Write-after-Sum behavior and padding; reduces output-copy/control work, not Keccak calls. Need SHA3, SHAKE/cSHAKE, legacy Keccak and s390x review: accelerated s390x SHA3/SHAKE have separate sum methods; generic fallback applies when unsupported/domain-separated. Initial tests cover fixed SHA3/legacy Keccak but should be extended for internal SHAKE/cSHAKE Sum before submission. Improvement may be too small for public workloads. Do not bypass the FIPS Sum indicator at the public entry point.

### 6. Full-word comparison boundary (`>` → `>=`)

`internal/fips140/subtle/constant_time.go:43`, `ConstantTimeLessOrEqBytes`: change `for len(x) > 8` to `>= 8`. Currently an exactly-eight-byte final word takes two zero-initialize/copy operations before the same BEUint64 loads/subtraction. With the change, only genuinely partial words use that path. No content-dependent control flow is introduced.

Patch `symmetric-subtle-fullword.patch`; `subtle/perf_audit_test.go`, `BenchmarkAuditLessOrEq` lengths 8/28/32/48/64/66. Deterministic functional comparison against bytes.Compare covers lengths 0–80. Reached by fiat field canonical-coordinate decoding; P384 (48 bytes) is a realistic beneficiary, P224 (28) and P521 (66) retain the same partial tail. This is independent of the ECC worker's fixed-bound hoist. Must judge public parse/verification impact, not just the small helper microbenchmark.

## Rejected or deferred leads

- **HKDF nil-salt deletion (early lead withdrawn):** `hkdf.Extract:17–19` constructs `h().Size()` zero bytes despite HMAC padding a nil key with zeroes. Equivalent for all standard hashes here, but not universally for a custom hash with Size > BlockSize: the nonempty default salt is hashed before padding, whereas nil is not. Public API accepts hash.Hash constructors; silently changing that behavior is not worth the savings without a supported-hash-only design. Do not confuse this with TLS13 `extract`'s nil *input secret*: replacing that with empty input would actually change standard TLS outputs.
- **SHA2 one-shot interface calls / `new(Digest)` in Sum:** no demonstrated accidental heap path. Constructors and allocation placement have existing zero-allocation tests. Rewriting an interface expression or `new` into a local alone is not evidence of a win. Directly finalizing one-shot SHA2 state would need extra internal APIs and snapshot/FIPS plumbing; not as small as the first three candidates.
- **HMAC Reset raw-state copy instead of marshal/unmarshal:** attractive for PBKDF2 but requires type-specific copy APIs or new mutable state machinery. Hash.Clone generally allocates; calling it each iteration could make things worse. Existing serialization cache already avoids recompressing pads after the first Reset. Rejected for this task's review/maintenance budget.
- **HMAC constructor loop fusion:** combining ipad/opad XOR loops saves only tiny setup bookkeeping. Existing pad-allocation coalescing is the cleaner experiment; do not bundle speculative loop changes.
- **AES encryption-only key schedules / retaining expanded keys by pointer:** would affect object ownership/concurrency and decryption API assumptions; new state or assembly coordination. Existing AES modes copy immutable blocks intentionally. Not a tiny safe win.
- **AES CTR partial-block keystream cache:** fragmented calls can recompute a partial block, but solving that adds cache state, complicates random-access semantics and DRBG use. Explicitly out of scope.
- **AES-GCM generic H/product-table cache:** generic path recomputes H per operation, but accelerated paths already initialize their own tables/keys. A cache adds representation/platform state mostly for slow-path-only gain. Hardware path's tag-mask AES encryption is nonce-dependent, not redundant.
- **Random-nonce GCM memmoves/duplicate validation:** in-place nonce prepend/trim requires exact/inexact overlap care. Moving it into assembly or relaxing checks risks authentication/aliasing regressions; comments explicitly document the tradeoff. Open's tag-failure output clearing is necessary even on implementations that authenticate first.
- **Generic cipher CBC temporary allocation:** newCBC allocates a tmp buffer even for encryption, where unused. Applies only to non-AES/fallback modes (AES takes the specialized implementation); adding constructor differentiation for a deprecated/less-used corner is lower priority than KDF wins.
- **CFB/OFB refill changes:** deprecated modes; larger batching is algorithm/loop work, not a small reusable-fast-path correction. Standard AES CTR/GCM already take their optimized paths.
- **StreamWriter temporary buffer reuse:** public value type with no private buffering; changing receiver/layout/concurrency behavior to cache state is not acceptable for a trivial allocation win.
- **DES subkey slice → array:** ksRotate's fixed slices can be optimized by inlining/escape analysis; no demonstrated allocation issue, and DES/TDES are legacy. TDES already cancels intermediate initial/final permutations instead of calling DES three times.
- **RC4 state shape/loop changes:** current streaming loop already uses local i/j and bounds-check elimination. Avoid optimizing the broken primitive without a real accidental slow path.
- **SHA1 constant-time finalization:** two compressions are intentional to conceal padding length; deleting the apparently discarded compression breaks constant-time behavior. SHA1 AVX2's generic tail is an explicit out-of-bounds-read avoidance, not an accidental dispatch bug.
- **SHA2 generic schedules and SHA3 Keccak:** unrolling, algorithm/scheduling changes, and assembly redesign excluded. SHA3 uses hardware selectively (Apple arm64) for a documented performance reason; blindly enabling it elsewhere is not justified.
- **TLS13 ExpandLabel string/byte copies:** changing private HKDF interfaces to accept bytes reaches across packages/snapshots. A constant-maximum stack buffer (514 bytes) might avoid one allocation but adds eager zeroing; no compelling tiny win shown. Caching empty transcript hashes would add algorithm-specific state; not proposed.
- **SSH KDF prefix hashing/cloning:** repeated K||H hashing can be substantial for large DH secrets, but reusable-state APIs need generic fallback/error semantics and may allocate. Preallocating expansion output only benefits multiblock cases; typical single-block lengths gain little. Deferred.
- **General constant-time compare word-at-a-time rewrite:** broad security/compiler/platform review for a microkernel, unlike the one-character full-word-boundary fix. alias helpers already inline and enforce necessary contracts. DIT toggling/defer behavior must retain nesting and panic cleanup.

## Ancillary correctness/maintenance observations (not performance claims)

1. **Already open CL774820 — SHA-384 service-indicator typo:** `internal/fips140/tls12/tls12.go:62` checks `h.Size() != 46 && h.Size() != 64`. SHA-384 is 48 bytes, so legitimate SHA-384 master-secret derivation records nonapproval. Minimal fix is 46→48, with a SHA-384 FIPS service-indicator test. Keep separate from the performance patch.
2. **Ineffective PPC CBC differential test:** `crypto/cipher/fuzz_test.go:68–69,95–96` calls `CryptBlocks(indata,outgeneric)` and `CryptBlocks(indata,outdata)` then compares the untouched zero output arrays. CryptBlocks is `(dst,src)`. Correct argument order is `(outgeneric,indata)` and `(outdata,indata)` for both encryption/decryption loops. Independently confirmed from source; currently ppc64le-only.
3. **DES example panic:** `crypto/des/example_test.go:13–16`, `[]byte("example key 1234")` is 15 bytes but sliced `[:16]`. Example has no Output and is not normally executed. Use a genuine 16-byte sample string. Separate maintenance fix.
4. **AES generator stale wiring:** `internal/fips140/aes/_asm/standard/aes_amd64.go:17,20,39`: directive outputs `aes_amd64.s`, Package selects `crypto/aes`, but postprocess opens `asm_amd64.s`. Generator triage only; no regeneration run and no claim of production algorithm error.

## Coverage and artifacts

**Original inventory: 217 files, 159 Go files.** Of Go files: 104 hand-written production/constants/platform/CAST files fully read, 42 test/example files fully read in a supporting source-review pass, 12 generators triaged, and one generated compression body (`md5block.go`) triaged. The support review also checked AES constants and the Keccak body; the primary pass read the full Keccak source and all relevant platform dispatch. All 44 assembly files were inventoried/triaged through guards, symbols, generation provenance and Go call contracts, not instruction-by-instruction audited. Fourteen remaining files are generator go.mod/go.sum metadata. The review did not download external Wycheproof corpora or execute generators.

- `symmetric-files.txt`: exact original inventory.
- `symmetric-coverage.md`: **every original file**, line count and coverage classification (the complete source coverage map).
- `symmetric-support-review.md`: per-test/example and generator findings; its opening “49” is a counting typo—57 supplied files are individually listed, confirmed programmatically. Its scope was tests/generators/support, not the KDF production bodies reviewed here.
- `symmetric-assembly-triage.txt`: assembly build/provenance/symbol extracts.
- `symmetric-early.md`: historical early leads, superseded by this report (nil-salt deletion withdrawn).
- `symmetric-*.patch`: seven HEAD-relative proposed diffs; not applied by this worker.
- Six new `perf_audit_test.go` files under internal/fips140/{tls12,pbkdf2,hkdf,hmac,sha3,subtle}, two module `padding_audit_test.go` files under SHA256/SHA512, and one public SHA256-package `padding_audit_test.go` for complete SHA2/HMAC benchmarks; no production edits by this worker.

### Per-area coverage outcome

| Owned area | Outcome |
|---|---|
| public aes/cipher + internal AES, CBC, CTR, GCM, CMAC/CounterKDF and nonce wrappers | All Go/control flow/platform glue read; no recommended production performance patch. Alias/FIPS guards retained; ppc differential-test defect recorded. |
| DES/RC4 | All Go read; no strong performance win; DES example defect. |
| MD5/SHA1 | All handwritten Go read, generated MD5 and assembly triaged; no strong performance win. SHA1 constant-time/AVX2 tail explicitly protected. |
| SHA256/SHA512 public + module | All handwritten Go including marshal/clone/write/finalization/dispatch/CAST read; no confirmed accidental slow path. |
| SHA3 public + module | All Go read, Keccak/assembly generator triage; tentative Sum output-copy simplification, no Keccak rewrite. |
| HMAC public + module | All Go read; tentative allocation coalescing; existing Reset cache understood and retained. |
| HKDF public + module | All Go read; multiblock allocation-hoisting candidate; nil-salt compatibility reject. |
| PBKDF2 public + module | All Go read; existing XOR fast-path reuse candidate. |
| TLS12/TLS13/SSH KDFs | All Go including CAST read; strongest TLS12 redundant-HMAC lead; TLS13/SSH changes deferred. |
| subtle public + module, alias, fips140hash | All Go and platform glue read; full-word boundary microlead; no broad constant-time or unsafe-alias rewrite. |

### Suggested execution (parent only, serialize against all other timings)

Functional comparison tests: `bin/go test crypto/internal/fips140/{tls12,pbkdf2,hkdf,hmac,sha3,subtle} -run TestAudit -count=1`, followed by public package tests, purego, and FIPS mode as applicable. SHA1 test variants must be omitted under fips140=only.

Focused benchmark suites: `BenchmarkAuditPHash`, `BenchmarkAuditPBKDF2`, `BenchmarkAuditHKDFExpand`; then secondary suites if time permits. All include `ReportAllocs`. **Base benchmark entries call live production code:** after applying a candidate, the same source's Base entry is no longer the original baseline. Preserve old binaries or use original HEAD production when collecting baseline-vs-copy comparisons. The coordinator was explicitly warned of this.

Before promoting any secondary microlead, require a repeatable public-entry-point improvement on this host and functional/backend compatibility. No percentage in this report substitutes for such measurement.
