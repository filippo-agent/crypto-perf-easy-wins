package p384issue

import (
	"fmt"
	"math/big"
	"math/rand"
	"testing"
)

func prime() *big.Int {
	p := new(big.Int).Lsh(big.NewInt(1), 384)
	p.Sub(p, new(big.Int).Lsh(big.NewInt(1), 128))
	p.Sub(p, new(big.Int).Lsh(big.NewInt(1), 96))
	p.Add(p, new(big.Int).Lsh(big.NewInt(1), 32))
	return p.Sub(p, big.NewInt(1))
}
func integer(x []uint64) *big.Int {
	z := new(big.Int)
	for i := len(x) - 1; i >= 0; i-- {
		z.Lsh(z, 64).Add(z, new(big.Int).SetUint64(x[i]))
	}
	return z
}
func limbs(z *big.Int) (x [6]uint64) {
	z = new(big.Int).Set(z)
	for i := range x {
		x[i] = z.Uint64()
		z.Rsh(z, 64)
	}
	return
}
func inputs() [][6]uint64 {
	p := prime()
	values := [][6]uint64{{}, {1}, {2}, limbs(new(big.Int).Sub(p, big.NewInt(1))), limbs(new(big.Int).Sub(p, big.NewInt(2)))}
	for i := uint(0); i < 384; i++ {
		x := new(big.Int).Lsh(big.NewInt(1), i)
		values = append(values, limbs(x), limbs(new(big.Int).Sub(x, big.NewInt(1))))
	}
	rng := rand.New(rand.NewSource(384))
	for i := 0; i < 256; i++ {
		var x [6]uint64
		for j := range x {
			x[j] = rng.Uint64()
		}
		values = append(values, limbs(new(big.Int).Mod(integer(x[:]), p)))
	}
	return values
}
func oracle(a, b [6]uint64) [6]uint64 {
	p := prime()
	rinv := new(big.Int).ModInverse(new(big.Int).Lsh(big.NewInt(1), 384), p)
	z := new(big.Int).Mul(integer(a[:]), integer(b[:]))
	z.Mul(z, rinv).Mod(z, p)
	return limbs(z)
}

var squares = map[string]func(*[6]uint64, *[6]uint64){"compact": Square}
var multiplies = map[string]func(*[6]uint64, *[6]uint64, *[6]uint64){"compact": Mul}

func TestFull(t *testing.T) {
	all := inputs()
	for i, x := range all {
		want := oracle(x, x)
		for name, sq := range squares {
			input := x
			var out [6]uint64
			sq(&out, &input)
			if out != want || input != x {
				t.Fatalf("%s square %d", name, i)
			}
			sq(&input, &input)
			if input != want {
				t.Fatalf("%s square alias %d", name, i)
			}
		}
		for name, mul := range multiplies {
			input := x
			var out [6]uint64
			mul(&out, &input, &input)
			if out != want || input != x {
				t.Fatalf("%s multiply square %d", name, i)
			}
			mul(&input, &input, &input)
			if input != want {
				t.Fatalf("%s all alias %d", name, i)
			}
			y := all[(i+37)%len(all)]
			wantxy := oracle(x, y)
			a, b := x, y
			mul(&out, &a, &b)
			if out != wantxy || a != x || b != y {
				t.Fatalf("%s distinct %d", name, i)
			}
			mul(&a, &a, &b)
			if a != wantxy || b != y {
				t.Fatalf("%s first alias %d", name, i)
			}
			a, b = x, y
			mul(&b, &a, &b)
			if b != wantxy || a != x {
				t.Fatalf("%s second alias %d", name, i)
			}
		}
	}
}
func FuzzFull(f *testing.F) {
	f.Add(uint64(1), uint64(2), uint64(3), uint64(4), uint64(5), uint64(6))
	f.Fuzz(func(t *testing.T, a, b, c, d, e, g uint64) {
		x := [6]uint64{a, b, c, d, e, g}
		x = limbs(new(big.Int).Mod(integer(x[:]), prime()))
		want := oracle(x, x)
		var s, m [6]uint64
		Square(&s, &x)
		Mul(&m, &x, &x)
		if s != want || m != want {
			t.Fatal(fmt.Sprintf("x=%x", x))
		}
	})
}

var sink [6]uint64

func benchInput() [6]uint64 {
	return [6]uint64{0x9b13ac892, 0x719ba61, 0x45fdb2, 0x189bbe93, 0x71609c, 0x58a2}
}

// Direct calls, identical in-place dependency chains, no function-value dispatch.
func BenchmarkFull(b *testing.B) {
	b.Run("Square", func(b *testing.B) {
		x := benchInput()
		for b.Loop() {
			Square(&x, &x)
		}
		sink = x
	})
	b.Run("Mul", func(b *testing.B) {
		x := benchInput()
		for b.Loop() {
			Mul(&x, &x, &x)
		}
		sink = x
	})
}

// Separate latency-chain from repeated independent-input measurements.
func BenchmarkIndependent(b *testing.B) {
	b.Run("Square", func(b *testing.B) {
		x := benchInput()
		var out [6]uint64
		for b.Loop() {
			Square(&out, &x)
		}
		sink = out
	})
	b.Run("Mul", func(b *testing.B) {
		x := benchInput()
		var out [6]uint64
		for b.Loop() {
			Mul(&out, &x, &x)
		}
		sink = out
	})
}
