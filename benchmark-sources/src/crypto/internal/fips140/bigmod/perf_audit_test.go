// Copyright 2026 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package bigmod

import (
	"bytes"
	"fmt"
	"math/big"
	"math/rand"
	"testing"
)

// Candidate only: no production callers. Uses exactly the existing multiply
// row and reduction primitives, but avoids reducing known-zero high limbs.
//
//go:norace
func auditMulShort(x *Nat, y uint, m *Modulus) *Nat {
	n := len(m.nat.limbs)
	t := NewNat().reset(n + 1)
	t.limbs[n] = addMulVVW(t.limbs[:n], x.limbs[:n], y)
	return x.Mod(t, m)
}

func TestAuditMulShort(t *testing.T) {
	r := rand.New(rand.NewSource(42))
	for _, bitSize := range []int{2, 31, 32, 63, 64, 65, 127, 1024, 1536, 2048, 2049} {
		for _, odd := range []bool{false, true} {
			mb := new(big.Int).Lsh(big.NewInt(1), uint(bitSize))
			mb.Sub(mb, big.NewInt(2))
			if odd {
				mb.Add(mb, big.NewInt(1))
			}
			m, err := NewModulus(mb.Bytes())
			if err != nil {
				t.Fatal(err)
			}
			for i := 0; i < 10; i++ {
				xb := new(big.Int).Rand(r, mb)
				if i == 0 {
					xb.SetUint64(0)
				}
				if i == 1 {
					xb.Sub(mb, big.NewInt(1))
				}
				for _, y := range []uint{0, 1, 3, 65537, ^uint(0)} {
					x, err := NewNat().SetBytes(xb.Bytes(), m)
					if err != nil {
						t.Fatal(err)
					}
					var got *big.Int
					if short, ok := any(x).(interface {
						MulShort(uint, *Modulus) *Nat
					}); ok {
						got = short.MulShort(y, m).asBig()
					} else {
						got = auditMulShort(x, y, m).asBig()
					}
					want := new(big.Int).Mul(xb, new(big.Int).SetUint64(uint64(y)))
					want.Mod(want, mb)
					if got.Cmp(want) != 0 {
						t.Fatalf("bits=%d odd=%v x=%x y=%x got=%x want=%x", bitSize, odd, xb, y, got, want)
					}
				}
			}
		}
	}
}

func BenchmarkAuditEvenMulPublicExponent(b *testing.B) {
	for _, size := range []int{1024, 1536, 2048} {
		mb := bytes.Repeat([]byte{0xff}, size/8)
		mb[len(mb)-1] = 0xfe
		m, err := NewModulus(mb)
		if err != nil {
			b.Fatal(err)
		}
		dp, err := NewNat().SetBytes(bytes.Repeat([]byte{0x5a}, size/8), m)
		if err != nil {
			b.Fatal(err)
		}
		e := NewNat().SetUint(65537).ExpandFor(m)
		b.Run(fmt.Sprint(size)+"/FullProduct", func(b *testing.B) {
			out := NewNat()
			b.ReportAllocs()
			for b.Loop() {
				out.set(dp).Mul(e, m)
			}
		})
		b.Run(fmt.Sprint(size)+"/ShortProduct", func(b *testing.B) {
			out := NewNat()
			b.ReportAllocs()
			for b.Loop() {
				auditMulShort(out.set(dp), 65537, m)
			}
		})
	}
}
