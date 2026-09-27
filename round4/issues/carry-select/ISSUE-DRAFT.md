# DRAFT — cmd/compile: amd64 materializes a borrow before negating it into a mask

**Not filed. Narrow residual codegen opportunity; no claimed end-to-end speedup.**

## Environment and reproduction

Go go1.28-devel, supplied compiler revision
`2ff5743d9fd52fac166225e75df0c2c1edf82abb`; linux/amd64, GOAMD64=v1.
Production tree baseline `2532e0de69344246565a94fc3de14fd4f982b361`.

```go
package p
import "math/bits"

//go:noinline
func NegBorrow(x, y uint64) uint64 {
    _, b := bits.Sub64(x, y, 0)
    return -b
}

// Mechanically equivalent control spelling.
//go:noinline
func NegBorrowSub(x, y uint64) uint64 {
    _, b := bits.Sub64(x, y, 0)
    m, _ := bits.Sub64(0, 0, b)
    return m
}
```

The parent built the attached standalone package, ran its tests successfully,
and produced `evidence/repro.test`. Static GNU objdump output of that binary is
saved as `evidence/amd64-inspected.asm`. The initial objdump filter incorrectly
used `example.com/.*` for this `carryselect` module. The corrected, populated
`evidence/amd64.asm` and `evidence/arm64.asm` now use its actual symbol prefix;
the compilation driver has also been corrected.

Final independent validation passed ordinary, race, and GOAMD64=v3 tests
(`evidence/final/`). ARM64 remains cross-compilation/codegen only.

## Actual amd64 assembly

GNU/AT&T syntax, original NegBorrow (0x53d560):

```asm
sub    %rbx,%rax
setb   %cl
movzbl %cl,%eax
neg    %rax
ret
```

Equivalent NegBorrowSub (0x53d580), actually built with the same flags:

```asm
sub    %rbx,%rax
mov    $0x0,%eax
sbb    $0x0,%rax
ret
```

The alternate spelling already avoids materializing a 0/1 integer borrow. It
still initializes a zero temporary. A simpler equivalent instruction sequence is:

```asm
sub    %rbx,%rax        # or cmp; the difference is dead
sbb    %rax,%rax        # 0-CF, independent of old RAX
ret
```

This is not a request for ADX/MULX or CPU-specific dispatch. Plain SBB is available
at GOAMD64=v1. No instruction between the subtraction and SBB may clobber CF.

ARM64 is an already-good control: `NegBorrow` emits `SUBS; NGC ZR; RET`.
The alternate `NegBorrowSub` spelling emits `SUBS; MOVD ZR; SBCS; RET` there,
so it is not a portable instruction-count improvement.

## Semantic justification

bits.Sub64 returns b=0 or b=1 for every uint64 x,y; b=1 exactly when x<y.
Unsigned -b is respectively 0 or 2^64-1. SBB r,r consumes the same CF and
computes exactly those values. No scalar modulus or small-value assumption is
needed; all uint64 high-bit and wrap cases are valid. There are no pointers,
aliases, bounds checks, or secret-dependent branches in this reduction.

The standalone tests independently check unsigned x<y against both functions,
including equal arguments, 0, 1, 2, 2^31, 2^32, 2^63, MaxUint64, neighboring
extremes, and deterministic random values. Parent `evidence/tests.txt` reports
`ok carryselect 0.020s`. The test suite also covers the separate alias/bounds
reproducers, but those are not required for this specific issue.

## Existing real application

`crypto/internal/fips140/edwards25519.fiatScalarAdd` ends its multiword
subtraction with the same SETB/MOVZX/NEG sequence at 0x5fc08f–0x5fc095, in
`scalar-add-amd64.asm`. It uses the all-ones mask to select reduced limbs.
This establishes a real production occurrence, not a hotness claim: scalarAdd
was not a retained hotspot in the parent Ed25519 Verify profile. The separate
field.feSquare is hot but is NOT used to justify this mask peephole's importance.

## Likely compiler layer

`cmd/compile/internal/ssa/_gen/AMD64.rules:30–44` lowers Sub64borrow to a widened
SETB and already eliminates that materialization when the borrow feeds the next
ADC/SBB. Rules 53–54 recognize adding/subtracting a widened carry. SBBQcarrymask
already exists and is used for other masks. The actual standalone code shows
that the negative-borrow form is still not folded.

Candidate rule to investigate, not a tested compiler patch:

```
(NEGQ (MOVBQZX (SETB flags))) => (SBBQcarrymask flags)
```

SSA/flagalloc should verify flags lifetime and any other users. This is stronger
than speculation about a lost high-level range: the 0/1 range comes directly
from the borrow intrinsic and the exact missed sequence is observable.

## Prior art / scope (verified September 27, 2026)

[#76056](https://github.com/golang/go/issues/76056), “cmd/compile: optimize
conditional subtractions,” is closed/completed (May 15, 2026). Its comments and
linked work cover borrow-driven selection; the linked
[commit 212065c](https://github.com/golang/go/commit/212065c9221bc01b176ce5820fccae19c2a54c4b)
changed carry/borrow materialization from NEG(SBB carrymask) to widened SETB.
More directly, [#80399](https://github.com/golang/go/issues/80399), “cmd/compile:
materialized bits.Add64/Sub64 carries no longer fold into consumers on amd64
(regression from CL 778140),” is closed/completed (July 15, 2026). Its
[fix 0a6ccc5](https://github.com/golang/go/commit/0a6ccc557a7205172a9db17acb76cb18428a441e)
adds ADDQ/SUBQ consumers and tests `s+carry`/`s-carry`, not a NEG consumer or a
negated-borrow test. The observed `-borrow` miss is therefore best presented as a
**residual consumer case in that existing work**, not a newly discovered
carry-to-mask optimization class. Recommend offering the reproducer and candidate
NEG fold to #80399's maintainers first, with #76056 as context; use a separate
follow-up only if requested. The historical lowering change is verified source
history, not a newly measured regression range. See `../PRIOR-ART.md`.

## Timing / production disposition

Parent screening: five 100ms samples per helper on AMD EPYC 9554P, symmetric
indirect benchmark calls. NegBorrow median 1.534 ns/op; NegBorrowSub 1.552 ns/op,
with overlapping/noisy samples. **No empirical speedup is established.** The
opportunity is fewer instructions and simpler flag-to-mask lowering.

Do not link this to a claimed RSA speedup. The independently tested RSA ctEq
and assign source patches did not produce robust full-operation improvements;
there is no selected carry/select production change from this pass.

## Reproduce assembler, without relying on an accidental symbol filter

Parent CPU owner can use the already-built tool:

```
go tool objdump -s '^carryselect\.(NegBorrow|NegBorrowSub)$' evidence/repro.test
go tool objdump -s '^carryselect\.(NegBorrow|NegBorrowSub)$' evidence/repro-arm64.test
```

The binary already exists; running tests/building compilers remains coordinated
with the parent. No performance work was run by the reporting agent.
