# crypto/tls performance audit

Snapshot: Go master `2ff5743d9fd52fac166225e75df0c2c1edf82abb`. Audited all 25 non-test Go files (15,056 lines), including `tls/internal/fips140tls` and `tls/fipsonly`. No production files modified by this auditor. Added `src/crypto/tls/perf_audit_test.go`; five standalone proposed patches are in this directory.

**Ranking:** (1) eliminate unused QUIC record cryptography; (2) eliminate duplicate TLS <=1.2 transcript hashing; (3) reuse existing certificate parse cache for mTLS; (4) eliminate ECH double copy. Optional fifth tiny allocation cleanup: TLS1.3 signedMessage. No timings executed, to respect the parent's exclusive timing coordination. Test/benchmark source is ready; compilation and execution are delegated to parent, so results below are structural findings, not measured claims.

## 1. QUIC derives TLS record keys and instantiates AEADs it never uses

**Source:** `conn.go:245-252` `halfConn.setTrafficSecret`; callers `conn.go:1795-1816` `setReadTrafficSecret`/`setWriteTrafficSecret`. TLS1.3 handshake client/server install both handshake and application read/write secrets. Each installation calls `suite.trafficKey` (`key_schedule.go:28-32`) for two HKDF-ExpandLabel operations and calls `suite.aead` to set up AES-GCM/ChaCha20Poly1305.

**Why unnecessary:** QUIC consumes the traffic-secret bytes via events and derives its own QUIC-specific packet-protection keys. TLS's QUIC output path returns from `writeRecordLocked` (`conn.go:1082-1095`) before record encryption; `readRecordOrCCS` rejects QUIC (`conn.go:639-641`) before decryption. The QUIC path only needs `halfConn.level` and `halfConn.trafficSecret`, not `.cipher`. `quic.go` has no cipher read. `.trafficSecret` is still needed for Finished and deferred application-secret delivery.

**Small patch:** `tls-quic-recordkeys.patch`. Add `isQUIC bool` to the private `halfConn.setTrafficSecret` helper, pass `c.quic != nil` at its only two callers, guard the key/IV derivation and AEAD setup. Keep `.level`, `.trafficSecret`, `clear(seq)`, and all buffered-handshake checks. No API change, new cache, new cryptography, or algorithm-specific fast path.

**Structural saving:** four installations per endpoint, thus **eight HKDF expansions and four AEAD constructions per endpoint**, or sixteen expansions and eight constructions per complete two-endpoint handshake. Includes resumed QUIC handshakes. Native AES construction has FIPS-aware setup, so avoided work is more than raw AES key expansion.

**Reproduction prepared:** `TestAuditQUICUnusedRecordAEAD` replaces every TLS1.3 suite's record AEAD constructor with a counted stub returning nil, then drives a complete handshake through public `QUICClient`/`QUICServer`, `Start`, `HandleData`, and `NextEvent`. Unmodified source should complete and log **8 unused constructions**; patched source should log **0**. A nil AEAD means any accidental record use would fail. The test accepts either count for A/B use. `BenchmarkAuditQUICHandshake` times the same real public handshake with real AEADs, P-256 ECDHE and normal certificate verification. `BenchmarkAuditQUICSecretInstall` isolates the avoided work for each suite.

**Risks/tests:** do not replace `.cipher` with a fake non-nil sentinel: cipher state is simply not required for QUIC. Keep read-buffer validation and secret-level transitions identical. Run the full `TestQUIC*` set (resumption, 0-RTT, invalid levels, post-handshake messages, cancellation, delayed parameters), TLS TCP tests, FIPS on/only + supported module versions and BoringCrypto. No proposed change inside the validated module. Skipping unused record-key operations does not skip ECDHE, transcript/Finished checks, or QUIC secret derivation.

## 2. TLS <=1.2 hashes every transcript byte twice

**Source:** `prf.go:155-231` (`newFinishedHash`, `finishedHash.Write`, `Sum`, `clientSum`, `serverSum`, `hashForClientCertificate`).

