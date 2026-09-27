package pqhelpers

import "testing"

func TestScale(t *testing.T) {
	for i := 0; i < 256; i++ {
		r := byte(i)
		if i <= 43 && Scale88Original(r) != Scale88Grouped(r) {
			t.Fatalf("valid production scale88 %d", i)
		}
		if Scale88Masked(r) != Scale88MaskedGrouped(r) || Scale32Masked(r) != Scale32MaskedGrouped(r) {
			t.Fatalf("masked scale %d", i)
		}
		if Scale88Wide(r) != int64(Scale88Grouped(r)) {
			t.Fatalf("wide scale %d", i)
		}
	}
	if Scale88Original(255) == Scale88Grouped(255) {
		t.Fatal("negative control: unrestricted int32 factorization must differ")
	}
}

func TestBits(t *testing.T) {
	for i := 0; i < 256; i++ {
		var want [4]uint16
		for j := 0; j < 8; j++ {
			want[j/2] += uint16(i >> j & 1)
		}
		a, b, c, d := BitsOriginal(byte(i))
		if [4]uint16{a, b, c, d} != want {
			t.Fatalf("original bits %d", i)
		}
		a, b, c, d = BitsWide(byte(i))
		if [4]uint16{a, b, c, d} != want {
			t.Fatalf("wide bits %d", i)
		}
		if BitPairOriginal(byte(i)) != want[0] || BitPairWide(byte(i)) != want[0] {
			t.Fatalf("pair %d", i)
		}
	}
}

var sink uint16

func BenchmarkBitsOriginal(b *testing.B) {
	var s uint16
	for i := 0; i < b.N; i++ {
		a, c, d, e := BitsOriginal(byte(i))
		s += a + c + d + e
	}
	sink = s
}

func BenchmarkBitsWide(b *testing.B) {
	var s uint16
	for i := 0; i < b.N; i++ {
		a, c, d, e := BitsWide(byte(i))
		s += a + c + d + e
	}
	sink = s
}
