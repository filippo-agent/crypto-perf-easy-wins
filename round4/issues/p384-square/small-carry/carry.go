// Prepared candidate probes. NOT compiled or validated as a reproducer.
// Independent*: two separate seven-limb Add64 chains, preserving all sum limbs.
// Reordered*: same independent calculation, with the second chain written first.
// Dependent*: separate controls in which chain B consumes chain A's top sum limb.
package carrysumprobe

import "math/bits"

//go:noinline
func IndependentAB(out *[15]uint64, a, b *[14]uint64) {
	x0, ca := bits.Add64(a[0], b[0], 0)
	x1, ca := bits.Add64(a[1], b[1], ca)
	x2, ca := bits.Add64(a[2], b[2], ca)
	x3, ca := bits.Add64(a[3], b[3], ca)
	x4, ca := bits.Add64(a[4], b[4], ca)
	x5, ca := bits.Add64(a[5], b[5], ca)
	x6, ca := bits.Add64(a[6], b[6], ca)
	y0, cb := bits.Add64(a[7], b[7], 0)
	y1, cb := bits.Add64(a[8], b[8], cb)
	y2, cb := bits.Add64(a[9], b[9], cb)
	y3, cb := bits.Add64(a[10], b[10], cb)
	y4, cb := bits.Add64(a[11], b[11], cb)
	y5, cb := bits.Add64(a[12], b[12], cb)
	y6, cb := bits.Add64(a[13], b[13], cb)
	*out = [15]uint64{x0, x1, x2, x3, x4, x5, x6, y0, y1, y2, y3, y4, y5, y6, ca + cb}
}

//go:noinline
func IndependentBA(out *[15]uint64, a, b *[14]uint64) {
	x0, ca := bits.Add64(a[0], b[0], 0)
	x1, ca := bits.Add64(a[1], b[1], ca)
	x2, ca := bits.Add64(a[2], b[2], ca)
	x3, ca := bits.Add64(a[3], b[3], ca)
	x4, ca := bits.Add64(a[4], b[4], ca)
	x5, ca := bits.Add64(a[5], b[5], ca)
	x6, ca := bits.Add64(a[6], b[6], ca)
	y0, cb := bits.Add64(a[7], b[7], 0)
	y1, cb := bits.Add64(a[8], b[8], cb)
	y2, cb := bits.Add64(a[9], b[9], cb)
	y3, cb := bits.Add64(a[10], b[10], cb)
	y4, cb := bits.Add64(a[11], b[11], cb)
	y5, cb := bits.Add64(a[12], b[12], cb)
	y6, cb := bits.Add64(a[13], b[13], cb)
	*out = [15]uint64{x0, x1, x2, x3, x4, x5, x6, y0, y1, y2, y3, y4, y5, y6, cb + ca}
}

//go:noinline
func ReorderedAB(out *[15]uint64, a, b *[14]uint64) {
	y0, cb := bits.Add64(a[7], b[7], 0)
	y1, cb := bits.Add64(a[8], b[8], cb)
	y2, cb := bits.Add64(a[9], b[9], cb)
	y3, cb := bits.Add64(a[10], b[10], cb)
	y4, cb := bits.Add64(a[11], b[11], cb)
	y5, cb := bits.Add64(a[12], b[12], cb)
	y6, cb := bits.Add64(a[13], b[13], cb)
	x0, ca := bits.Add64(a[0], b[0], 0)
	x1, ca := bits.Add64(a[1], b[1], ca)
	x2, ca := bits.Add64(a[2], b[2], ca)
	x3, ca := bits.Add64(a[3], b[3], ca)
	x4, ca := bits.Add64(a[4], b[4], ca)
	x5, ca := bits.Add64(a[5], b[5], ca)
	x6, ca := bits.Add64(a[6], b[6], ca)
	*out = [15]uint64{x0, x1, x2, x3, x4, x5, x6, y0, y1, y2, y3, y4, y5, y6, ca + cb}
}

//go:noinline
func ReorderedBA(out *[15]uint64, a, b *[14]uint64) {
	y0, cb := bits.Add64(a[7], b[7], 0)
	y1, cb := bits.Add64(a[8], b[8], cb)
	y2, cb := bits.Add64(a[9], b[9], cb)
	y3, cb := bits.Add64(a[10], b[10], cb)
	y4, cb := bits.Add64(a[11], b[11], cb)
	y5, cb := bits.Add64(a[12], b[12], cb)
	y6, cb := bits.Add64(a[13], b[13], cb)
	x0, ca := bits.Add64(a[0], b[0], 0)
	x1, ca := bits.Add64(a[1], b[1], ca)
	x2, ca := bits.Add64(a[2], b[2], ca)
	x3, ca := bits.Add64(a[3], b[3], ca)
	x4, ca := bits.Add64(a[4], b[4], ca)
	x5, ca := bits.Add64(a[5], b[5], ca)
	x6, ca := bits.Add64(a[6], b[6], ca)
	*out = [15]uint64{x0, x1, x2, x3, x4, x5, x6, y0, y1, y2, y3, y4, y5, y6, cb + ca}
}

//go:noinline
func DependentAB(out *[15]uint64, a, b *[14]uint64) {
	x0, ca := bits.Add64(a[0], b[0], 0)
	x1, ca := bits.Add64(a[1], b[1], ca)
	x2, ca := bits.Add64(a[2], b[2], ca)
	x3, ca := bits.Add64(a[3], b[3], ca)
	x4, ca := bits.Add64(a[4], b[4], ca)
	x5, ca := bits.Add64(a[5], b[5], ca)
	x6, ca := bits.Add64(a[6], b[6], ca)
	y0, cb := bits.Add64(a[7], x6, 0)
	y1, cb := bits.Add64(a[8], b[8], cb)
	y2, cb := bits.Add64(a[9], b[9], cb)
	y3, cb := bits.Add64(a[10], b[10], cb)
	y4, cb := bits.Add64(a[11], b[11], cb)
	y5, cb := bits.Add64(a[12], b[12], cb)
	y6, cb := bits.Add64(a[13], b[13], cb)
	*out = [15]uint64{x0, x1, x2, x3, x4, x5, x6, y0, y1, y2, y3, y4, y5, y6, ca + cb}
}

//go:noinline
func DependentBA(out *[15]uint64, a, b *[14]uint64) {
	x0, ca := bits.Add64(a[0], b[0], 0)
	x1, ca := bits.Add64(a[1], b[1], ca)
	x2, ca := bits.Add64(a[2], b[2], ca)
	x3, ca := bits.Add64(a[3], b[3], ca)
	x4, ca := bits.Add64(a[4], b[4], ca)
	x5, ca := bits.Add64(a[5], b[5], ca)
	x6, ca := bits.Add64(a[6], b[6], ca)
	y0, cb := bits.Add64(a[7], x6, 0)
	y1, cb := bits.Add64(a[8], b[8], cb)
	y2, cb := bits.Add64(a[9], b[9], cb)
	y3, cb := bits.Add64(a[10], b[10], cb)
	y4, cb := bits.Add64(a[11], b[11], cb)
	y5, cb := bits.Add64(a[12], b[12], cb)
	y6, cb := bits.Add64(a[13], b[13], cb)
	*out = [15]uint64{x0, x1, x2, x3, x4, x5, x6, y0, y1, y2, y3, y4, y5, y6, cb + ca}
}
