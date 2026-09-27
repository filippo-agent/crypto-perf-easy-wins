package mldsa

import (
	"crypto/internal/constanttime"
	"testing"
)

func TestRound4SubDirect(t *testing.T) {
	check := func(a, b uint32) {
		d := int(a) - int(b)
		candidate := fieldElement(constanttime.Select(constanttime.LessOrEq(int(b), int(a)), d, d+q))
		old := fieldReduceOnce(fieldElementPartiallyReduced(a - b + q))
		want := fieldElement((int64(a) - int64(b) + q) % q)
		got := fieldSub(fieldElement(a), fieldElement(b))
		if candidate != want || old != want || got != want {
			t.Fatalf("a=%d b=%d candidate=%d old=%d got=%d want=%d", a, b, candidate, old, got, want)
		}
	}
	// Every possible signed difference, at both low and high operand origins.
	// All arithmetic in either form depends only on this difference, including
	// the comparison a>=b. This avoids a prohibitively large q*q enumeration.
	for d := uint32(0); d < q; d++ {
		check(d, 0)
		check(0, d)
		check(q-1, q-1-d)
		check(q-1-d, q-1)
	}
	var state uint32 = 0x32553232
	for i := 0; i < 4096; i++ {
		state = 1664525*state + 1013904223
		a := state % q
		state = 1664525*state + 1013904223
		b := state % q
		check(a, b)
	}
}