- Constructor creates `client` and `server` hashes of the same algorithm and, for TLS1.0/1.1, `clientMD5` and `serverMD5`.
- The sole mutation method writes exactly the same message to both hashes, always.
- `Sum`, both Finished computations, and EMS all use `client`/`clientMD5`.
- `serverMD5` is never read. `server` is only read for legacy ECDSA CertificateVerify, where it equals `client`.
- A whole-directory reference search confirms no accesses to those fields outside `prf.go`. `hash.Hash.Sum` does not advance/reset state.

**Small patch:** `tls-finishedhash.patch`: delete two fields and their initialization/Writes; replace legacy ECDSA `h.server.Sum(nil)` with `h.client.Sum(nil)`. Kept existing `client` naming to minimize diff; a reviewer could rename to `hash` separately.

**Impact:** exactly halves transcript hash compression work, saves one SHA hash allocation per TLS1.2 endpoint, two hash allocations per TLS1.0/1.1 endpoint, and shrinks the handshake state. Not a claim of halving whole-handshake time: public-key operations dominate normal full handshakes. Larger chains/OCSP and TLS1.2 resumption increase relative benefit. TLS1.3 unaffected.

**Reproduction prepared:** `TestAuditSingleFinishedHash` compares existing production implementation against an independent one-hash implementation across TLS1.0/1.1/1.2, SHA-256/SHA-384 suite flags, and multi-Write transcripts spanning 0/1/55/64/65/1024/8192-byte chunks. Checks transcript sum, both Finished values, legacy ECDSA digest and retained handshake buffer after every write. Legacy subcases skipped in FIPS mode. `BenchmarkAuditFinishedHash` compares both implementations in one unpatched binary at 1KiB/8KiB. Public end-to-end reproduction: existing `BenchmarkHandshakeServer/ECDHE-X25519-ECDSA-P256/TLSv12` and `.../ECDHE-P256-ECDSA-P256/TLSv12`; save baseline before applying patch. Include client/server legacy ECDSA CertificateVerify reference tests because that is the only replaced read.

**Risks:** preserve MD5+SHA1 order for legacy RSA, keep the separate *full transcript buffer* for TLS1.2 CertificateVerify. Do not remove that buffer: negotiated signature hash can differ from the suite's hash, and MessageSigner takes the actual message. Boring hash types require no changes: only public `hash.Hash` operations are eliminated.

## 3. mTLS client certificates miss an already-existing parsing fast path

**Source:** `handshake_server.go:943-954`, `processCertsFromClient`, calls `x509.ParseCertificate(asn1Data)`. By contrast `handshake_client.go:1105-1112`, `verifyServerCertificate`, uses `globalCertCache.newCert`; session-state parsing already uses it for both peers (`ticket.go:237,267`). Cache implementation: `cache.go:18-42`.

**Small patch:** `tls-clientcert-cache.patch`, one call substitution to `globalCertCache.newCert(asn1Data)`.

**Expected impact, not measured:** removes repeated ASN.1/X.509/public-key parsing for concurrent/overlapping connections presenting the same service/client identity. Native ECDSA public-key representations can then also reuse any existing downstream key-level caches rather than reparsing fresh objects. Certificate verification, expiry, chain policy, signature verification, and application callbacks still run on every full handshake. Reuses existing global weak cache, adds no new caching design/state type.

**Reproduction prepared:** `BenchmarkAuditClientCertificateProcessing/{verify=false,verify=true}` calls the actual server function with the package's client P-256 certificate, both RequireAnyClientCert and RequireAndVerifyClientCert. Pins one connection's parsed certificates across iterations to model overlapping connections. Compare baseline vs one-line patch. `BenchmarkAuditClientCertificateParse` compares direct parse and existing cache hit independently in the same binary. Full public validation: `TestClientAuth`, client-cert handshake tests, `TestGetClientCertificate`, full package tests. Full-handshake percent gain must be measured separately if promoted.

