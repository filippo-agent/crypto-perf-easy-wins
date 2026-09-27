# Draft: cmd/compile: fold exact constant multiply/divide when local bounds prove no overflow

**Ready for compiler-team review; not filed. Evidence collected September 27, 2026.**

## Environment

Go 1.28-devel compiler source **2ff5743d9fd52fac166225e75df0c2c1edf82abb**, normal optimizing builds. Observed on linux/amd64 and cross-compiled arm64 with the same compiler. Full linked disassemblies and passing tests are in `evidence/`; parent build script is `../../compile-issues.sh`. No arm64 execution/timing is claimed.

## Minimal reproducer — full-domain equivalence, explicit local bound

```go
package pqhelpers

const q = 8380417

//go:noinline
func Scale88Masked(r byte) int32 {
    return int32(r&63) * 2 * (q-1) / 88
}

//go:noinline
func Scale88MaskedGrouped(r byte) int32 {
    return int32(r&63) * (2 * (q-1) / 88)
}
```

These exact functions are in the compiled and tested `repro.go`. For **every byte input**, `r&63` is in [0,63], and the largest intermediate is **63 × 16760832 = 1055932416 < 2^31**. The numerator constant is exactly divisible by 88, with quotient **190464**. Thus neither multiplication overflows and the division has no remainder: factoring the constants is mechanically valid without knowledge of cryptography or a caller precondition.

The proposed compiler optimization is constrained: fold `(x*C)/D` to `x*(C/D)` only when divisibility and nonoverflowing evaluation are established. This is **not** a request for an unrestricted integer-algebra rewrite.

## Actual amd64 code

Saved `evidence/amd64.asm`, original masked function at **0x5355e0**:

```
ANDL $63, AX
IMULL $16760832, AX, CX
MOVSXD CX, AX
MOVL $0xba2e8ba3, CX
IMULQ CX, AX
SHRQ $38, AX
RET
```

Working source variant at **0x535600**:

```
ANDL $63, AX
IMULL $190464, AX, AX
RET
```

Six non-return instructions become two, including the common mask. The compiler already removes the signed-division rounding correction in the masked original, but still retains the exact division's reciprocal multiply/shift. This is evidence that this is not merely failure to recognize signed nonnegativity.

## Actual arm64 code

`evidence/arm64.asm`, original masked function **0x12b710**:

```
AND $63, R0, R1
UBFIZ $24, R0, $6, R2
SUB R1<<14, R2, R1
SXTW R1, R1
MOVD $35747, R2
MOVK $(47662<<16), R2
MUL R2, R1, R1
LSR $38, R1, R0
RET
```

The first shift/subtract implements multiplication by 16760832. Grouped variant at **0x12b740**:

```
AND $63, R0, R1
MOVD $59392, R2
MOVK $(2<<16), R2
MULW R2, R1, R0
RET
```

Eight non-return instructions become four. This is the actual working compiled source alternative, not an imagined ISA sequence.

## Controls proving scope

* **Power-of-two divisor:** `Scale32Masked` uses `r&15` and division by 32. Actual amd64 emits mask, multiply by 16760832, shift right 5; grouped emits mask and multiply by **523776**. On arm64 four non-return instructions become three. This mirrors the locally visible mask in production's highBits32 path.
* **Type-bounded wider intermediate:** `Scale88Wide` computes `int64(byte)*16760832/88`. Every byte input has product <2^32, so cannot overflow int64. It still emits reciprocal high multiplication: amd64 **MULQ**, arm64 **UMULH**, plus constant setup and shift. This corroborates an opportunity when the type itself bounds multiplication, although the recorded working grouped pair is the masked int32 case.
* **Negative control:** `Scale88Original` omits the mask and computes `int32(byte)*16760832/88`. Byte inputs 129..255 can overflow the int32 multiplication. `TestScale` explicitly confirms disagreement with unrestricted grouped arithmetic at 255. **That unmasked pair is not a legal general compiler fold.**

## Connection to ML-DSA: distinguish source invariant from compiler proof

The actual ML-DSA `decompose88` source was `int32(r1)*2*(q-1)/88`, with r1 produced by highBits88. Algorithmically r1∈[0,43], giving maximum product **720715776**, safely below 2^31. Grouping the constants is therefore a correct tiny **source workaround** on the existing canonical field domain. A byte return type alone only establishes 0..255 and is insufficient for this proof. The compiler issue above deliberately adds a local mask so no crypto invariant is required.

