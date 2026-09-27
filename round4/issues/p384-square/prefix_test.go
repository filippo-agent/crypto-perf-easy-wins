//go:build probes

package p384issue

import (
	"math/big"
	"testing"
)

// Independent exact-integer Montgomery row recurrence, no bits arithmetic.
func prefixOracle(a, b [6]uint64, k int) *big.Int {
	p := prime()
	t := new(big.Int)
	bv := integer(b[:])
	mask := new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1), 64), big.NewInt(1))
	for i := 0; i < k; i++ {
		t.Add(t, new(big.Int).Mul(new(big.Int).SetUint64(a[i]), bv))
		m := new(big.Int).And(new(big.Int).Mul(t, big.NewInt(0x100000001)), mask)
		t.Add(t, new(big.Int).Mul(m, p)).Rsh(t, 64)
	}
	return t
}
func TestPrefixes(t *testing.T) {
	for i, x := range inputs() {
		{
			var sq, mul [7]uint64
			Prefix1Square(&sq, &x)
			Prefix1Mul(&mul, &x, &x)
			want := prefixOracle(x, x, 1)
			if sq != mul || integer(sq[:]).Cmp(want) != 0 {
				t.Fatalf("prefix 1 input %d", i)
			}
		}
		{
			var sq, mul [7]uint64
			Prefix2Square(&sq, &x)
			Prefix2Mul(&mul, &x, &x)
			want := prefixOracle(x, x, 2)
			if sq != mul || integer(sq[:]).Cmp(want) != 0 {
				t.Fatalf("prefix 2 input %d", i)
			}
		}
		{
			var sq, mul [7]uint64
			Prefix3Square(&sq, &x)
			Prefix3Mul(&mul, &x, &x)
			want := prefixOracle(x, x, 3)
			if sq != mul || integer(sq[:]).Cmp(want) != 0 {
				t.Fatalf("prefix 3 input %d", i)
			}
		}
		{
			var sq, mul [7]uint64
			Prefix4Square(&sq, &x)
			Prefix4Mul(&mul, &x, &x)
			want := prefixOracle(x, x, 4)
			if sq != mul || integer(sq[:]).Cmp(want) != 0 {
				t.Fatalf("prefix 4 input %d", i)
			}
		}
		{
			var sq, mul [7]uint64
			Prefix5Square(&sq, &x)
			Prefix5Mul(&mul, &x, &x)
			want := prefixOracle(x, x, 5)
			if sq != mul || integer(sq[:]).Cmp(want) != 0 {
				t.Fatalf("prefix 5 input %d", i)
			}
		}
		{
			var sq, mul [7]uint64
			Prefix6Square(&sq, &x)
			Prefix6Mul(&mul, &x, &x)
			want := prefixOracle(x, x, 6)
			if sq != mul || integer(sq[:]).Cmp(want) != 0 {
				t.Fatalf("prefix 6 input %d", i)
			}
		}
	}
}

var prefixSink [7]uint64

func BenchmarkPrefixes(b *testing.B) {
	b.Run("1/Square", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix1Square(&out, &x)
		}
		prefixSink = out
	})
	b.Run("1/Mul", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix1Mul(&out, &x, &x)
		}
		prefixSink = out
	})
	b.Run("2/Square", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix2Square(&out, &x)
		}
		prefixSink = out
	})
	b.Run("2/Mul", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix2Mul(&out, &x, &x)
		}
		prefixSink = out
	})
	b.Run("3/Square", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix3Square(&out, &x)
		}
		prefixSink = out
	})
	b.Run("3/Mul", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix3Mul(&out, &x, &x)
		}
		prefixSink = out
	})
	b.Run("4/Square", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix4Square(&out, &x)
		}
		prefixSink = out
	})
	b.Run("4/Mul", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix4Mul(&out, &x, &x)
		}
		prefixSink = out
	})
	b.Run("5/Square", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix5Square(&out, &x)
		}
		prefixSink = out
	})
	b.Run("5/Mul", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix5Mul(&out, &x, &x)
		}
		prefixSink = out
	})
	b.Run("6/Square", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix6Square(&out, &x)
		}
		prefixSink = out
	})
	b.Run("6/Mul", func(b *testing.B) {
		x := benchInput()
		var out [7]uint64
		for b.Loop() {
			Prefix6Mul(&out, &x, &x)
		}
		prefixSink = out
	})
}