**Risks/qualification:** biggest workload-dependent lead. Unique one-shot client certs pay weak-map key/cleanup overhead without hits; explicitly benchmark cache misses/churn before claiming a general improvement. Weak cache only retains parsing results while another reference keeps them alive, not indefinitely. Sharing is supported by `ConnectionState.PeerCertificates`/`VerifiedChains` immutability contracts (`common.go:291-313`) and already happens on resumed connections. Do not cache validation decisions. Cache keys are full DER, not subject/key identifiers. May reject this lead if cold mTLS overhead outweighs the intended deployments.

## 4. ECH parser copies the complete input, then copies its output again

**Source:** `ech.go:506-550`, `parseECHExt`. It first allocates/copies all `ext` to `data`, parses read-only cryptobyte slices, and finally `bytes.Clone`s `encap` and `payload` specifically to keep returned components independent of the raw extension.

**Small patch:** `tls-ech-copy.patch`, replace the initial make/copy with `s := cryptobyte.String(ext)`; retain both final clones. No output aliasing change, no parsing/validation change, no bounds-check removal.

**Impact:** one full extension-sized allocation and copy per server ECH extension parse (also HRR). PQ encapsulations can make the extension large. Unlike dropping returned clones, this keeps the existing explicit ownership guarantee intact.

**Reproduction prepared:** `TestAuditECHExtDoesNotAlias` mutates both returned components and verifies the raw extension is unchanged; `BenchmarkAuditParseECHExt` uses 128 and 2048-byte payloads and a 32-byte encapsulation. Compare baseline/patched allocation counts. Run all ECH/HRR tests. Whole-handshake gain is expected modest because HPKE dominates.

## 5. Optional tiny cleanup: write transcript sum directly into TLS1.3 signed message

**Source:** `auth.go:124-132`, `signedMessage`. It allocates a bytes.Buffer with preallocated storage, routes context through io.WriteString, allocates `transcript.Sum(nil)`, then copies the digest into that buffer.

**Patch:** `tls-signedmessage.patch`: use a preallocated byte slice, append padding/context, return `transcript.Sum(b)`. Removes intermediate digest allocation and copy, potentially the escaping bytes.Buffer too; removes now-unused bytes/io imports. Applies to both TLS1.3 certificate signing and verification. Does not affect signed bytes or algorithm choice. `BenchmarkAuditSignedMessage` supplied. Lower priority than #1/#2; tiny enough to consider if allocation results support it.

## Reproduction commands (parent owns exclusive timing slot)

From repository root, first compile/run only the functional checks:

```sh
bin/go test crypto/tls -run '^TestAudit' -count=1 -v
bin/go test crypto/tls -run '^TestQUIC' -count=1
bin/go test crypto/tls -run 'Test.*(ClientCert|ClientAuth|ECH|Finished|KeysFrom)' -count=1
```

In an exclusive timing slot, save baseline binary/results before applying any patches:

```sh
bin/go test -c crypto/tls -o /home/exedev/crypto-audit/tls-before.test
/home/exedev/crypto-audit/tls-before.test -test.run '^$' -test.bench '^BenchmarkAudit' -test.benchmem -test.count 6
bin/go test crypto/tls -run '^$' -bench 'BenchmarkHandshakeServer/ECDHE-X25519-ECDSA-P256/TLSv12$' -benchmem -count 6
```

Apply each candidate independently with `git apply /home/exedev/crypto-audit/tls-<name>.patch`, compile a separate binary, run same benchmark command. Then full package tests plus relevant FIPS/Boring configurations. Patch generation script `tls-make-patches.py` only creates patch files, does not edit production files.

## Coverage map and rejected/deferred leads

All runtime production files were read in full, including comments relevant to ownership/security. Tests were surveyed for reproduction fixtures/entry points, not audited line-by-line as runtime code. No assembly or generated cryptographic arithmetic in owned scope.

