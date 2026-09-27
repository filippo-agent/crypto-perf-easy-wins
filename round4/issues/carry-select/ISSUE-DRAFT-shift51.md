# DRAFT secondary candidate — amd64 double-word constant shift selection

Not filed; instruction-count opportunity confirmed, speed benefit not established.
Same compiler/baseline as ISSUE-DRAFT.md. GOAMD64=v1.

```go
//go:noinline
func Shift51(lo, hi uint64) uint64 { return hi<<13 | lo>>51 }
```

Parent-built `evidence/repro.test`, address 0x53d700, static GNU/AT&T assembly:

```
shl $13,%rbx
shr $51,%rax
or %rbx,%rax
ret
```

Equivalent shorter sequence: `shrd $51,%rbx,%rax; ret`. Source modulo-uint64
semantics are equivalent for every uint64 pair; neither signed arithmetic nor
field-limb bounds are needed. Independent math/big tests passed in parent's suite.
Actual hot production occurrence: field.shiftRightBy51 in Go feSquare emits this
sequence five times per invocation; full Verify profile attributes 1.14% flat to
that helper across contexts, inside—not additional to—the square attribution.

SSA AMD64 operation/rule support for a two-input double shift is missing; the
assembler supports the encoding (`cmd/internal/obj/x86/asm6.go`, ASHRQ entries
using movDoubleShift). ARM64.rules already combines this expression into EXTRconst,
but no actual ARM64 result is claimed: parent's saved asm files were empty due
to a package filter mismatch. Re-disassemble the existing binary with
`-s '^carryselect\.Shift51$'` to obtain that control.

Unlike negated-borrow SBB, SHRD may have worse latency than parallel simple shifts
plus OR on some processors. This must be costed/measured before calling it an
optimization. No source workaround or production patch selected; no asm rewrite
of feMul proposed. Novelty search remains incomplete. Keep as a secondary
instruction-selection discussion, not a promised crypto acceleration.
