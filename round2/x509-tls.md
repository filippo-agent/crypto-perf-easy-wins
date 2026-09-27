# X.509 / TLS second-pass findings

September 27, 2026. Baseline `04a082e1`; scope is portable X.509/TLS higher-level work, not HPKE, primitives, unusual architectures, or BoringCrypto. Read round2/BRIEF.md and earlier x509.md/tls.md/PENDING.md. **No production edits, compilation, tests, or timing by this agent.** Prepared patches outside the source tree and three new `*_round2_test.go` files. `gofmt` and `git apply --check` only. Other agents' working-tree production changes were not touched.

## Recommendation / priority

1. **Measure direct X.509 Name population first.** This is now a modest allowed local representation change: remove temporary heap-backed RDN grouping while retaining the existing parser and pkix.Name field mapping. Complete public ParseCertificate/CSR/CRL workloads supplied. It is the best correctness/ownership fit; no numerical win claimed yet.
2. **Measure guarded mTLS parse-cache reuse, not the old unconditional one-liner.** Complete real TLS 1.2/1.3, fully verified mTLS handshake pairs, hot and cold-client controls supplied. Investigation found a meaningful immutability qualification: raw VerifyPeerCertificate callback arguments are not documented immutable. The guarded variant avoids exposing new cache-backed objects through that callback. Existing cache issue #79863 remains a separate upstream concern; no global cache redesign proposed.
3. **Duplicate AddCert early return is a narrow optional control, not a headline.** It avoids dead closure/subject-string work only for duplicate additions, while adding a lookup on unique insertions. Supply measurements but do not advertise unless actual consumer mix supports it.
4. **No new hostname/OID or transcript/HKDF helper-only proposal.** Small hostname streaming and TLS helper removals were already tried. The stronger no-PSK derived-secret precomputation has real repeated work, but needs an internal module API/old-snapshot design before being a fair candidate. Details below; not misrepresented as a measured win.

## 1. Populate pkix.Name without temporary RDN grouping

Patch: `round2/x509-direct-name.patch` (parser.go plus one CSR call site in x509.go). Tests: `src/crypto/x509/name_round2_test.go`.

### Mechanism and bounded scope

`parseName` currently allocates a growing RDNSequence and a growing per-SET slice, but **every production caller immediately flattens it** using FillFromRDNSequence. The four callers are certificate issuer/subject, CRL issuer, and CSR subject. None exposes the intermediate grouping. Change its private signature to take the empty destination `*pkix.Name` and return only error; immediately feed each parsed attribute through `name.FillFromRDNSequence(&pkix.RDNSequence{{attr}})`. That fixed one-element wrapper is intended to remain stack-local; parent must confirm escape diagnostics/allocation deltas. This reuses the public pkix mapping rather than duplicating its OID switch or introducing a new exported method.

The final Names slice, country/organization/etc slices, parsed OIDs, and strings are still owned exactly as before. The destination is the existing embedded Name field of the returned certificate/CSR/CRL, avoiding a separate heap Name object (which would hurt the CN-only memory control). Removes temporary group storage and its outer growth; introduces one FillFromRDNSequence call per attribute instead of one per complete name. Typical rich DNs stand to lose several allocations each, but the call overhead and actual escape decisions require public measurement. Empty/common-name-only controls included.

### Compatibility / security proof obligations

- Preserve parsing order and every readASN1Any/error branch. The patch neither adds nor removes DER checks. In particular it deliberately retains currently tolerated trailing data within attributes/after the outer Name, and empty SET handling; tightening these is not a performance patch.
- Flatten multi-valued SETs in their existing decoded order. Append every attribute to Names, including arbitrary OIDs and all non-string values. Only string values populate common fields. Last string-valued CN/serial still wins; non-string CN does not erase a previous value.
- Empty Name produces the same zero Name, with nil Names/ExtraNames. Empty SETs do not produce entries.
- No shared global OID slices or shared issuer/subject state. `Name.Names[i].Type` remains independently allocated and writable; subject/issuer equality is not used as an aliasing optimization.
- Non-string OCTET STRING/BIT STRING/RawValue backing remains whatever readASN1Any provides today. This proposal is not a deep-copy contract change.
- Error construction may happen after partially filling the destination, but all callers discard the containing certificate/CSR/CRL and return nil with identical error text; no partial name is exposed publicly. The private helper requires an empty destination.
- No cryptographic primitive/module changes, verification elision, memoized validation, or secret-dependent new behavior. FIPS snapshots are unaffected in production.

