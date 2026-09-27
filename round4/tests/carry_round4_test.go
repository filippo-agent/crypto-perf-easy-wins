// Copy only with parent permission to crypto/internal/fips140/bigmod.
package bigmod

import (
 "math/bits"
 "math/rand"
 "testing"
)

func TestRound4CarrySelect(t *testing.T) {
 r:=rand.New(rand.NewSource(1))
 vals:=[]uint{0,1,15,16,1<<(bits.UintSize-1),^uint(0),^uint(0)-1}
 for i:=0;i<10000;i++ {vals=append(vals,uint(r.Uint64()))}
 for i,x:=range vals {for _,y:=range []uint{x,0,^uint(0),vals[(i+1)%len(vals)]} {
  want:=no;if x==y {want=yes};if ctEq(x,y)!=want {t.Fatalf("ctEq(%x,%x)",x,y)}
 }}
 for n:=0;n<=65;n++ {for _,on:=range []choice{no,yes} {for _,off:=range [][2]int{{0,67},{0,0},{0,1},{1,0}} {
  a:=make([]uint,140);for i:=range a {a[i]=uint(r.Uint64())}
  want:=append([]uint(nil),a...);x,y:=off[0],off[1]
  for i:=0;i<n;i++ {if on==yes {want[x+i]=want[y+i]}}
  dst,src:=&Nat{a[x:x+n]},&Nat{a[y:y+n]};if dst.assign(on,src)!=dst {t.Fatal("receiver")}
  for i:=range a {if a[i]!=want[i] {t.Fatalf("assign n=%d on=%d offsets=%v",n,on,off)}}
 }}}
}
