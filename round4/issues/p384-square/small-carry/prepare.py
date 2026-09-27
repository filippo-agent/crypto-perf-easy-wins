#!/usr/bin/env python3
"""Writes candidate source only; no compiler, test, or benchmark invocation."""
from pathlib import Path
root = Path(__file__).resolve().parent
variants = [
    ('IndependentAB', 'AB', 'ca + cb', False),
    ('IndependentBA', 'AB', 'cb + ca', False),
    ('ReorderedAB', 'BA', 'ca + cb', False),
    ('ReorderedBA', 'BA', 'cb + ca', False),
    ('DependentAB', 'AB', 'ca + cb', True),
    ('DependentBA', 'AB', 'cb + ca', True),
]
s = '''// Prepared candidate probes. NOT compiled or validated as a reproducer.
// Independent*: two separate seven-limb Add64 chains, preserving all sum limbs.
// Reordered*: same independent calculation, with the second chain written first.
// Dependent*: separate controls in which chain B consumes chain A's top sum limb.
package carrysumprobe

import "math/bits"

'''
for name, order, expr, coupled in variants:
    s += '//go:noinline\nfunc '+name+'(out *[15]uint64, a, b *[14]uint64) {\n'
    for chain in order:
        prefix, start, carry = ('x', 0, 'ca') if chain=='A' else ('y', 7, 'cb')
        for i in range(7):
            rhs = 'x6' if coupled and chain=='B' and i==0 else f'b[{start+i}]'
            cin = '0' if i==0 else carry
            s += f'\t{prefix}{i}, {carry} := bits.Add64(a[{start+i}], {rhs}, {cin})\n'
    elems=', '.join([f'x{i}' for i in range(7)]+[f'y{i}' for i in range(7)]+[expr])
    s += '\t*out = [15]uint64{'+elems+'}\n}\n\n'
(root/'carry.go').write_text(s)
# Direct benchmark calls avoid dispatch overhead obscuring small kernels.
s='''package carrysumprobe

import "testing"

var sink [15]uint64

func benchmarkInputs() (a, b [14]uint64) {
	for i := range a {
		a[i] = ^uint64(0) - uint64(i*17)
		b[i] = uint64(0x8a5bd9386) + uint64(i*13)
	}
	return
}

func BenchmarkCarry(b *testing.B) {
'''
for name,*_ in variants:
    s+=f'''\tb.Run("{name}", func(b *testing.B) {{
		a, c := benchmarkInputs()
		var out [15]uint64
		for b.Loop() {{
			{name}(&out, &a, &c)
		}}
		sink = out
	}})
'''
s+='}\n'
(root/'bench_test.go').write_text(s)
