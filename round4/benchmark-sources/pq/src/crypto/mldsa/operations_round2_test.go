//go:build !fips140v1.0

package mldsa_test

import (
	. "crypto/mldsa"
	"testing"
)

// Warm signing uses the same representative rejection corpus as BenchmarkSign.
// Cold means key parsing/expansion is included, not a CPU-cache flush.
func BenchmarkRound2MLDSA(b *testing.B) {
	for _, tc := range []struct {
		name     string
		p        Parameters
		messages []string
	}{
		{"44", MLDSA44(), benchmarkMessagesMLDSA44},
		{"65", MLDSA65(), benchmarkMessagesMLDSA65},
		{"87", MLDSA87(), benchmarkMessagesMLDSA87},
	} {
		b.Run(tc.name, func(b *testing.B) {
			seed := make([]byte, 32)
			sk, err := NewPrivateKey(tc.p, seed)
			if err != nil {
				b.Fatal(err)
			}
			pk := sk.PublicKey()
			encoded := pk.Bytes()
			msg := make([]byte, 128)
			sig, err := sk.SignDeterministic(msg, nil)
			if err != nil {
				b.Fatal(err)
			}
			b.Run("GenerateKey", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if _, err := GenerateKey(tc.p); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("SeedExpand", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if _, err := NewPrivateKey(tc.p, seed); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("SignDeterministicWarm", func(b *testing.B) {
				b.ReportAllocs()
				i := 0
				for b.Loop() {
					if _, err := sk.SignDeterministic([]byte(tc.messages[i]), nil); err != nil {
						b.Fatal(err)
					}
					i = (i + 1) % len(tc.messages)
				}
			})
			b.Run("SignRandomizedWarm", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if _, err := sk.Sign(nil, msg, nil); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("SeedExpandSignCold", func(b *testing.B) {
				b.ReportAllocs()
				i := 0
				for b.Loop() {
					key, err := NewPrivateKey(tc.p, seed)
					if err != nil {
						b.Fatal(err)
					}
					if _, err := key.SignDeterministic([]byte(tc.messages[i]), nil); err != nil {
						b.Fatal(err)
					}
					i = (i + 1) % len(tc.messages)
				}
			})
			b.Run("VerifyWarm", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if err := Verify(pk, msg, sig, nil); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("ParseVerifyCold", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					key, err := NewPublicKey(tc.p, encoded)
					if err != nil {
						b.Fatal(err)
					}
					if err := Verify(key, msg, sig, nil); err != nil {
						b.Fatal(err)
					}
				}
			})
		})
	}
}