### Exact prepared tests

`TestRound2NameDifferential` freezes the original parser in the test file and compares **both errors and full pkix.Name values**. Seeds include empty Name/empty SETs/malformed structures, repeated CNs inside a multi-valued RDN, repeated country across SETs, arbitrary OIDs, all currently supported typed values (string, int, octet, bit, OID, boolean, NULL, RawValue, time). Every seed's truncations and every single-bit mutation are checked. `FuzzRound2NameDifferential` extends the same check. The test-only adapter type-switches on the function signature, so the same test source builds in baseline and candidate trees without changing the actual public-operation benchmark paths.

`TestRound2NamePublicPaths` generates an ordinary rich-name ECDSA certificate/CSR/CRL and checks the four public name outputs against the frozen original; it mutates the self-issued subject OID and Country slice to confirm issuer independence. Retain existing `TestParseNameTypes`, ASN.1 parser corpus and full x509 tests. The supplied mutation test is not a claim to exhaust malformed encoding space; run fuzzing centrally as appropriate.

### Public benchmarking

`BenchmarkRound2NamePublicParse/{Certificate,CSR,CRL}/rich={false,true}` executes actual public parse operations. Generation/signing is outside subbenchmark timers. CN-only is a regression control; rich has country/province/locality/organization/two organizational units/CN/serial, not attacker-sized artificial padding. Use the preexisting `BenchmarkAuditParseCertificate` real Google/GTS/PSS fixture benchmarks too, to avoid judging on generated names alone. The optimization is a public **parse** win, not a claimed signature Verify win. A complete mTLS cache-cold handshake can corroborate broader reach but does not replace these directly affected public APIs.

### Novelty check

Fresh Gerrit query saved as `x509-tls-open-cls.json`. Actual current patchsets fetched and read for CL272746, CL272726, CL377914, CL832564. CL272746's 2020 “fast subject parser (wip)” is the earlier reflective-ASN.1-to-cryptobyte implementation and **still constructs RDN grouping**; it is not direct Name population. CL295391 adds pkix OID coverage, not elimination of grouping. This is a revived first-pass deferred direction, now allowed by the raised complexity bar; it is not a new discovery of the underlying already-noted allocation sites.

## 2. mTLS reuse of existing weak certificate cache, with ownership qualification

Patches:
- `tls-mtls-cache.patch`: old unconditional one-line substitution, **diagnostic only**.
- `tls-mtls-cache-guarded.patch`: choose `globalCertCache.newCert` only when `Config.VerifyPeerCertificate == nil`, otherwise retain x509.ParseCertificate. **The two patches are alternatives, not additive.**

Tests/benchmarks: `src/crypto/tls/mtls_round2_test.go`.

### Actual complete operation and expected scope

The server's processCertsFromClient currently parses every client chain with x509.ParseCertificate, unlike the client/server-session readers that already use globalCertCache. A retained client identity on overlapping mTLS connections can reuse its immutable parsed representation and associated public-key precomputation. This does **not** cache trust: RSA size checks, Verify with current roots/time/EKU, fipsAllowedChains, algorithm/version checks, the peer CertificateVerify signature and Finished checks all run on every full handshake.

The weak cache's full-DER key and compare/store/cleanup machinery already exist; no new per-Config or process-global cache/type/eviction policy introduced. Sharing parsed certificates is consistent with ConnectionState.PeerCertificates and VerifiedChains documented immutability, and VerifyConnection takes that ConnectionState. Expiry/roots/application authorizations must still be checked on every full handshake.

### Why the unconditional first-pass patch is NOT ready

`Config.VerifyPeerCertificate` explicitly forbids modifications to **verifiedChains**, but does not say that **rawCerts** is immutable. On misses x509.ParseCertificate retains raw DER subslices; on cache hits it reuses objects from another call. A callback can therefore poison the content of a cached certificate under the old DER key if its raw byte argument aliases the object. This is an API/aliasing concern involving local application mutation, not a remote attack claim.

Fresh primary check: golang/go issue **79863**, “crypto/tls: weak certificate cache can expose caller-mutated certificate bytes”, is open and assigned Go1.28 as of September 27, 2026; official API response saved in `issue-79863.json`. The report specifically identifies caller-owned DER aliases in weakCertCache and cautions that this is local caller mutation. This is related existing upstream work, not a new security discovery here.