| Files | Coverage and conclusion |
|---|---|
| `conn.go` (1816 lines) | Full record encrypt/decrypt, CBC padding/MAC, all buffers/pools, read/write/handshake/post-handshake paths, traffic secret installation. #1. Rejected removing TLS1.3 plaintext copy: encrypted content-type append and aliasing constraints need deeper record-layer redesign. Existing scratch/pool fast paths already avoid common allocations. Keep CBC extra hashing/padding scans: deliberate timing defense. |
| `handshake_client.go` (1336), `handshake_server.go` (1060) | Full legacy/full/resumed flows, certificate handling, ticket/key setup and callbacks. #2/#3. Rejected skipping validation on cache hits: parsing cache is not a trust cache. SHA1/MD5 legacy work outside duplicated transcript is generally required by protocol. |
| `handshake_client_tls13.go` (892), `handshake_server_tls13.go` (1147) | Full key schedule, ECH confirmation, PSK/binders, HRR, certificate and Finished processing, session tickets. #1. Deferred `sort.SliceStable` twice to select only first key-exchange group (`server_tls13:225-231`): can scan/minimize but list tiny, policy ordering subtle, weaker than eliminating crypto. Deferred server resumption master secret on disabled tickets (`:955-974`): QUIC still needs it for later explicit tickets; policy guards possible, narrow workload. Deferred ECH confirmation double ClientHello hashing (`:716-743`): moving transcript update before clone can save it, but lower priority state-ordering review. HRR client clones `serverHello.original` before bytes.Replace (which itself copies): real redundant small copy but rare path. |
| `handshake_messages.go` (2008) | Every marshal/unmarshal, lengths/duplicate-extension checks, original transcript bytes, binders and clone. Rejected broad marshal caching: client hello mutates for PSK/HRR/ECH, invalidation and preserving original wire bytes complicate tiny optimization. Repeated `originalBytes()` call at :1997-1998 is trivial accessor, not expensive encoding. Rejected replacing seen-extension map with linear scans without hostile-input bound analysis. Deferred preallocation of known uint16 vectors: many small cases, little crypto-specific leverage. Deferred TLS1.2 CertificateRequest CA copy: ownership change needs review and mTLS-only small path. |
| `ech.go` (655) | All ECH config/parser/HPKE/inner-outer reconstruction. #4. Rejected skipping trial HPKE decryptions by configID without protocol/privacy analysis; comments explicitly describe trial decryption. Deferred avoiding repeated outer-extension encoding: representation and authenticated-data invariants increase complexity. |
| `key_schedule.go` (298) | All KDF wrappers and ML-KEM/ECDH/hybrid exchanges. Existing hybrid fallback share already reuses traditional key. ECDH public Bytes is cached encoded representation upstream, not repeated affine inversion here. Deferred hybrid append reallocations: output ownership/capacity mostly force copies; not comparable to eliminated crypto. |
| `prf.go` (282) | Complete legacy/modern PRF/key schedule/exporters/Finished. #2. TLS1.0 pHash additionally computes unused next-A after final iteration and allocates Sum(nil) repeatedly, but TLS1.0-only; modern TLS1.2 implementation delegated to internal module and owned by other auditor. |
| `auth.go` (340) | Full signing/verifying dispatch, signature scheme selection/policies. #5. Rejected blindly prehashing TLS1.2 CertificateVerify to reuse suite digest: hash algorithms may differ and would bypass MessageSigner semantics. |
| `ticket.go` (430) | Entire serialized state parser, cache reuse, Encrypt/DecryptTicket, callbacks. AES-CTR/HMAC setup per ticket could be cached but violates low-state-change goal; key rotation/aliasing complexity. Ticket encryption already sums MAC into destination. |
| `cache.go` (44) | Weak certificate cache lookup/miss/race/cleanup. Existing fast path available for #3. Repeated string(der) conversions on cold path possible cleanup, but weak-pointer lifecycle/races and hit-vs-miss importance make separate cache rewrite less attractive. |
| `common.go` (1952) | All config fields/semantics, cipher/version/curve policy, cert selection, ticket rotation, LRU, FIPS chain checks and resumption validation. Rejected hand-added certificate caches/mutable Leaf population: concurrency semantics; LoadX509KeyPair already supplies Leaf. Existing fast paths skip sole-certificate selection work and unnecessary chain policy checks. Deferred avoiding initial TLS1.2 cipher list construction for TLS1.3-only ClientHello: true discarded allocation, small vs crypto and not top lead. |
| `cipher_suites.go` (716) | Full suite tables/preferences, hardware dispatch, AEAD constructors/nonces, MAC wrappers. Approved TLS-specific GCM constructors already used. Rejected dropping nonce XOR restoration: state lifetime/next-record correctness. No new assembly/hardware code. |
| `quic.go` (527) | All public methods/event ownership/channel synchronization. #1 follows complete flow, not just local helper. Existing event storage is preallocated. Rejected dropping crypto event/data copies indiscriminately: lifetime explicitly ends at NextEvent and QUIC may retain transport data separately. |
| `tls.go` (379) | All public constructors/dial/listen/PEM key-pair parsing. parsePrivateKey tries encodings but only startup path; avoiding alternate ASN.1 parse by PEM labels would need compatibility/error review, low payoff. X509KeyPair already stores parsed leaf. |
| `defaults.go` (118), `defaults_fips140.go` (87), `defaults_boring.go` (69) | Read all default selection and distinct native/Boring policy tables. Do not cache GODEBUG/FIPS state globally as if immutable: runtime knobs/testing force matter. Small slices filtered in place on fresh copies. |
| `alert.go` (113) | Alert map/string formatting, no meaningful crypto work. |
| `internal/fips140tls/fipstls.go` (37) | All native initialization and Force/Required/testing reset. Atomic bool is necessary concurrency/public integration glue, no lead. |
| `fipsonly/fipsonly.go` (29) | All Boring build-tag/import-side-effect glue. No computational hot path. |
| `common_string.go` (137) | Generated stringer output read; enum formatting only. |
| `generate_cert.go` (177) | Entire build-ignore certificate generation CLI read; not runtime package hot path, no proposed optimization. |

