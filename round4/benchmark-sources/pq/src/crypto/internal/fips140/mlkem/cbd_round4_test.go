package mlkem

import (
	"crypto/internal/fips140/sha3"
	"testing"
)

func round4CBDByteOld(b byte) (fieldElement, fieldElement) {
	b7, b6, b5, b4 := b>>7, b>>6&1, b>>5&1, b>>4&1
	b3, b2, b1, b0 := b>>3&1, b>>2&1, b>>1&1, b&1
	return fieldSub(fieldElement(b0+b1), fieldElement(b2+b3)), fieldSub(fieldElement(b4+b5), fieldElement(b6+b7))
}

func round4CBDByteWide(in byte) (fieldElement, fieldElement) {
	b := uint16(in)
	b7, b6, b5, b4 := b>>7, b>>6&1, b>>5&1, b>>4&1
	b3, b2, b1, b0 := b>>3&1, b>>2&1, b>>1&1, b&1
	return fieldSub(fieldElement(b0+b1), fieldElement(b2+b3)), fieldSub(fieldElement(b4+b5), fieldElement(b6+b7))
}

func round4CBDOracle(in byte) (fieldElement, fieldElement) {
	var sums [4]int
	for bit := 0; bit < 8; bit++ {
		sums[bit/2] += int(in >> bit & 1)
	}
	return fieldElement((sums[0] - sums[1] + q) % q), fieldElement((sums[2] - sums[3] + q) % q)
}

func TestRound4CBDByte(t *testing.T) {
	for i := 0; i < 256; i++ {
		a, b := round4CBDOracle(byte(i))
		c, d := round4CBDByteOld(byte(i))
		e, f := round4CBDByteWide(byte(i))
		if a != c || b != d || c != e || d != f {
			t.Fatalf("byte %d: oracle=%d,%d old=%d,%d wide=%d,%d", i, a, b, c, d, e, f)
		}
	}
}

// Check unchanged PRF stream consumption and both output coefficients, not just
// the scalar arithmetic. Deterministic seeds/nonces, no randomness in the test.
func TestRound4CBDProduction(t *testing.T) {
	for k := 0; k < 32; k++ {
		var seed [32]byte
		for i := range seed {
			seed[i] = byte(k*29 + i*17)
		}
		for _, nonce := range []byte{0, 1, 127, 255} {
			h := sha3.NewShake256()
			h.Write(seed[:])
			h.Write([]byte{nonce})
			var in [128]byte
			h.Read(in[:])
			got := samplePolyCBD(seed[:], nonce)
			for i, b := range in {
				a, c := round4CBDOracle(b)
				if got[2*i] != a || got[2*i+1] != c {
					t.Fatalf("seed=%d nonce=%d pair=%d", k, nonce, i)
				}
			}
		}
	}
}
