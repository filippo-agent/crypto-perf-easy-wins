#!/usr/bin/env python3
"""Static ELF disassembly comparison only. Never runs a target binary/compiler."""
from pathlib import Path
import re, subprocess, hashlib
root=Path(__file__).resolve().parent
audit=root.parents[3]
repro=root.parent/'v3/repro.test'
def extract(binary, symbol, name):
    text=subprocess.check_output(['objdump','-d','--disassemble='+symbol,str(binary)],text=True)
    (root/(name+'.asm')).write_text(text)
    code=bytearray(); base=None; end=None; calls=[]
    for line in text.splitlines():
        m=re.match(r'\s*([0-9a-f]+):\s+((?:[0-9a-f]{2}(?:\s+|$))+)(.*)',line)
        if not m: continue
        address=int(m[1],16)
        if base is None: base=address
        assert address-base==len(code), (name,line,len(code))
        data=bytes.fromhex(m[2]); code.extend(data)
        instruction=m[3].strip()
        if instruction.startswith('call'):
            assert data[0]==0xe8 and len(data)==5
            assert 'runtime.morestack_noctxt.abi0' in instruction
            calls.append(address-base)
        if instruction=='ret' and end is None: end=len(code)
    assert base is not None and end is not None, (binary,symbol)
    normalized=code.copy()
    for pos in calls: normalized[pos+1:pos+5]=b'\0'*4
    return code[:end], normalized, base, calls
with (root/'comparison.txt').open('w') as out:
    for op in ('Mul','Square'):
        core, allcode, base, calls=extract(repro,'example.com/p384issue.Raw'+op,'repro-Raw'+op)
        out.write(f'{op} reference: address={base:#x}; bytes through RET={len(core)}; full symbol bytes={len(allcode)}; morestack CALL offsets={calls}; core SHA256={hashlib.sha256(core).hexdigest()}\n')
        targets=[(repro,'example.com/p384issue.'+op,'repro-'+op)]
        for pkg in ('ecdsa','ecdh'):
            for variant in ('mul','square'):
                if op=='Square' and variant=='mul': continue
                targets.append((audit/'bin'/f'{pkg}-v3-{variant}.test','crypto/internal/fips140/nistec/fiat.p384'+op,f'{pkg}-{variant}-{op}'))
        for binary,symbol,name in targets:
            c,n,b,cs=extract(binary,symbol,name)
            out.write(f'  {name}: address={b:#x}; CORE BYTE IDENTICAL={c==core}; FULL BYTE IDENTICAL except morestack rel32={n==allcode}; bytes={len(n)}; CALL offsets={cs}\n')
