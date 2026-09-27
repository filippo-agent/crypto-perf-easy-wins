# GOAMD64=v3 production vs standalone: identical helper machine code

September27,2026. Static inspection only; no compiler, tests, benchmarks or target
binaries executed by worker. Parent's public-operation controls are authoritative
for the tested source workaround, not the earlier isolated-helper timing ordering.

## Parent public A/B

Changing the existing Mul-based Square wrapper back to generated Square:

* ECDSA P-384 reparse-valid Verify:804.8→780.4 µs, p=0.713,n=12: **unresolved**.
* ECDH/P384 full operation:671.5→827.5 µs, **+23.23%, p<0.001,n=12**: regression.
* Reported allocations unchanged.

Source: `round4/bench/v3-{ecdsa,ecdh}-stat.txt`. **Do not recommend a blanket
GOAMD64=v3 gate selecting generated Square from the standalone helper result.**
These controls support retaining the existing Mul workaround for the measured
ECDH context and do not establish an ECDSA benefit from changing it.

## Exact binary comparison

`compare.py` disassembles only existing symbols with GNU objdump; it never runs a
compiler or test binary. `comparison.txt` records the checks and core hashes.

For both p384Mul and p384Square, the complete bytes from entry through the first
RET are **byte-for-byte identical** across:

* standalone RawMul/RawSquare and compact Mul/Square,
* `round4/bin/ecdsa-v3-square.test`,
* `round4/bin/ecdh-v3-square.test`,
* plus Mul in the corresponding `ecdsa-v3-mul.test` and `ecdh-v3-mul.test` binaries.

The rest of each symbol is also byte-identical after zeroing only the four-byte
PC-relative displacement of `CALL runtime.morestack_noctxt.abi0`. The compared
call opcode and target are checked; nothing else, including internal branch
encodings, instructions, immediates or stack offsets, is normalized.

| Helper | Bytes through RET | Full symbol bytes | CALL instruction offset |
|---|---:|---:|---:|
| Mul |4136|4176|4151|
| Square |3675|3705|3685|

Thus the standalone array type alias vs production named type, function/package
names, source compaction and test-package build context did **not** produce a
different instruction sequence for these helpers. There is no hidden
production-vs-standalone v3 arithmetic codegen difference to explain away the
reversal. Absolute load addresses differ; instruction-byte equality does not
mean all execution context is identical.

## What context differs, and what remains unproven

* Standalone `BenchmarkFull` repeats only Square(x,x) or Mul(x,x,x) in place;
  its independent-input control also repeats only one helper on a fixed input.
* Public `BenchmarkECDH` generates a fresh key, serializes its public key,
  reconstructs the peer public key and computes ECDH each iteration
  (`src/crypto/ecdh/ecdh_test.go:370–405`). It is not a repeated isolated square.
  Point arithmetic interleaves multiplication/squaring and other work.
* Symbol inspection confirms generated Square is linker-dead in both public
  Mul-wrapper binaries. The Square-wrapper binaries contain both helpers:
 4176+3705=7881 text bytes versus4176 for this pair in the Mul-wrapper version.
  This proves a code-footprint difference, **not** that instruction-cache effects
  caused the measured ECDH regression. Runtime addresses, caller state, operand
  alias/layout and reuse patterns also differ; none has been isolated causally.

**Classification:** isolated-vs-complete-operation/context-dependent timing,
with identical helper machine code. Not a source/type-based compiler discrepancy.
Specific microarchitectural attribution remains unproven. Source-workaround
confidence must be based on public A/B, not a blanket ISA-level extrapolation
from isolated microbenchmarks. The independently proven small flag-replay issue
and its codegen filing draft are unaffected.
