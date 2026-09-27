package mlkem

import (
	"crypto/internal/constanttime"
	"testing"
)

func TestRound4SubDirect(t *testing.T) {
	for a := 0; a < q; a++ {
		for b := 0; b < q; b++ {
			d := a - b
			candidate := fieldElement(constanttime.Select(constanttime.LessOrEq(b, a), d, d+q))
			old := fieldReduceOnce(uint16(fieldElement(a) - fieldElement(b) + q))
			want := fieldElement((a - b + q) % q)
			got := fieldSub(fieldElement(a), fieldElement(b))
			if candidate != want || old != want || got != want {
				t.Fatalf("a=%d b=%d candidate=%d old=%d got=%d want=%d", a, b, candidate, old, got, want)
			}
		}
	}
}