Test infrastructure surveyed: `cache_test.go`, `prf_test.go`, `quic_test.go`, `handshake_test.go`, server/client handshake test function inventories, certificate fixtures, `tls_test.go` setup and benchmark entry points. Bogo/platform test glue and all testdata vectors are excluded from runtime performance candidate search. No timing or functional-pass claims until parent runs supplied reproductions.

## In-flight Gerrit deduplication (local metadata follow-up)

Read all 336 subjects from supplied `open-crypto-cls.json`, stripping its four-byte prefix. TLS subset saved as `tls-open-cl-subjects.txt`. **None of the five proposed candidates has an apparent duplicate among these subjects.** This is a subject-level comparison only, not a claim that every in-flight patch's contents were inspected.

| Candidate | Closest in-flight work | Assessment |
|---|---|---|
| Skip unused QUIC TLS record key/AEAD setup | 480095, “crypto/tls: preallocate the HKDF label in cipherSuiteTLS13.expandLabel”; 693255/695515, synchronous QUIC handshake processing; 834302, DIT wrappers for internal FIPS calls | Distinct: removes operations entirely in QUIC instead of optimizing HKDF-label allocation, changing handshake synchronization, or wrapping calls. Ensure any DIT integration still covers the retained operations. |
| Remove duplicate TLS <=1.2 transcript hashes | No TLS Finished/transcript deduplication subject | Apparently new in this metadata. Unrelated to 839765 Ed25519 R encoding (excluded supplied example). |
| Use existing weak certificate cache for mTLS input | 756360 caches Windows certificate stores; 832564 documents CertPool duplicate AddCert; 724760 requires parsed x509 certificates | Different caches/contracts; no subject for server-side client-certificate parse caching. |
| Remove ECH parser's first redundant input copy | 833724 rejects trailing data in outer ECH extensions; 835665 tightens ech_outer_extensions decoding; 810960 clears outer-hello PSK | Allocation cleanup is distinct, but 833724 may touch the same parser. Retain its validation if rebasing. |
| Append TLS1.3 transcript digest directly to signed message | 301189 adds hash.Hash WriteString | Different API/implementation change; no direct subject-level duplicate. |

