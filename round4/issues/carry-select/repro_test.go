package carryselect

import (
 "math/big"
 "math/bits"
 "math/rand"
 "testing"
)

var sink uint

func TestEqualityAndMask(t *testing.T) {
 vals := []uint64{0,1,2,15,16,1<<31,1<<32,1<<63, ^uint64(0), ^uint64(0)-1}
 r := rand.New(rand.NewSource(1))
 for i:=0;i<10000;i++ { vals=append(vals,r.Uint64()) }
 for i,x:=range vals {
  for _,y:=range []uint64{x,0,^uint64(0),vals[(i+1)%len(vals)]} {
   want:=uint(0); if uint(x)==uint(y) { want=1 }
   if EqTwoBorrow(uint(x),uint(y))!=want || EqXorBorrow(uint(x),uint(y))!=want { t.Fatalf("eq %x %x",x,y) }
   mask:=uint64(0); if x<y { mask=^mask }
   if NegBorrow(x,y)!=mask || NegBorrowSub(x,y)!=mask { t.Fatalf("mask %x %x",x,y) }
  }
 }
 // Includes every equality and ordering of a dense tiny domain.
 for x:=uint(0);x<256;x++ { for y:=uint(0);y<256;y++ {
  want:=uint(0);if x==y {want=1};if EqXorBorrow(x,y)!=want {t.Fatal(x,y)}
 } }
}

func TestAssignOverlapAndBounds(t *testing.T) {
 fns:=[]func([]uint,[]uint,uint){AssignMask,AssignSelect}
 for _,fn:=range fns { for _,on:=range []uint{0,1,2,3,^uint(0)} { for n:=0;n<=33;n++ {
  // Disjoint, exact alias, and forward/backward partial overlaps. Compare to
  // a sequential reference, not memmove semantics for overlapping operands.
  for _,offset:=range [][2]int{{0,40},{0,0},{0,1},{1,0}} {
   a:=make([]uint,80);for i:=range a {a[i]=^uint(i*7919)}
   want:=append([]uint(nil),a...)
   x,y:=offset[0],offset[1]
   for i:=0;i<n;i++ { if on&1!=0 {want[x+i]=want[y+i]} }
   fn(a[x:x+n],a[y:y+n],on)
   for i:=range a {if a[i]!=want[i] {t.Fatalf("assign on=%d n=%d offsets=%v i=%d",on,n,offset,i)}}
  }
 } }
  // Original helper allows reslicing y beyond its current length to capacity.
  x,y:=[]uint{9,8},[]uint{1,2};fn(x,y[:0],1);if x[0]!=1||x[1]!=2 {t.Fatal("capacity")}
  func(){
   x:=[]uint{7,8};defer func(){if recover()==nil {t.Error("missing panic")};if x[0]!=7||x[1]!=8 {t.Error("store before bounds panic")}}()
   fn(x,[]uint{1},0)
  }()
 }
}

func asBig(x []uint64) *big.Int {
 z:=new(big.Int)
 for i:=len(x)-1;i>=0;i-- {z.Lsh(z,64);z.Add(z,new(big.Int).SetUint64(x[i]))}
 return z
}

func TestCarry(t *testing.T) {
 r:=rand.New(rand.NewSource(2))
 for n:=0;n<=33;n++ { for rep:=0;rep<100;rep++ {
  x,y:=make([]uint64,n),make([]uint64,n)
  for i:=range x {x[i]=r.Uint64();y[i]=r.Uint64();if rep==0 {x[i]=0;y[i]=^uint64(0)}}
  want:=new(big.Int).Sub(asBig(x),asBig(y));borrow:=uint64(0);if want.Sign()<0 {borrow=1}
  modulus:=new(big.Int).Lsh(big.NewInt(1),uint(64*n));want.Mod(want,modulus)
  got:=append([]uint64(nil),x...)
  if b:=SubLoop(got,y);b!=borrow||asBig(got).Cmp(want)!=0 {t.Fatalf("sub n=%d",n)}
  if n==4 {a,b:=[4]uint64{},[4]uint64{};copy(a[:],x);copy(b[:],y);if c:=Sub4(&a,&b);c!=borrow||asBig(a[:]).Cmp(want)!=0 {t.Fatal("sub4")}}
  got=append([]uint64(nil),x...);if b:=SubLoop(got,got);b!=0||asBig(got).Sign()!=0 {t.Fatal("alias")}
 } }
 // Explicit wrap chain including every limb boundary.
 x:=[4]uint64{};y:=[4]uint64{1};if b:=Sub4(&x,&y);b!=1 {t.Fatal(b)}
 for _,v:=range x {if v!=^uint64(0) {t.Fatal(x)}}
}

