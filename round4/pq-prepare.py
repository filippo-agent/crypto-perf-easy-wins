from pathlib import Path
import subprocess,difflib
root=Path('/home/exedev/crypto-audit/round4')
def patch(pkg,name,changes):
 p='src/crypto/internal/fips140/'+pkg+'/field.go'
 old=subprocess.check_output(['git','-C','/home/exedev/go-pq-stack','show','db19b48d:'+p],text=True)
 new=old
 for a,b in changes:
  assert new.count(a)==1,(name,a,new.count(a))
  new=new.replace(a,b)
 (root/'patches'/name).write_text(''.join(difflib.unified_diff(old.splitlines(True),new.splitlines(True),fromfile='a/'+p,tofile='b/'+p)))
patch('mldsa','mldsa-decompose-group-constants.patch',[
 ('r0 = int32(x) - int32(r1)*2*(q-1)/32','// Group the constant factor to avoid a multiply followed by a division.\n\t// r1 <= 15, so the original int32 product did not overflow.\n\tr0 = int32(x) - int32(r1)*(2*(q-1)/32)'),
 ('r0 = int32(x) - int32(r1)*2*(q-1)/88','// Group the constant factor to avoid a multiply followed by a division.\n\t// r1 <= 43, so the original int32 product did not overflow.\n\tr0 = int32(x) - int32(r1)*(2*(q-1)/88)')])
patch('mlkem','mlkem-cbd-widen-byte.patch',[
 ('b := B[i/2]','// Keep bit sums at the field width, avoiding intermediate byte truncations.\n\t\tb := uint16(B[i/2])')])
patch('mldsa','mldsa-from-montgomery-no-correction.patch',[
 ('return uint32(fieldMontgomeryReduce(uint64(a)))','// a < q and t <= R-1, so a+t*q <= q-1+(R-1)*q = q*R-1.\n\t// The partial reduction is therefore already strictly less than q.\n\treturn uint32(fieldMontgomeryPartialReduce(uint64(a)))')])
for pkg,oldbody in [('mlkem','x := uint16(a - b + q)\n\treturn fieldReduceOnce(x)'),('mldsa','x := fieldElementPartiallyReduced(a - b + q)\n\treturn fieldReduceOnce(x)')]:
 patch(pkg,pkg+'-sub-direct-compare.patch',[(oldbody,'// Compare canonical inputs, not the wrapped, q-offset difference.\n\t// a,b < q, so d is in [-(q-1), q-1] and fits int on every target.\n\td := int(a) - int(b)\n\tv := constanttime.LessOrEq(int(b), int(a))\n\treturn fieldElement(constanttime.Select(v, d, d+q))')])
