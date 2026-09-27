# P384 Square through existing Mul — September27,2026

## Ready independent low-cost experiment

**Primary patch:** `patches/ecc-p384-square-mul-amd64.patch`, generated independently against baseline`f6653cda`; changes only `nistec/fiat/p384.go` and its wrapper generator. It routes `P384Element.Square(t)` to existing `p384Mul(&e.x,&t.x,&t.x)` **on amd64 only**, retaining the original generated Square on every other architecture. `cpu.AMD64` is a compile-time constant, not a runtime feature flag. Purego amd64 deliberately receives the same change because these field functions are Go implementations already.

**Alternative measurement-only patch:** `patches/ecc-p384-square-mul-all.patch`, a still smaller unconditional wrapper+generator substitution. It is an alternative, not an additional patch. **Do not select this unconditionally without other-architecture evidence.** Both independent patches pass `git apply --check` against the current tree, whose unrelated production edits were left untouched.

Reproducer: `ecc-square-files/make-wrapper-patches.py`; proposed full files are saved alongside it. The earlier `ecc-engine-square-mul.patch` remains a separate public-only engine experiment and is NOT combined into either patch. No P521 change is included.

## What is measured versus projected

Parent's `bench/fiat-square-scout.txt`, AMD EPYC9554P/linux-amd64, three short helper trials:

| Primitive | Specialized Square ns/op | Existing Mul(x,x) ns/op |
|---|---|---|
| P384 |93.11,96.38,84.67 |56.50,57.34,54.74 |
| P521 |191.6,194.4,184.1 |180.3,180.8,181.1 |

This establishes a strong **P384 helper lead**, roughly35–41% less helper time, not yet an API win. P521 is much closer; the earlier profile/call-count inference of~1.6× for P521 did NOT survive the isolated diagnostic and is withdrawn. No cross-architecture result exists. Even the amd64 gate does not prove a win on every Intel/AMD model or future compiler version.

Parent's P384 public Verify profile attributes~20.23% cumulative time to generated Square. Multiplying by the measured helper reduction yields a **rough~7–8 percentage point full-Verify budget**, not a measurement. This wrapper change reaches all squarings, including the field inversion and compressed-point square roots, unlike the prior public-only Double copy. Private Sign/GenerateKey/ECDH and public Verify all need complete-operation controls. Whole-operation gains, allocations, stack behavior and noise determine promotion.

## Exact source equivalence and aliasing

Static source inspection establishes a stronger fact than merely “multiplication equals squaring”: in baseline`p384_fiat64.go`, the entire generated `p384Mul` body with every `arg2` replaced by `arg1` is **byte-for-byte identical** to the generated `p384Square` body. Both have78 calls to bits.Mul64 and137 calls to bits.Add64 in generated Go source. The rewrite changes which pre-existing compiled function is called, not the polynomial/reduction algorithm or field representation.

`ecc-square-files/source-equivalence.py` reproduces the body comparison and checks that **all operand reads precede all six output stores** in both bodies. Thus `out==arg1==arg2` is safe as well as distinct output and either single-output/input alias. Field elements remain reduced Montgomery-domain inputs; both routines provide the same canonical Montgomery output. The wrapper preserves receiver return and all valid zero-value behavior. No operand encoding, range, scalar handling, point formula, table, public-key cache or retained secret state changes.

## Baseline compiled-code inspection: do not blame extra Square spills

Only static inspection of the existing parent-built `round3/bin/fiat-base.test` was performed—no build, profile, test or benchmark was run by this worker. Saved disassembly: `references/p384-{mul,square}-baseline-amd64.asm`; counts: `references/p384-square-static-summary.txt`.

| Existing amd64 symbol | Text bytes | Fixed frame subtraction | Instructions | Hardware MUL | ADC | Stack-memory instructions | Direct stack stores / loads |
|---|---:|---:|---:|---:|---:|---:|---:|
| p384Mul |4665 (0x1239) |1488 (0x5d0) |827 |66 |161 |419 |190 /228 |
| p384Square |4203 (0x106b) |1256 (0x4e8) |752 |51 |161 |377 |160 /216 |

Counts include ordinary function prologue/slow-path instructions; stack-memory counts are textual instructions containing an rsp-relative operand, not measured cache misses or an exact taxonomy of compiler spills. Frame subtraction excludes the saved rbp and caller frame. **Square is smaller and has fewer stack accesses/MUL instructions despite being slower.** Therefore “Square spills more” is contradicted by this binary. The15-MUL reduction is consistent with commoning duplicated cross-products when operands are statically identical. Longer dependency chains/instruction scheduling are plausible causes of the slowdown, but neither cause has been proven by these counts. An eventual compiler issue should include source reproducer, compiler version/build flags and actual disassembly rather than asserting a register-allocation diagnosis.

Mul's frame is232 bytes larger. It is already called by ordinary point arithmetic and inversion, but paths previously deepest in Square can change stack-growth behavior. Test allocations and whole-operation stack/code-size consequences. The old Square may become linker-dead in non-test amd64 binaries, because the wrapper was its only production caller; the new raw-helper tests intentionally keep both symbols alive, so test-binary size is not a clean measure of production text savings.

