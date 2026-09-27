#!/usr/bin/env python3
"""Parse existing evidence only; does not build, execute test binaries or benchmark."""
from pathlib import Path
from collections import Counter
import re, statistics
root=Path(__file__).resolve().parent/'evidence'
for directory in sorted(p for p in root.iterdir() if p.is_dir()):
 print('\n##', directory.name)
 bench=directory/'bench.txt'
 if bench.exists():
  results={}
  for line in bench.read_text().splitlines():
   m=re.match(r'(Benchmark\S+)\s+\d+\s+([0-9.]+) ns/op',line)
   if m: results.setdefault(m[1],[]).append(float(m[2]))
  for name,values in results.items(): print(name,'median',statistics.median(values),'ns/op; samples',values)
 for path in sorted(directory.glob('*.dump')):
  ops=Counter(re.findall(r'^\s+(?:\([^\n]*?\) )?v\d+\s+=\s+(\w+)',path.read_text(),re.M))
  selected={k:v for k,v in ops.items() if any(t in k for t in ('Mul','MUL','ADC','ADDQcarry','LoadReg','StoreReg','Copy','SETB'))}
  print(path.name, 'values',sum(ops.values()),selected)
 for path in sorted(directory.glob('*.asm')):
  # Go objdump output: source position, PC, bytes, mnemonic, operands.
  ins=[]
  for line in path.read_text().splitlines():
   m=re.match(r'\s*\S+\s+0x[0-9a-f]+\s+[0-9a-f]+\s+(\S+)\s*(.*)',line)
   if m: ins.append(m.groups())
  ops=Counter(op for op,args in ins)
  stack=[(op,args) for op,args in ins if '(SP)' in args]
  print(path.name, 'instructions',len(ins),'MULQ',ops['MULQ'],'MULXQ',ops['MULXQ'],'ADCQ',ops['ADCQ'],'SP operands',len(stack))