Already-known ideas excluded from claimed discoveries:
- **480095** HKDF label preallocation: not proposed; #1 avoids unnecessary entire HKDF operations instead.
- **464835** store atLeastReader value: not proposed; this tree's `readFromUntil` already has a hoisted read loop.
- **676055** pool Conn.rawInput: not proposed; audited existing pool/idle-buffer switching, left unchanged. Related 370581/347916 shrink/replace rawInput also not claimed.
- **480535** offer only TLS1.3 cipher suites when minimum TLS1.3: matches the low-priority discarded-list lead in the coverage table. Treat that lead as known, not new.
- **571255** replace cipher-suite lists with maps: not proposed; small-list dispatch already reviewed and rejected as weaker.
- **787380/779984** handshake benchmark improvements / CSPRNG benchmark entropy: benchmark infrastructure work, not production optimizations; our QUIC benchmark uses normal entropy. Existing legacy server benchmark has deterministic replay entropy, which must be noted if comparing it.

Follow-up respected parent's timing lock: only metadata review/report edits; no compiles, tests, or benchmarks executed.

## Revised acceptance bar and full TLS1.2 reproduction

Parent clarified **native/non-Boring only, significant gains in full high-level operations**, not helper-only savings. Accordingly #4/#5 and isolated transcript/PRF numbers are not acceptance evidence; #2 qualifies only if actual full/resumed TLS1.2 handshakes improve materially. #3 remains lower-priority pending full mTLS operation and cold/hit tradeoff measurements. Boring compatibility discussion above is historical review context, not requested benchmarking scope.

Added separate `src/crypto/tls/handshake_audit_test.go` (no compile/test/timing run):
- `BenchmarkAuditTLS12HandshakePair/ECDSA-P256/{X25519,CurveP256}/{SHA256,SHA384}/{Full,Resume}`.
- Real public `Client`/`Server` + both `Handshake` calls over `net.Pipe`, normal CSPRNG, actual existing ECDSA P-256 certificate and trusted root fixtures, normal server verification, ALPN, session tickets, no artificial certificate/OCSP inflation. TLS1.2 explicitly forced to avoid accidentally paying TLS1.3 key-share costs.
- Full mode uses the normal LRU session cache but evicts its entry before each handshake, so it still exercises normal ticket issuance/storage. The eviction cost is included rather than hidden with per-iteration timer manipulation. Resume mode warms one full handshake outside timer, then uses real newly issued tickets. Every iteration verifies both endpoints' DidResume/version/suite/curve/ALPN state.
- Both modes initialize ticket keys/cache outside timer and hold one real connection state to keep weak certificate-cache references alive, modeling overlapping connections. Full mode is common hot-server-cert parsing, not artificially cold ASN.1 work.
- One op is **a complete handshake pair**, including fresh connections, goroutine/channel scheduling, transport construction/teardown and public ConnectionState checks, not server-only crypto. No TLS close-notify/application payload. These fixed overheads can make tiny cryptographic savings insignificant: that is a reason not to promote a marginal candidate, not a reason to inflate the transcript.
- `TestAuditTLS12HandshakePaths` exercises full -> resumed -> explicitly evicted full for all four curve/hash combinations.

Central commands:
```
bin/go test crypto/tls -run '^TestAuditTLS12HandshakePaths$' -count=1
bin/go test crypto/tls -run '^$' -bench '^BenchmarkAuditTLS12HandshakePair$' -benchmem -count 10
```
Compare independent patches (TLS transcript dedup; internal TLS1.2 PRF candidate) and combined result, since parent currently has both applied. Existing server-replay benchmark remains useful as a lower-noise corroboration, but its deterministic entropy and server-only replay are explicitly different from this full public operation. Prefer new benchmark for significance judgment.
