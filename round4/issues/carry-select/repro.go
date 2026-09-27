// Standalone codegen reductions. No cryptographic assumptions are needed.
package carryselect

import (
 "crypto/subtle"
 "math/bits"
)

//go:noinline
func EqTwoBorrow(x, y uint) uint {
 _, a := bits.Sub(x, y, 0)
 _, b := bits.Sub(y, x, 0)
 return 1 ^ (a | b)
}

//go:noinline
func EqXorBorrow(x, y uint) uint {
 _, b := bits.Sub(x^y, 1, 0)
 return b
}

//go:noinline
func NegBorrow(x, y uint64) uint64 {
 _, b := bits.Sub64(x, y, 0)
 return -b
}

// Diagnostic alternate source spelling for exactly the same borrow mask.
//go:noinline
func NegBorrowSub(x, y uint64) uint64 {
 _, b := bits.Sub64(x, y, 0)
 mask, _ := bits.Sub64(0, 0, b)
 return mask
}

// Both slice functions preserve forward sequential overlap behavior and panic
// before any store if cap(y)<len(x). cap(y), not len(y), is the source contract.
// Mask down the public API condition so the compiler can prove 0/1.
//go:noinline
func AssignMask(x, y []uint, on uint) {
 y = y[:len(x)]
 mask := -(on & 1)
 for i := range x { x[i] ^= mask & (x[i] ^ y[i]) }
}

//go:noinline
func AssignSelect(x, y []uint, on uint) {
 y = y[:len(x)]
 for i := range x { x[i] = uint(subtle.ConstantTimeSelect(int(on&1), int(y[i]), int(x[i]))) }
}

// This carry loop reproduces a hot bigmod sub, but its flag materialization is
// required by the chosen CMP-controlled loop, not a broken straight-line chain.
//go:noinline
func SubLoop(x, y []uint64) (borrow uint64) {
 y = y[:len(x)]
 for i := range x { x[i], borrow = bits.Sub64(x[i], y[i], borrow) }
 return
}

// A control: straight-line carries should remain SUB/SBB/SBB/SBB.
//go:noinline
func Sub4(x, y *[4]uint64) (borrow uint64) {
 x[0], borrow = bits.Sub64(x[0], y[0], borrow)
 x[1], borrow = bits.Sub64(x[1], y[1], borrow)
 x[2], borrow = bits.Sub64(x[2], y[2], borrow)
 x[3], borrow = bits.Sub64(x[3], y[3], borrow)
 return
}

// Another direct extraction from field.shiftRightBy51. The modulo-uint64
// expression is equivalent to an immediate SHRD for ALL inputs; hi<2^51 is
// only needed if one wants the untruncated 128-bit shift to fit in one word.
//go:noinline
func Shift51(lo, hi uint64) uint64 { return (hi << 13) | (lo >> 51) }
