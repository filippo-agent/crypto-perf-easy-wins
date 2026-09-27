package p384issue

type p384Uint1 uint64
type p384MontgomeryDomainFieldElement = [6]uint64

func p384CmovznzU64(out1 *uint64, arg1 p384Uint1, arg2 uint64, arg3 uint64) {
	x1 := (uint64(arg1) * 0xffffffffffffffff)
	x2 := ((x1 & arg3) | ((^x1) & arg2))
	*out1 = x2
}