The conservative candidate keeps **all** connections with VerifyPeerCertificate on the original fresh-parse path, on both hit and miss. Merely cloning the incoming callback DER only on cache hits is insufficient because the first miss can seed an aliased cache entry. The guard does not redesign or fix the preexisting global cache issue, and still relies on existing cache producers obeying their immutable-object contracts. A maintainer may require issue79863 to be settled before expanding cache consumers at all. That remains an explicit acceptance gate, not something these benchmarks can prove away.

`TestRound2MTLSRawCallbackIsolation` mutates a client certificate's signature byte in the raw callback **after chain validation**, retaining the first connection state across a second handshake. Its purpose is differential preservation of the raw callback's existing inter-handshake isolation, not permission to mutate ConnectionState. The unconditional cache patch is expected to fail the second chain validation; baseline/guarded patch should pass. This is a deliberately conservative interpretation of the undocumented raw ownership, requiring review rather than an assertion that every kind of callback mutation is guaranteed supported.

### Complete handshake benchmark design

`BenchmarkRound2MTLSHandshakePair/TLS{303,304}/{Hot,ColdClient}`:
- Public Client/Server constructors and both Handshake calls over fresh net.Pipe, fresh entropy, ordinary existing ECDSA P-256 client/server certificates with **distinct client/server trust roots**. P-256 ECDHE forced for portable FIPS-compatible control; no HPKE/PQ changes.
- RequireAndVerifyClientCert, normal server validation, no InsecureSkipVerify. All peers have nonempty verified chains. Tickets disabled on both sides and no client session cache. Every iteration asserts full/non-resumed negotiated version, peer certificates and verified chains.
- Each timed op includes both fresh Conn objects, transport construction/teardown, goroutine/channel scheduling, both cryptographic handshakes and ConnectionState extraction. No inflated certificates or transcript, parser microbenchmark substituted for handshake, application data, or TLS close-notify.
- Hot mode pins both states from a genuine warmup full handshake outside timer. This models overlap, not perpetual globally strong caching.
- ColdClient mode deletes only incoming client-chain DER keys before each op; server-certificate cache stays warm in both modes. **Eviction bookkeeping is included in time and allocations in both binaries.** This intentionally forced-cold control is not “all Go/runtime/process startup cold” and not a claim that an unbounded identity corpus fits in memory. It captures actual miss parse/insertion/weak cleanup cost while keeping certificate/key size/chain semantics identical.
- The cache is global but tests/benchmarks do not run Parallel and do not replace globalCertCache. Existing cleanup races remain those of production. Run central comparisons in separate baseline/candidate binaries; avoid concurrent package test work during timing.
- These fixtures send a one-certificate leaf chain and chain to already-parsed roots. The result applies to ordinary leaf-only mTLS. Do not extrapolate percent gains to long chains or complex authorization callbacks.

### Correctness and tradeoff checks

`TestRound2MTLSValidation` exercises warm full handshakes, repeated callbacks, changed untrusted root pool, expired time, deliberate callback rejection, malformed DER, and absent required client cert under TLS12 and TLS13. Warm validation tests use the no-raw-callback/cache-eligible path. Raw callbacks are separately exercised using cloned configs. Error paths use finite transport deadlines to avoid unbuffered pipe deadlocks when both endpoints concurrently send alerts/Finished; successful measured paths do not pay those deadline costs.

Run existing ClientAuth/GetClientCertificate/cache tests and full TLS tests, plus race testing centrally. Existing callbacks and optional-client-auth modes remain relevant beyond the new targeted checks. Consider concurrent identical client handshakes and repeated GC in race tests. Return/error checks are supplied, but no pass result claimed.

Memory: every cold distinct client identity adds the existing cache's string key, weak pointer/map entry and cleanup until reclamation, while hot identities share the parsed certificate and may save public-key setup. Failed/untrusted presented certificates are inserted before verification just like existing server-cache behavior; miss/churn memory and CPU must not be hidden. Pinning a connection holds a certificate but the weak map itself is not a new permanent strong cache.

Guarded behavior: custom raw callbacks get **no parsing speedup**. Applications using VerifyConnection for immutable-state authorization can still hit the cache. Do not label measured no-callback gains as universal mTLS gains.

Production stays outside the FIPS module, supports existing internal API snapshots, and leaves fipsAllowedChains/algorithm rejection intact. No unusual-architecture/Boring run requested. This was a first-pass structural lead but lacked full-operation evidence; the new work is full-handshake measurement and substantially more careful ownership review, not a rediscovery claim.

## 3. CertPool repeated work: safe small lead versus unsuitable changes