Fresh stacked production baseline **db19b48d27dde1bb6c7c2c144ba3099536382374** has the actual signed reciprocal scaling sequence in `../../pq-asm/decompose88.amd64.asm`, 0x5d5912–0x5d592c. Fresh public ML-DSA-44 parse+Verify profile attributes **4.33% flat / 5.37% cumulative** to decompose88 and **6.71% cumulative** to its useHint caller. Sign44 attributes **0.98% / 1.53%** to decompose88. These overlapping exposure figures are not removable-cycle estimates.

Parent tested the two-parenthesis-group production patch with 12 paired public-operation samples across 44/65/87. **No individual Sign or parse+Verify difference was statistically resolved** (`../../bench/mldsa-decompose-stat.txt`): ParseVerify44 was 67.91µs → 64.97µs, p=0.060; Sign44 p=0.143; other p values 0.078..0.887. Do not report the direction or geomean as an established API speedup. B/op and allocation counts are unchanged. The reproducible compiler opportunity remains valid without a resolved complete-operation win.

## Compiler-source diagnosis and limits

`src/cmd/compile/internal/ssacompile/prove.go:1501` propagates multiplication limits using `ssa/prove.go:367` (`Limit.Mul`); `ssacompile/prove.go:2412` can convert nonnegative signed division to unsigned. `_gen/divmod.rules` subsequently lowers surviving constant divisions into reciprocal multiplication. The masked original's removal of the signed correction is consistent with that mechanism; it still does not cancel the exact constant factor.

A candidate implementation could exploit the pre-lowering multiplication bound plus `C%D==0` while the Div/Mul structure is still visible. The saved `compiler.txt` contains inlining/BCE diagnostics, **not** a per-pass SSA dump establishing a definitive fault location. Treat pass selection as an evidence-based lead, not as a completed compiler diagnosis. Preserve overflow/truncation semantics for all other inputs, especially the explicit negative control.

## Validation and reproduction

`evidence/tests.txt` reports **PASS** for the standalone module, including exhaustive all-byte masked and wide controls and the overflowing counterexample. `../../tests/mldsa-decompose-group-constants.log` reports passing internal and public ML-DSA suites; added exhaustive canonical-coefficient tests compare old/grouped/production formulas against a direct mathematical oracle for both denominators. No crypto test is weakened.

From this directory using the pinned Go executable:

```
go test -count=1 ./...
go test -c -o /tmp/pq-small.test
go tool objdump -s 'Scale(88|32)' /tmp/pq-small.test
GOARCH=arm64 CGO_ENABLED=0 go test -c -o /tmp/pq-small-arm64.test
go tool objdump -s 'Scale(88|32)' /tmp/pq-small-arm64.test
```

The snippet alone also compiles with `go tool compile -S`. All arithmetic is straight-line on both architectures, with no new memory/aliasing or side-channel assumption. Prior Go issue #76056 addresses conditional subtraction/borrow-selection, **not** this bounded exact multiply/divide opportunity.

## Related work and filing route (verified September 27, 2026)

[#10931](https://github.com/golang/go/issues/10931), “cmd/compile: constant
evaluation could commute and associate,” is closed/completed and already
included `x*100/10`; the author explicitly withdrew unrestricted division
reassociation because of integer overflow. This draft's locally proved
nonoverflow plus exact divisibility is the essential narrower condition, not
novelty in regrouping constants. Closed/completed
[#25239](https://github.com/golang/go/issues/25239), “cmd/compile: use proved
bounds to remove signed division fix-ups,” concerns removing signed correction,
not cancelling the division itself. Closed/completed
[#49495](https://github.com/golang/go/issues/49495) is superficially similar but
about floating-point reassociation rejected as working as intended; it is not an
integer cancellation fix. No exact open tracker for this guarded integer fold
was found. Recommend a narrowly scoped follow-up referencing #10931/#25239, with
the masked/type-bounded proofs and overflowing negative control retained, rather
than reporting general constant arithmetic optimization as new. See
`../PRIOR-ART.md`.
