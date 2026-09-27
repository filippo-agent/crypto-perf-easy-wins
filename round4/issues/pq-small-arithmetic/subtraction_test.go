package pqhelpers

import "testing"

func TestSub16(t *testing.T) {
	for a := 0; a < 3329; a++ {
		for b := 0; b < 3329; b++ {
			want := uint16((a - b + 3329) % 3329)
			if Sub16Original(uint16(a), uint16(b)) != want || Sub16Direct(uint16(a), uint16(b)) != want || Sub16Guarded(uint16(a), uint16(b)) != want {
				t.Fatalf("a=%d b=%d", a, b)
			}
			masked := uint16(((a & 2047) - (b & 2047) + 3329) % 3329)
			if Sub16Masked(uint16(a), uint16(b)) != masked {
				t.Fatalf("masked a=%d b=%d", a, b)
			}
		}
	}
	if Sub16Original(65535, 0) == Sub16Direct(65535, 0) {
		t.Fatal("negative control: unrestricted inputs must differ")
	}
	if Sub16Guarded(65535, 0) != 0 {
		t.Fatal("guarded invalid input")
	}
}
