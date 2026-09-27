package hpke

import (
	"fmt"
	"testing"
)

// Complete public one-shot HPKE operations, including KDF and AEAD costs.
func BenchmarkRound2HPKE(b *testing.B) {
	for _, kem := range []KEM{MLKEM768(), MLKEM1024(), MLKEM768X25519(), MLKEM768P256(), MLKEM1024P384()} {
		b.Run(fmt.Sprintf("%04x", kem.ID()), func(b *testing.B) {
			seed := make([]byte, 32)
			if kem == MLKEM768() || kem == MLKEM1024() {
				seed = make([]byte, 64)
			}
			sk, err := kem.NewPrivateKey(seed)
			if err != nil {
				b.Fatal(err)
			}
			pk := sk.PublicKey()
			encoded := pk.Bytes()
			info := []byte("round2")
			msg := make([]byte, 128)
			kdf, aead := HKDFSHA256(), AES256GCM()
			ct, err := Seal(pk, kdf, aead, info, msg)
			if err != nil {
				b.Fatal(err)
			}
			b.Run("SealWarm", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if _, err := Seal(pk, kdf, aead, info, msg); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("ParseSealCold", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					key, err := kem.NewPublicKey(encoded)
					if err != nil {
						b.Fatal(err)
					}
					if _, err := Seal(key, kdf, aead, info, msg); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("OpenWarm", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if _, err := Open(sk, kdf, aead, info, ct); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("SeedExpandOpenCold", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					key, err := kem.NewPrivateKey(seed)
					if err != nil {
						b.Fatal(err)
					}
					if _, err := Open(key, kdf, aead, info, ct); err != nil {
						b.Fatal(err)
					}
				}
			})
		})
	}
}
