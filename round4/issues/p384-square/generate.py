#!/usr/bin/env python3
"""Mechanical extraction, no compiler/toolchain invocation. Run from this directory."""
from pathlib import Path
import re, sys
root = Path(__file__).resolve().parent
src = Path(sys.argv[1] if len(sys.argv)>1 else '/home/exedev/go-crypto/src/crypto/internal/fips140/nistec/fiat/p384_fiat64.go').read_text()
def function(name):
    start=src.index('func '+name+'(')
    return src[start:src.index('\n}', start)+2]
mul, square = function('p384Mul'), function('p384Square')
assert mul[mul.index('{'):].replace('arg2','arg1') == square[square.index('{'):]
header='// Extracted from Go p384_fiat64.go (Fiat Cryptography); see LICENSE and README.md.\npackage p384issue\n\nimport "math/bits"\n\n'
common='type p384Uint1 uint64\ntype p384MontgomeryDomainFieldElement = [6]uint64\n\n'+function('p384CmovznzU64')+'\n\n'
(root/'common.go').write_text('package p384issue\n\n'+common)
(root/'raw.go').write_text('//go:build original\n\n'+header+'//go:noinline\n'+mul.replace('func p384Mul(', 'func RawMul(')+'\n\n//go:noinline\n'+square.replace('func p384Square(', 'func RawSquare(')+'\n')
def compact(body):
    # Only remove standalone uint64 declarations directly preceding the single
    # assignment which defines those same variables, introducing := instead.
    pattern=r'((?:\tvar x\d+ uint64\n)+)(\t([x_0-9, ]+) = [^\n]+)'
    def replace(m):
        declared=set(re.findall(r'var (x\d+)',m[1]))
        assigned=set(re.findall(r'x\d+',m[3]))
        assert declared == assigned, (declared,assigned)
        return m[2].replace(' = ', ' := ', 1)
    return re.sub(pattern,replace,body)
(root/'compact.go').write_text(header+'//go:noinline\n'+compact(mul).replace('func p384Mul(', 'func Mul(')+'\n\n//go:noinline\n'+compact(square).replace('func p384Square(', 'func Square(')+'\n')
# Keep each Montgomery row intact; these are independently checked prefix
# candidates, NOT full field multiplication/squaring or measured optimizations.
ends=[68,145,222,299,376,453]
outputs=[[57,59,61,63,65,67,68]]+[[start+2*i for i in range(6)]+[end] for start,end in [(133,145),(210,222),(287,299),(364,376),(441,453)]]
probes=[]
for k,(end,outs) in enumerate(zip(ends,outputs),1):
    body=compact(mul).split('{',1)[1].rsplit('}',1)[0]
    body=body[:re.search(r'\n\t(?:x\d+, )?x'+str(end)+r' := [^\n]+',body).end()]
    # Only the initial limb loads can be unused by a prefix.
    for i in range(1,6):
        if len(re.findall(r'\bx'+str(i)+r'\b',body))==1:
            body=re.sub(r'\n\tx'+str(i)+r' := arg1\[\d\]', '',body)
    tail='\n\t*out1 = [7]uint64{'+', '.join('x'+str(i) for i in outs)+'}\n}'
    for name,args,b in [('Mul','arg1, arg2 *[6]uint64',body),('Square','arg1 *[6]uint64',body.replace('arg2','arg1'))]:
        probes.append('//go:noinline\nfunc Prefix'+str(k)+name+'(out1 *[7]uint64, '+args+') {'+b+tail)
(root/'prefix.go').write_text('//go:build probes\n\n'+header+'\n\n'.join(probes)+'\n')
print('Exact original Mul(arg2 -> arg1) body equals original Square body.')
print('Compact full body lines:', len(compact(mul).splitlines()))
