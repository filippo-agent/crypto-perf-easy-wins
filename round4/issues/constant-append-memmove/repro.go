// Package constantappend reduces the serialization/copy part of SHA256 Sum.
// These are codegen reductions, not cryptographic implementations or timing models.
package constantappend

//go:noinline
func Append32(in []byte, p *[32]byte) []byte {
	return append(in, p[:]...)
}

//go:noinline
func Append28(in []byte, p *[32]byte) []byte {
	return append(in, p[:28]...)
}

// Local32 preserves the relevant nonescaping, disjoint local source plus
// growslice/no-grow phi. All source bytes are genuinely runtime values.
//go:noinline
func Local32(in []byte, p *[32]byte) []byte {
	local := *p
	return append(in, local[:]...)
}

// Array32 is a source workaround probe, NOT a validated improvement. Explicit
// assignment is safe even with overlap. The append zeroing might fail DSE.
//go:noinline
func Array32(in []byte, p *[32]byte) []byte {
	local := *p // snapshot before a possibly overlapping append zero-fill
	n := len(in)
	in = append(in, make([]byte, 32)...)
	*(*[32]byte)(in[n:]) = local
	return in
}

// Scalar32 deliberately exposes all appended values. If this removes memmove,
// inspect stores/spills before accepting it: 32 byte loads/stores can be worse.
//go:noinline
func Scalar32(in []byte, p *[32]byte) []byte {
	return append(in,
		p[0], p[1], p[2], p[3], p[4], p[5], p[6], p[7],
		p[8], p[9], p[10], p[11], p[12], p[13], p[14], p[15],
		p[16], p[17], p[18], p[19], p[20], p[21], p[22], p[23],
		p[24], p[25], p[26], p[27], p[28], p[29], p[30], p[31])
}

// Copy32 demonstrates that the issue isn't necessarily append-specific: small
// overlap-safe copies could lower to all-loads-before-stores inline sequences.
//go:noinline
func Copy32(dst, src *[32]byte) { copy(dst[:], src[:]) }