Patch `x509-addcert-duplicate.patch` hashes cert.Raw once, returns if already present, otherwise calls existing addCertFunc. The current helper already makes duplicates no-ops, but caller-side string(cert.RawSubject) and capturing getCert closure have been prepared before the helper learns that. Moving a lookup outward can avoid those temporary allocations. The original helper retains its check because other callers need it. Thus **unique insertions gain an extra lookup**; measure both, and drop if only a duplicate-only micro-workload benefits. Public entry point benchmark provided, not claiming a signature/handshake win.

Nil input panic, Raw-based duplicate identity, retained first certificate pointer, copied subject bytes, constraint precedence and hash choice stay unchanged. No Certificate field is assumed immutable: even a duplicate whose exported RawSubject has changed is still a no-op by unchanged Raw identity. AddCert is not a parser and does not validate caller-constructed Certificate.Raw.

Tests in `certpool_round2_test.go` cover duplicate changed RawSubject, source subject ownership, retained certificate pointer, and **malformed Raw inserted via AddCert then fed to AppendCertsFromPEM**. That last must still return false. Benchmarks `BenchmarkRound2CertPoolAdd` cover duplicates and fresh pools; `BenchmarkRound2CertPoolAppend` supplies a public append control and measures the name patch's benefit in append parsing too. Unique Add includes NewCertPool just as ordinary root-pool construction does; it is not meant to isolate the lookup in an ever-growing unbounded pool.

Still reject:
- haveSum alone as proof that a PEM block is valid: fabricated AddCert input disproves it.
- Retain first full ParseCertificate results forever in AppendCertsFromPEM: changes deliberate lazy-root memory policy.
- Parse just through subject and validate later: changes when invalid certs are accepted/report success. **Already-open CL272726 does this** and explicitly acknowledges later parse errors; its historical speedup cannot be presented as a validation-preserving original win.
- Per-pool known-valid DER flags or global cert validation cache: state/mutation policy broader than the allowed local change.
- Returning shared mutable subject/OID backing to save copies: ownership regression.

Fresh CL832564 is documentation of duplicate/first-constraint semantics only (actual patch read). CL377914 changes haveSum values to a set; it does not implement this caller-side allocation avoidance. No novelty claim about duplicate semantics themselves.

## 4. Other deeper follow-through, not promoted

### TLS1.3 no-PSK derived secret

Both client establishHandshakeKeys and server sendServerParameters compute `NewEarlySecret(suite.hash.New, nil)` and then HandshakeSecret(sharedKey). No-PSK extract input, salt, empty transcript digest and the derived early secret depend only on the suite hash, so the same extract plus `Derive-Secret(...,"derived",Hash(""))` could be precomputed for SHA256/SHA384. This would remove an HKDF-Extract and HKDF-Expand (plus empty-hash allocation/work) per endpoint of every full non-PSK TLS13 handshake—not just repeated transcript writes. Shared-key extract and all traffic/Finished derivations must remain per handshake.

Why no patch promoted now:
- Existing EarlySecret holds the secret/hash and HandshakeSecret always derives again. Caching the existing object alone only removes the initial extract, leaving the stronger part undone. A useful implementation needs a new internal immutable derived-secret representation/API or field/method.
- Adding a field directly to cipherSuiteTLS13 is inappropriate: its slice is linknamed by downstream packages and explicitly has a no-type-signature-change warning. Store any precomputation independently by the two suite hashes.
- TLS importing a newly added internal tls13 method can break the supported older FIPS module snapshots. Need a version-tagged fallback or an implementation entirely within the module, not an unconditional method call from TLS. Generic hash factories must not be equated solely by Size; a custom factory need not be SHA256 because it emits 32 bytes.
- FIPS service-indicator behavior must be checked for the retained extracts, not assumed unchanged because public constant material is being precomputed. Startup self-tests/lazy initialization and races need coverage.
- It is plausible but not evidence of a meaningful complete-handshake win. Prior smaller TLS helper changes failed this exact acceptance bar. Do not spend parent timing on a constructor-only microbenchmark or mix in pending HKDF/HMAC optimizations without independent measurements.

If revisited, baseline/current-vs-precomputed derivation tests for SHA256/SHA384, full TLS13 full/resumed/HRR tests, and old module builds are required. The supplied full mTLS TLS13 benchmark could be used once a legitimate design exists, plus ordinary server-only authentication. PSK/resumed traffic must remain a no-change control. No HPKE files touched; that belongs to the PQ agent.

### Hostname/OID paths

