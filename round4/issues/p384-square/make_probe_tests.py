from pathlib import Path
root=Path(__file__).resolve().parent
s='''//go:build probes

package p384issue

import ("testing"; "math/big")

// Independent exact-integer Montgomery row recurrence, no bits arithmetic.
func prefixOracle(a,b [6]uint64,k int) *big.Int {
 p:=prime(); t:=new(big.Int); bv:=integer(b[:])
 mask:=new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1),64),big.NewInt(1))
 for i:=0;i<k;i++ {
  t.Add(t,new(big.Int).Mul(new(big.Int).SetUint64(a[i]),bv))
  m:=new(big.Int).And(new(big.Int).Mul(t,big.NewInt(0x100000001)),mask)
  t.Add(t,new(big.Int).Mul(m,p)).Rsh(t,64)
 }
 return t
}
func TestPrefixes(t *testing.T) {
 for i,x:=range inputs() {
'''
for k in range(1,7):
 s+=f'''  {{ var sq,mul [7]uint64
   Prefix{k}Square(&sq,&x); Prefix{k}Mul(&mul,&x,&x)
   want:=prefixOracle(x,x,{k})
   if sq!=mul || integer(sq[:]).Cmp(want)!=0 {{ t.Fatalf("prefix {k} input %d",i) }}
  }}
'''
s+=' }\n}\nvar prefixSink [7]uint64\nfunc BenchmarkPrefixes(b *testing.B) {\n'
for k in range(1,7):
 for op,args in [('Square','&out,&x'),('Mul','&out,&x,&x')]:
  s+=f' b.Run("{k}/{op}",func(b *testing.B){{ x:=benchInput(); var out [7]uint64; for b.Loop(){{ Prefix{k}{op}({args}) }}; prefixSink=out }})\n'
s+='}\n'
(root/'prefix_test.go').write_text(s)
