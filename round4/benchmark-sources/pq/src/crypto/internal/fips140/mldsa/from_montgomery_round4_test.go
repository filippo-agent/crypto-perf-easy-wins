package mldsa

import "testing"

// Canonical domain exhaustive. A wider input is deliberately NOT admitted by
// fieldFromMontgomery's fieldElement contract; q would produce q before correction.
func TestRound4FromMontgomeryCanonical(t *testing.T) {
	// R^-1 mod q, checked independently by multiplication below.
	const invR uint64 = 8265825
	if (uint64(R)*invR)%q != 1 {
		t.Fatal("incorrect inverse constant")
	}
	for a := uint32(0); a < q; a++ {
		got := fieldFromMontgomery(fieldElement(a))
		old := uint32(fieldMontgomeryReduce(uint64(a)))
		partial := uint32(fieldMontgomeryPartialReduce(uint64(a)))
		want := uint32(uint64(a) * invR % q)
		if got != want || old != want || partial != want || partial >= q {
			t.Fatalf("a=%d production=%d full=%d partial=%d want=%d", a, got, old, partial, want)
		}
	}
	if uint32(fieldMontgomeryPartialReduce(q)) != q {
		t.Fatal("expected boundary counterexample at a=q")
	}
}
