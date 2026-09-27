package carryselect

import "math/bits"

type wide struct { lo, hi uint64 }
func mul(a,b uint64) wide {hi,lo:=bits.Mul64(a,b);return wide{lo,hi}}
func addMul(v wide,a,b uint64) wide {
 hi,lo:=bits.Mul64(a,b)
 lo,c:=bits.Add64(lo,v.lo,0)
 hi,_=bits.Add64(hi,v.hi,c)
 return wide{lo,hi}
}

// Draft scheduling reduction of field.feSquare. Independent 128-bit dot
// products followed by adjacent-limb combination, no cryptographic algorithm.
// Arithmetic is modulo 2^128 and valid for ALL uint64 inputs.
//go:noinline
func DotSchedule(a [5]uint64) [5]uint64 {
 r0:=mul(a[0],a[0]);r0=addMul(r0,a[1],a[4]);r0=addMul(r0,a[2],a[3])
 r1:=mul(a[0],a[1]);r1=addMul(r1,a[2],a[4]);r1=addMul(r1,a[3],a[3])
 r2:=mul(a[0],a[2]);r2=addMul(r2,a[1],a[1]);r2=addMul(r2,a[3],a[4])
 r3:=mul(a[0],a[3]);r3=addMul(r3,a[1],a[2]);r3=addMul(r3,a[4],a[4])
 r4:=mul(a[0],a[4]);r4=addMul(r4,a[1],a[3]);r4=addMul(r4,a[2],a[2])
 return [5]uint64{r0.lo^r4.hi,r1.lo^r0.hi,r2.lo^r1.hi,r3.lo^r2.hi,r4.lo^r3.hi}
}

// Noinline is a scheduling diagnostic, NOT a proposed crypto change. It may
// reduce spills but call overhead can easily lose all savings.
//go:noinline
func row(a,b,c,d,e,f uint64) wide {v:=mul(a,b);v=addMul(v,c,d);return addMul(v,e,f)}

//go:noinline
func DotBarrier(a [5]uint64) [5]uint64 {
 r0:=row(a[0],a[0],a[1],a[4],a[2],a[3])
 r1:=row(a[0],a[1],a[2],a[4],a[3],a[3])
 r2:=row(a[0],a[2],a[1],a[1],a[3],a[4])
 r3:=row(a[0],a[3],a[1],a[2],a[4],a[4])
 r4:=row(a[0],a[4],a[1],a[3],a[2],a[2])
 return [5]uint64{r0.lo^r4.hi,r1.lo^r0.hi,r2.lo^r1.hi,r3.lo^r2.hi,r4.lo^r3.hi}
}
