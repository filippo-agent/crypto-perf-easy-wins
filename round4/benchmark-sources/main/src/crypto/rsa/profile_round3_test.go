package rsa_test

import (
	"crypto"
	"crypto/rand"
	. "crypto/rsa"
	"crypto/sha256"
	"testing"
)

func BenchmarkRound3PrecomputedRSASign(b *testing.B) {
	d := sha256.Sum256([]byte("profile"))
	b.ReportAllocs()
	for b.Loop() {
		if _, e := SignPKCS1v15(rand.Reader, test2048Key, crypto.SHA256, d[:]); e != nil {
			b.Fatal(e)
		}
	}
}