No new arbitrary "fast OID" or hostname string special-case patch. Ordinary name OIDs are already decoded in one allocation sized to their DER; replacing common OIDs with shared globals would violate writable exported Names[].Type ownership. A constant-size fresh slice still allocates and only saves a few decode branches, so direct RDN removal has a stronger whole-parse hypothesis.

Hostname validation/matching currently splits/scans labels; streaming was already considered in the first pass. A matched-name cache is invalid because exported DNSNames can mutate. Replacing matching with suffix shortcuts must preserve invalid-pattern fallback, ASCII case rules, label counts and wildcard placement; there is no strong new common-chain win to justify advertising this over the name parser work. Existing raw-extension-OID map-key and TLS transcript helper proposals are not repeated here.

## Central execution plan (parent owns all CPU/timing)

Before applying patches, compile baseline test binaries with these new test files. Then apply candidates **one at a time** and compile independently; do not compare while unrelated primitive patches differ. Suggested correctness commands:

```
bin/go test crypto/x509 -run 'TestRound2|TestParseNameTypes' -count=1
bin/go test crypto/tls -run '^TestRound2MTLS' -count=1 -timeout=120s
# After package-wide correctness, parent can run fuzz/race in separate slots.
```

Public measurement selectors:

```
-test.run '^$' -test.bench '^BenchmarkRound2NamePublicParse$' -test.benchmem -test.count=10
-test.run '^$' -test.bench '^BenchmarkAuditParseCertificate$' -test.benchmem -test.count=10
-test.run '^$' -test.bench '^BenchmarkRound2CertPool(Add|Append)$' -test.benchmem -test.count=10
-test.run '^$' -test.bench '^BenchmarkRound2MTLSHandshakePair$' -test.benchmem -test.count=10
```

A/B comparisons: name patch against baseline; guarded mTLS patch against baseline with name patch **off**; optional combined only after both independently justify it; duplicate-AddCert patch separately, requiring unique-insert regression control. Full package/fuzz/race/old-snapshot correctness before acceptance. No claims of successful compilation or measured speedups in this report.

## Follow-up: exact DER keys instead of SHA-224 pool fingerprints

Requested by parent September 27, 2026. **Assessment only: no prototype, production edits, compilation, or timing for this idea.** All uses of sum224/haveSum are confined to cert_pool.go; contains is called by Certificate.Verify. This is a bounded internal representation change, but it has a materially different memory/time tradeoff from the earlier duplicate early return.

### Correctness and ownership

Replacing `map[sum224]bool` with `map[string]bool` keyed by complete DER is semantically suitable for set membership. It makes equality exact rather than SHA-224-collision-equivalent; do not present the current digest as a practical security weakness. No parsing/validation may be omitted. `AppendCertsFromPEM` must still validate even when the same bytes already have an entry, because AddCert admits arbitrary caller-constructed Certificate.Raw.

A string insertion must copy the DER into an immutable snapshot. **Never unsafe-convert caller-owned cert.Raw to a string.** Callers may mutate Raw after AddCert; today the saved hash is a snapshot but the saved getCert pointer still follows the caller's object. Preserve exactly that split behavior: membership reflects bytes at insertion; getCert returns the same pointer. Re-adding the same pointer after changing Raw may add another identity. A pointer-only shortcut is invalid. Empty versus nil Raw remain the same identity in both designs.

Duplicate lookups can use `s.haveRaw[string(cert.Raw)]` directly, for the compiler's non-escaping/borrowed map-lookup conversion. However, changing the existing helper argument from sum224 to **string** is NOT sufficient: its parameter is also inserted, so `string(cert.Raw)` at the call site can escape/copy even on hits. To realize the desired duplicate benefit, use direct []byte-to-string map lookup before persistent conversion, or accept []byte into the helper and separately convert at lookup/insertion. Confirm compiler diagnostics and public allocation counts centrally rather than assuming the optimization through helper boundaries.

### CPU tradeoffs by complete public operation

