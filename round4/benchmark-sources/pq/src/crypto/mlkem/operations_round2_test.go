package mlkem_test

import (
	"bytes"
	"crypto"
	"crypto/mlkem"
	"testing"
)

type round2KEMCase struct {
	name     string
	generate func() (crypto.Decapsulator, error)
	private  func([]byte) (crypto.Decapsulator, error)
	public   func([]byte) (crypto.Encapsulator, error)
}

func round2KEMCases() []round2KEMCase {
	return []round2KEMCase{
		{"768", func() (crypto.Decapsulator, error) { return mlkem.GenerateKey768() }, func(s []byte) (crypto.Decapsulator, error) { return mlkem.NewDecapsulationKey768(s) }, func(s []byte) (crypto.Encapsulator, error) { return mlkem.NewEncapsulationKey768(s) }},
		{"1024", func() (crypto.Decapsulator, error) { return mlkem.GenerateKey1024() }, func(s []byte) (crypto.Decapsulator, error) { return mlkem.NewDecapsulationKey1024(s) }, func(s []byte) (crypto.Encapsulator, error) { return mlkem.NewEncapsulationKey1024(s) }},
	}
}
func BenchmarkRound2MLKEM(b *testing.B) {
	for _, tc := range round2KEMCases() {
		b.Run(tc.name, func(b *testing.B) {
			seed := make([]byte, mlkem.SeedSize)
			dk, err := tc.private(seed)
			if err != nil {
				b.Fatal(err)
			}
			ek := dk.Encapsulator()
			encoded := ek.Bytes()
			_, ct := ek.Encapsulate()
			bad := bytes.Clone(ct)
			bad[len(bad)/2] ^= 1
			b.Run("GenerateKey", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if _, err := tc.generate(); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("SeedExpand", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if _, err := tc.private(seed); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("EncapsWarm", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					ek.Encapsulate()
				}
			})
			b.Run("ParseEncapsCold", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					k, err := tc.public(encoded)
					if err != nil {
						b.Fatal(err)
					}
					k.Encapsulate()
				}
			})
			b.Run("DecapsWarm", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if _, err := dk.Decapsulate(ct); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("DecapsRejectWarm", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if _, err := dk.Decapsulate(bad); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("SeedExpandDecapsCold", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					k, err := tc.private(seed)
					if err != nil {
						b.Fatal(err)
					}
					if _, err := k.Decapsulate(ct); err != nil {
						b.Fatal(err)
					}
				}
			})
		})
	}
}

func TestRound2MLKEMPublic(t *testing.T) {
	for _, tc := range round2KEMCases() {
		t.Run(tc.name, func(t *testing.T) {
			seed := make([]byte, mlkem.SeedSize)
			for trial := 0; trial < 16; trial++ {
				seed[0] = byte(trial)
				dk, err := tc.private(seed)
				if err != nil {
					t.Fatal(err)
				}
				encoded := dk.Encapsulator().Bytes()
				ek, err := tc.public(encoded)
				if err != nil {
					t.Fatal(err)
				}
				key, ct := ek.Encapsulate()
				got, err := dk.Decapsulate(ct)
				if err != nil || !bytes.Equal(key, got) {
					t.Fatal("roundtrip")
				}
				bad := bytes.Clone(ct)
				bad[len(bad)/2] ^= 1
				rejected, err := dk.Decapsulate(bad)
				if err != nil || len(rejected) != 32 || bytes.Equal(key, rejected) {
					t.Fatal("implicit rejection")
				}
				again, err := dk.Decapsulate(bad)
				if err != nil || !bytes.Equal(rejected, again) {
					t.Fatal("unstable rejection")
				}
				if _, err := dk.Decapsulate(ct[:len(ct)-1]); err == nil {
					t.Fatal("accepted short ciphertext")
				}
				// First coefficient is 4095, exceeding q: key modulus check must remain.
				encoded[0] = 255
				encoded[1] |= 15
				if _, err := tc.public(encoded); err == nil {
					t.Fatal("accepted unreduced public coefficient")
				}
			}
		})
	}
}