## Constant-time scope: safe for private operations too

Unlike the variable-time engine, **this proposal changes a shared secret-data field path**, by request, so private operations are in scope for validation. It does NOT make that path variable time.

* Existing private point arithmetic already relies on `p384Mul` being constant time for arbitrary field inputs. Identical operands do not change its static instruction/address schedule.
* The inspected arithmetic cores contain **no data-dependent branch**. Both have only the normal stack-limit conditional branch, runtime.morestack call and entry jump outside the arithmetic core. Reduction/select behavior is arithmetic masking; addresses are fixed limb offsets, not secret indices.
* `crypto/internal/fips140deps/cpu.AMD64` is declared `const AMD64 = goarch.IsAmd64 == 1`. The condition is resolved at compilation. It is NOT `X86Has...`, mutable feature state, a new bool parameter, or a branch on field values. Non-amd64 compiles retain the original generated routine; amd64 compiles use Mul, also under `-tags=purego`.
* Signing, ECDH, scalar-multiplication and key-generation algorithms/call sites stay unchanged. Their field square arithmetic is exactly the same source expression graph once arguments are identified. Same zero/one/near-p behavior and alias semantics must still be tested.

This preserves the existing constant-time design assumptions, not a formal microarchitectural timing proof. Candidate disassembly should confirm constant folding with the actual toolchain. Do not introduce a runtime public/secret flag or route private operations through the earlier wNAF engine.

## Generator, FIPS, and portability boundaries

The wrapper is generated, so both patches modify `fiat/generate.go`'s template. Only the P384 branch emits the architecture import/selection; all other curves retain their original template output. The standalone Fiat-generated arithmetic file is untouched: no regeneration of Fiat arithmetic or addchains is needed for the experiment. Template whitespace is arranged to render normal Go directly (this wrapper generator does not itself gofmt its output). Static substitution of the template conditionals/fields matched all four generated wrappers byte-for-byte for both variants. This was not a Go template/parser run; parent should still check actual generated-output consistency before landing.

Current-module internal dependencies already provide the constant cpu.AMD64. No public API or frozen-module bridge changes are needed; old GOFIPS140 snapshots keep their old implementation. This is still a current-module source change requiring normal FIPS review/self-tests/ACVP, not a claim of automatic validation. Sign/Verify CAST/PCTs remain in place. Arm64,32-bit targets and other architectures keep their original Square in the selected patch; correctness/cross-compilation checks still matter. There is no BoringCrypto-only or unusual-architecture premise.

## Prepared tests and parent-only measurement plan

`ecc-square-files/p384_square_round3_test.go` → `src/crypto/internal/fips140/nistec/fiat/p384_square_round3_test.go`, **baseline and candidate**. This is an internal-package test so it can call the untouched complete generated Square and Mul directly, even after the wrapper changes. It covers:

* zero,one,two,p−1,p−2; every single-bit and low-bit-run input through bit383;128 deterministic reduced random values;
* raw full Square vs raw full Mul vs wrapper and an independent math/big square-mod-p oracle;
* distinct output/input nonmutation; output=input Square; output=arg1=arg2 Mul; equal-valued distinct operands with output aliasing only arg1 or only arg2; receiver return;
* canonical-input fuzz entrypoint and three separate helper benchmarks (raw old Square,raw Mul,new/current wrapper).

New tests are **unformatted/uncompiled/unrun** by this worker. Parent gofmt and execute centrally:

```sh
./bin/go test crypto/internal/fips140/nistec/fiat -run '^TestRound3P384FullSquareAliases$'
./bin/go test crypto/internal/fips140/nistec/fiat -run '^$' -bench '^BenchmarkRound3P384FullSquare$' -benchmem -count=10
./bin/go test crypto/internal/fips140/nistec crypto/internal/fips140/ecdsa crypto/ecdsa crypto/ecdh
# Whole public + private controls on baseline versus wrapper-only candidate:
./bin/go test crypto/ecdsa -run '^$' -bench 'Benchmark(Sign|Verify|GenerateKey|AuditDeterministicSign|Round2VerifyNormal|Round3VerifyEngine)$' -benchmem -count=12
./bin/go test crypto/ecdh -run '^$' -bench '^BenchmarkECDH$' -benchmem -count=12
```

Retain P256/P521 controls, valid and invalid-hash Verify, fresh-key/reparse Verify, deterministic signatures, compressed-key parsing and rare r+n tests. Run A/B/A; isolate the wrapper from wNAF, public-Double copies and unrelated production edits. Inspect candidate call sites to verify architecture constant folding. Repeat default/purego amd64; execute race/fuzz/independent field/vector/ACVP tests separately from timing. Cross-compile non-amd64/current and test public frozen-module configurations as appropriate. An arm64 performance claim requires native measurements, not this gate or successful cross-compilation.

**Disposition:** strongest low-review-cost P384 field/codegen lead, helper-confirmed by parent but not yet API-confirmed. Recommended experiment is the amd64-only wrapper patch. No private variable-time behavior, no P521 extrapolation, no production edits or CPU-heavy work performed by this worker.
