from pathlib import Path
import difflib
root=Path('/home/exedev/go-crypto')
out=Path('/home/exedev/crypto-audit/round4/patches')
for variant in ('named-return','outparam','array-append'):
    patches=[]
    for family,size in [('sha256','size'),('sha512','size512')]:
        path=f'src/crypto/internal/fips140/{family}/{family}.go'
        before=(root/path).read_text()
        after=before
        if variant=='named-return':
            after=after.replace(f'func (d *Digest) checkSum() [{size}]byte {{',f'func (d *Digest) checkSum() (digest [{size}]byte) {{')
            after=after.replace(f'\n\tvar digest [{size}]byte\n','\n')
            after=after.replace('\n\treturn digest\n','\n\treturn\n')
        elif variant=='outparam':
            after=after.replace('hash := d0.checkSum()',f'var hash [{size}]byte\n\td0.checkSum(&hash)')
            after=after.replace(f'func (d *Digest) checkSum() [{size}]byte {{',f'func (d *Digest) checkSum(digest *[{size}]byte) {{')
            after=after.replace(f'\n\tvar digest [{size}]byte\n','\n')
            after=after.replace('\n\treturn digest\n','\n')
        elif variant=='array-append':
            if family!='sha256': continue
            after=after.replace('return append(in, hash[:size224]...)','''n := len(in)
		in = append(in, make([]byte, size224)...)
		*(*[size224]byte)(in[n:]) = [size224]byte(hash[:size224])
		return in''')
            after=after.replace('return append(in, hash[:]...)','''n := len(in)
	in = append(in, make([]byte, size)...)
	*(*[size]byte)(in[n:]) = hash
	return in''')
        patches.extend(difflib.unified_diff(before.splitlines(True),after.splitlines(True),fromfile='a/'+path,tofile='b/'+path))
    (out/f'hash-sum-{variant}.patch').write_text(''.join(patches))
