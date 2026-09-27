package pqhelpers

const q = 8380417

// Scale88Original is NOT equivalent to Scale88Grouped for every byte.
// ML-DSA only calls the corresponding expression with r <= 43.
//
//go:noinline
func Scale88Original(r byte) int32 {
	return int32(r) * 2 * (q - 1) / 88
}

//go:noinline
func Scale88Grouped(r byte) int32 {
	return int32(r) * (2 * (q - 1) / 88)
}

// Scale88Masked supplies a sufficient bound entirely in local SSA.
// The maximum intermediate is 63*16760832 = 1055932416 < 2^31.
//
//go:noinline
func Scale88Masked(r byte) int32 {
	return int32(r&63) * 2 * (q - 1) / 88
}

//go:noinline
func Scale88MaskedGrouped(r byte) int32 {
	return int32(r&63) * (2 * (q - 1) / 88)
}

// Scale88Wide supplies a type-only proof: the intermediate cannot overflow
// int64 for ANY byte input. This is a diagnostic, not a production patch.
//
//go:noinline
func Scale88Wide(r byte) int64 {
	return int64(r) * 2 * (q - 1) / 88
}

//go:noinline
func Scale32Masked(r byte) int32 {
	return int32(r&15) * 2 * (q - 1) / 32
}

//go:noinline
func Scale32MaskedGrouped(r byte) int32 {
	return int32(r&15) * (2 * (q - 1) / 32)
}

// BitsOriginal is the four intermediate bit sums in ML-KEM SamplePolyCBD.
// Each sum is in [0,2] for every possible input, no crypto precondition.
//
//go:noinline
func BitsOriginal(b byte) (uint16, uint16, uint16, uint16) {
	b7, b6, b5, b4 := b>>7, b>>6&1, b>>5&1, b>>4&1
	b3, b2, b1, b0 := b>>3&1, b>>2&1, b>>1&1, b&1
	return uint16(b0 + b1), uint16(b2 + b3), uint16(b4 + b5), uint16(b6 + b7)
}

//go:noinline
func BitsWide(in byte) (uint16, uint16, uint16, uint16) {
	b := uint16(in)
	b7, b6, b5, b4 := b>>7, b>>6&1, b>>5&1, b>>4&1
	b3, b2, b1, b0 := b>>3&1, b>>2&1, b>>1&1, b&1
	return b0 + b1, b2 + b3, b4 + b5, b6 + b7
}

//go:noinline
func BitPairOriginal(b byte) uint16 { return uint16((b & 1) + (b >> 1 & 1)) }

//go:noinline
func BitPairWide(b byte) uint16 { return uint16(b&1) + uint16(b>>1&1) }
