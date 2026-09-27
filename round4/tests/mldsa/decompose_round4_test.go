package mldsa

import "testing"

// Uses a mathematically direct oracle, not the optimized multiply/shift highBits.
// Also freezes the old multiply-then-divide expression for exact equality.
func TestRound4DecomposeGrouping(t *testing.T) {
	for _, den := range []int32{32, 88} {
		gamma := int32((q - 1) / den)
		for x := uint32(0); x < q; x++ {
			r, err := fieldToMontgomery(x)
			if err != nil {
				t.Fatal(err)
			}
			var hi byte
			var gotLo int32
			if den == 32 {
				hi, gotLo = decompose32(r)
			} else {
				hi, gotLo = decompose88(r)
			}
			if (den == 32 && hi > 15) || (den == 88 && hi > 43) {
				t.Fatalf("high bits: den=%d x=%d hi=%d", den, x, hi)
			}
			old := int32(x) - int32(hi)*2*(q-1)/den
			grouped := int32(x) - int32(hi)*(2*(q-1)/den)
			if old > q/2 {
				old -= q
			}
			if grouped > q/2 {
				grouped -= q
			}
			lo := int32(x) % (2 * gamma)
			if lo > gamma {
				lo -= 2 * gamma
			}
			diff := int32(x) - lo
			wantHi := diff / (2 * gamma)
			if diff == q-1 {
				wantHi = 0
				lo--
			}
			if gotLo != old || old != grouped || grouped != lo || int32(hi) != wantHi {
				t.Fatalf("den=%d x=%d hi=%d wantHi=%d production=%d old=%d grouped=%d oracle=%d", den, x, hi, wantHi, gotLo, old, grouped, lo)
			}
		}
	}
}
