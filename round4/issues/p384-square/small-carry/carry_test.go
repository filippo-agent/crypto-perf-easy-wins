package carrysumprobe

import (
	"math/big"
	"math/rand"
	"testing"
)

// Independent integer arithmetic; no bits.Add64 and no comparison-only oracle.
func integer(words []uint64) *big.Int {
	z := new(big.Int)
	for i := len(words) - 1; i >= 0; i-- {
		z.Lsh(z, 64).Add(z, new(big.Int).SetUint64(words[i]))
	}
	return z
}

func oracle(a, b [14]uint64, dependent bool) (out [15]uint64) {
	x := new(big.Int).Add(integer(a[:7]), integer(b[:7]))
	for i := 0; i < 7; i++ {
		out[i] = x.Uint64()
		x.Rsh(x, 64)
	}
	carryA := x.Uint64()
	if dependent {
		b[7] = out[6]
	}
	y := new(big.Int).Add(integer(a[7:]), integer(b[7:]))
	for i := 7; i < 14; i++ {
		out[i] = y.Uint64()
		y.Rsh(y, 64)
	}
	out[14] = carryA + y.Uint64()
	return
}

func TestCarry(t *testing.T) {
	variants := []struct {
		name      string
		fn        func(*[15]uint64, *[14]uint64, *[14]uint64)
		dependent bool
	}{
		{"IndependentAB", IndependentAB, false},
		{"IndependentBA", IndependentBA, false},
		{"ReorderedAB", ReorderedAB, false},
		{"ReorderedBA", ReorderedBA, false},
		{"DependentAB", DependentAB, true},
		{"DependentBA", DependentBA, true},
	}
	var cases [][2][14]uint64
	// Exercise all four combinations of independent chain carry bits.
	for mask := 0; mask < 4; mask++ {
		var a, b [14]uint64
		for chain := 0; chain < 2; chain++ {
			if mask&(1<<chain) != 0 {
				for i := chain * 7; i < (chain+1)*7; i++ {
					a[i] = ^uint64(0)
				}
				b[chain*7] = 1
			}
		}
		cases = append(cases, [2][14]uint64{a, b})
	}
	// Every carry-chain propagation length and limb boundary, then random words.
	for n := 0; n < 14; n++ {
		var a, b [14]uint64
		for i := 0; i <= n; i++ {
			a[i] = ^uint64(0)
		}
		b[0], b[7] = 1, 1
		cases = append(cases, [2][14]uint64{a, b})
	}
	rng := rand.New(rand.NewSource(20260927))
	for n := 0; n < 128; n++ {
		var a, b [14]uint64
		for i := range a {
			a[i], b[i] = rng.Uint64(), rng.Uint64()
		}
		cases = append(cases, [2][14]uint64{a, b})
	}
	for _, v := range variants {
		for i, pair := range cases {
			a, b := pair[0], pair[1]
			want := oracle(a, b, v.dependent)
			var out [15]uint64
			v.fn(&out, &a, &b)
			if out != want || a != pair[0] || b != pair[1] {
				t.Fatalf("%s case %d: distinct output/input", v.name, i)
			}
			// Conversion to an array pointer retains the same backing array.
			// All source reads precede the one aggregate output assignment.
			var backing [15]uint64
			copy(backing[:14], a[:])
			v.fn(&backing, (*[14]uint64)(backing[:14]), &b)
			if backing != want {
				t.Fatalf("%s case %d: output aliases a", v.name, i)
			}
			copy(backing[:14], b[:])
			v.fn(&backing, &a, (*[14]uint64)(backing[:14]))
			if backing != want {
				t.Fatalf("%s case %d: output aliases b", v.name, i)
			}
			copy(backing[:14], a[:])
			v.fn(&backing, (*[14]uint64)(backing[:14]), (*[14]uint64)(backing[:14]))
			if backing != oracle(a, a, v.dependent) {
				t.Fatalf("%s case %d: all pointers alias", v.name, i)
			}
		}
	}
}