- **Duplicate AddCert / AddCertWithConstraint:** strongest hypothesis. Replace SHA224 over DER plus fixed-key lookup with a runtime string hash and exact equality over DER. Guarding at the public caller can also skip the subject string and capturing closure. Runtime hashing is optimized on ordinary platforms, but successful distinct-buffer hits can entail hashing AND full DER comparison, not “free lookup”. Same-byte same-pointer input is not itself a sufficient performance explanation because the retained immutable string is a copy.
- **Unique AddCert:** runtime hashes the whole DER for lookup and again for insertion, and copies the persistent key. Current code SHA224-hashes DER once, then hashes only the 28-byte digest for lookup/insertion. The string representation could still be faster, but this is NOT guaranteed by removing SHA224. Avoid adding a third full-string hash through redundant outer/helper duplicate checks. Must compare fresh single insert and realistic batched distinct inserts, not duplicates alone.
- **AppendCertsFromPEM:** PEM decoding and complete initial X.509 parsing remain. Only fingerprinting/metadata work is removed unless separately applying the Name patch. A stronger claim that this avoids repeated certificate parsing would be false. Duplicate PEM must still parse to preserve the current success/validation contract; malformed data previously injected with AddCert remains the important negative case.
- **Clone:** can share immutable string backing, so it need NOT recopy DER; map entries store string headers rather than inline 28-byte hashes. However, reinserting keys hashes every DER again, changing work from roughly O(number of certificates) fixed-size fingerprints to O(total DER bytes).
- **Equal:** same complexity regression in equal/worst-case pools. Each membership probe hashes the complete string. Independently built equal pools also compare full strings; a clone can shortcut byte equality by shared backing but must still hash. Measure public Equal for independently built pools and Clone-equal pools, not merely pointer identity of the pools.
- **Certificate.Verify:** contains also becomes a string lookup, removing its SHA224 pass while preserving lookup against a mutation snapshot. Full Verify is a necessary secondary control, but chain signatures likely dominate; don't promise a high-level Verify win.

### Retained memory: simple versus lazy-aware variants

**Simple replacement:** existing AddCert closures already retain the Certificate, and PEM lazy closures already retain decoded DER (later the parsed Certificate). Persisting an additional immutable DER string therefore adds about **sum(len(unique DER)) bytes** to the pool's retained objects, less the modest fingerprint-versus-string map-slot difference, plus string allocation overhead. The pool need not have parsed roots yet for this increase to occur. Large certs/arbitrary Raw make this overhead unbounded relative to 28 bytes per entry. For illustrative arithmetic only, 150 roots averaging 1.5 KB add roughly 225 KB of duplicate DER, not counting allocator classes. This is not measured host data.

**Bounded lazy-aware alternative:** for AppendCertsFromPEM only, share the SAME immutable DER string between the membership key and lazy loader closure, and discard the decoded PEM bytes after successful initial validation. At lazy materialization parse **a new `[]byte(rawString)` copy**, because returned Certificate.Raw remains mutable and must not alias the immutable membership key. This replaces the existing retained DER representation before materialization rather than doubling it. After materialization each used root needs both the string snapshot and a mutable parsed DER buffer, so that subset still pays the extra retained bytes. AddCert still needs the immutable extra copy, since it must retain the caller's certificate pointer. Clone shares strings and existing lazy closures just as it shares the old closures today.

The lazy-aware variant adds a copy/allocation at append time and another at first materialization, although its pre-materialization live memory can be close to current. It may be a reasonable small companion change, but it is no longer just a map type substitution and cannot be hidden from B/op/materialization controls. Do not use a read-only string-backed byte view to make ParseCertificate allocation-free: its publicly exposed Raw/extension slices permit mutation.

### Suggested prototype gate and measurement matrix

Worth prototyping **only with the memory tradeoff explicit**. Most convincing expected target is duplicate-heavy public AddCert, not root-loading/AppendCertsFromPEM. If parent selects it, first compare a straightforward exact-DER map against the SHA224 baseline, then consider the lazy-aware ownership-preserving variant separately if CPU gains are compelling. Do not combine with Name changes until individually measured. No extra known-valid flag or parse-elision cache is needed or justified.

Correctness additions before timing: same Raw/different subject and constraint preserves first insertion; same pointer with changed Raw changes identity; in-place Raw mutation leaves old membership snapshot intact; Clone mutation/independent additions; Equal separately built, reordered, and cloned pools; nil/empty Raw; AddCert malformed Raw followed by PEM append; Subject ownership; lazy loader identity and mutation of the returned Certificate.Raw must NOT alter immutable keys. Existing constraint-first semantics remain unchanged.

Public benchmark matrix: AddCert duplicate vs distinct (normal small leaf, normal root, realistically larger chain cert), AppendCertsFromPEM fresh vs duplicate pools and multi-root bundles, Clone and Equal on 1/100/500 certificates, and Certificate.Verify control. Separate allocation from retained-heap accounting: pre-materialization root pools, partially materialized pools, fully materialized pools, and clones. Fresh-pool benchmarks alone report allocation churn, not the important lifetime memory penalty. Any conclusion based only on borrowed string lookup helper timing is insufficient.
