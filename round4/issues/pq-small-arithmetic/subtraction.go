package pqhelpers

import "crypto/subtle"

// Sub16Original mirrors the uint16 ML-KEM helper composition at q=3329.
//
//go:noinline
func Sub16Original(a, b uint16) uint16 {
	x := a - b + 3329
	return uint16(subtle.ConstantTimeSelect(subtle.ConstantTimeLessOrEq(int(x), 3328), int(x), int(x)-3329))
}

// Sub16Direct is equivalent only on canonical inputs a,b<3329.
//
//go:noinline
func Sub16Direct(a, b uint16) uint16 {
	d := int(a) - int(b)
	return uint16(subtle.ConstantTimeSelect(subtle.ConstantTimeLessOrEq(int(b), int(a)), d, d+3329))
}

// This diagnostic supplies explicit bounds; its branches are NOT a proposed
// constant-time cryptographic implementation. All inputs are defined.
//
//go:noinline
func Sub16Guarded(a, b uint16) uint16 {
	if a >= 3329 || b >= 3329 {
		return 0
	}
	x := a - b + 3329
	return uint16(subtle.ConstantTimeSelect(subtle.ConstantTimeLessOrEq(int(x), 3328), int(x), int(x)-3329))
}

// A branchless diagnostic with local masks proving stronger sufficient bounds.
//
//go:noinline
func Sub16Masked(a, b uint16) uint16 {
	a &= 2047
	b &= 2047
	x := a - b + 3329
	return uint16(subtle.ConstantTimeSelect(subtle.ConstantTimeLessOrEq(int(x), 3328), int(x), int(x)-3329))
}