func BenchmarkEq(b *testing.B) {
 for _,tc:=range []struct{name string;fn func(uint,uint)uint}{{"TwoBorrow",EqTwoBorrow},{"XorBorrow",EqXorBorrow}} {
  b.Run(tc.name,func(b *testing.B){var z uint;for i:=0;i<b.N;i++ {x:=uint(i);z+=tc.fn(x,x^uint(i&1))};sink=z})
 }
}
func BenchmarkAssign(b *testing.B) {
 for _,tc:=range []struct{name string;fn func([]uint,[]uint,uint)}{{"Mask",AssignMask},{"Select",AssignSelect}} {
  b.Run(tc.name,func(b *testing.B){x,y:=make([]uint,1024/bits.UintSize),make([]uint,1024/bits.UintSize);for i:=range y {y[i]=^uint(i)};b.ResetTimer();for i:=0;i<b.N;i++ {tc.fn(x,y,uint(i&1))};sink=x[0]})
 }
}
func BenchmarkNegBorrow(b *testing.B) {
 for _,tc:=range []struct{name string;fn func(uint64,uint64)uint64}{{"Neg",NegBorrow},{"Sub",NegBorrowSub}} {
  b.Run(tc.name,func(b *testing.B){var z uint64;for i:=0;i<b.N;i++ {z^=tc.fn(uint64(i),uint64(i)^1)};sink=uint(z)})
 }
}

func TestDotSchedule(t *testing.T) {
 r:=rand.New(rand.NewSource(3))
 pairs:=[5][6]int{{0,0,1,4,2,3},{0,1,2,4,3,3},{0,2,1,1,3,4},{0,3,1,2,4,4},{0,4,1,3,2,2}}
 mask:=new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1),128),big.NewInt(1))
 for rep:=0;rep<1000;rep++ {
  a:=[5]uint64{};for i:=range a {a[i]=r.Uint64();if rep==0 {a[i]=^uint64(0)}}
  sums:=[5]*big.Int{}
  for i,p:=range pairs {z:=new(big.Int);for j:=0;j<6;j+=2 {z.Add(z,new(big.Int).Mul(new(big.Int).SetUint64(a[p[j]]),new(big.Int).SetUint64(a[p[j+1]])))};sums[i]=z.And(z,mask)}
  want:=[5]uint64{};for i:=range want {want[i]=sums[i].Uint64()^new(big.Int).Rsh(new(big.Int).Set(sums[(i+4)%5]),64).Uint64()}
  if DotSchedule(a)!=want||DotBarrier(a)!=want {t.Fatal("dot",rep)}
 }
}
func BenchmarkDot(b *testing.B) {
 for _,tc:=range []struct{name string;fn func([5]uint64)[5]uint64}{{"Schedule",DotSchedule},{"Barrier",DotBarrier}} {
  b.Run(tc.name,func(b *testing.B){a:=[5]uint64{1,2,3,4,5};for i:=0;i<b.N;i++ {a=tc.fn(a)};sink=uint(a[0])})
 }
}

func TestShift51(t *testing.T) {
 r:=rand.New(rand.NewSource(4))
 for i:=0;i<10000;i++ {
  lo,hi:=r.Uint64(),r.Uint64()
  if i==0 {lo=^uint64(0);hi=^uint64(0)}
  z:=new(big.Int).Lsh(new(big.Int).SetUint64(hi),64)
  z.Or(z,new(big.Int).SetUint64(lo));z.Rsh(z,51)
  if Shift51(lo,hi)!=z.Uint64() {t.Fatal("shift",lo,hi)}
 }
}
