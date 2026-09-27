# Constant append / memmove compiler issue

**Final authoritative draft:** `ISSUE-DRAFT.md`. Reproduced amd64 missed inline copy; arm64 already emits the desired overlap-safe copy. Parent semantic tests PASS; both architectures compiled normally (arm64 not hardware-executed). No new MAC speed claim.

## Evidence

- `evidence/amd64.asm`: Append32/28, Local32, Copy32 retain memmove. Scalar32 merges explicit byte operands to four64-bit loads/stores with no memmove. Array32 avoids memmove but retains32-byte zeroing and two bounds checks.
- `evidence/arm64.asm`: Append32/28, Local32, Copy32 already inline. This is a positive control, not a claimed arm64 gap.
- `evidence/compiler.txt`: -m=2/BCE diagnostics. Explicit noinline markers, no global optimization disabling; source pointers don't escape.
- `evidence/tests.txt`: independent semantics/overlap tests PASS on amd64.
- `evidence/bench.txt`: five baseline REAL-public-HMAC runs, no copy-helper A/B. No standalone speedup quantified.
- Exact parent commands: `../../compile-issues.sh`; compiler upstream SHA `2ff5743d9fd52fac166225e75df0c2c1edf82abb`.

Parent public-HMAC array-assignment probe remains statistically unresolved (warm SHA256 p=0.092,n=12). Exact profile budget is append line2084.00% cumulative,3.39% callees—not14.17% total memmove. See sibling `hash-sum-return-buffer/ATTRIBUTION.md`.

## Legality / scope

All source loads before any destination store safely supports arbitrary overlap; retain nil, bounds, growth and overflow semantics. Merely raising amd64 Move threshold is unsafe while its lowering interleaves loads/stores. Improving Local32 disjointness is an alternative narrower approach; exact SSA predicate failure is not proven. No compiler patch or historical regression is claimed. Do not file externally without parent review.
