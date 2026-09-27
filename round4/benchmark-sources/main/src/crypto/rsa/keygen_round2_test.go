// Copyright 2026 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package rsa_test

import (
	"crypto"
	"crypto/internal/cryptotest"
	"crypto/rand"
	. "crypto/rsa"
	"crypto/sha256"
	"encoding/binary"
	"fmt"
	randv2 "math/rand/v2"
	"os"
	"testing"
)

// Public complete-operation benchmark. Corpus supplies the same candidates as
// BenchmarkGenerateKey. FixedStream supplies an independent representative
// pseudorandom candidate stream per seed; this is BENCHMARK ONLY randomness.
// RealRandom exercises the normal production source, with much greater variance.
// Miller-Rabin bases remain randomly sampled in all three cases.
func BenchmarkRound2GenerateKey(b *testing.B) {
	cryptotest.MustMinimumFIPS140ModuleVersion(b, "v1.28.0")
	for _, size := range []int{2048, 3072, 4096} {
		b.Run(fmt.Sprint(size), func(b *testing.B) {
			b.Run("Corpus", func(b *testing.B) {
				b.Setenv("GODEBUG", "cryptocustomrand=1")
				data, err := os.ReadFile(fmt.Sprintf("testdata/keygen%d.txt", size))
				if err != nil {
					b.Fatal(err)
				}
				corpus := string(data)
				b.ReportAllocs()
				for b.Loop() {
					if _, err := GenerateKey(benchmarkPrimeReader(corpus), size); err != nil {
						b.Fatal(err)
					}
				}
			})
			b.Run("FixedStream", func(b *testing.B) {
				b.Setenv("GODEBUG", "cryptocustomrand=1")
				for seed := uint64(0); seed < 8; seed++ {
					b.Run(fmt.Sprint(seed), func(b *testing.B) {
						var key [32]byte
						copy(key[:], "round2 RSA benchmark only")
						binary.LittleEndian.PutUint64(key[24:], seed)
						b.ReportAllocs()
						for b.Loop() {
							rng := randv2.NewChaCha8(key)
							r := &keyGenTestReader{next: func(p []byte) error { _, err := rng.Read(p); return err }}
							if _, err := GenerateKey(r, size); err != nil {
								b.Fatal(err)
							}
						}
					})
				}
			})
			b.Run("RealRandom", func(b *testing.B) {
				b.Setenv("GODEBUG", "cryptocustomrand=0")
				b.ReportAllocs()
				for b.Loop() {
					if _, err := GenerateKey(rand.Reader, size); err != nil {
						b.Fatal(err)
					}
				}
			})
		})
	}
}

// Verification is the clean complete-operation target for ExpShortVarTime:
// it includes public-key import/Montgomery setup and signature encoding checks.
func BenchmarkRound2Verify(b *testing.B) {
	for _, item := range []struct {
		size int
		key  *PrivateKey
	}{{2048, test2048Key}, {3072, test3072Key}, {4096, test4096Key}} {
		b.Run(fmt.Sprint(item.size), func(b *testing.B) {
			digest := sha256.Sum256([]byte("RSA round2 whole verification"))
			sig, err := SignPKCS1v15(rand.Reader, item.key, crypto.SHA256, digest[:])
			if err != nil {
				b.Fatal(err)
			}
			b.Run("PKCS1v15", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if err := VerifyPKCS1v15(&item.key.PublicKey, crypto.SHA256, digest[:], sig); err != nil {
						b.Fatal(err)
					}
				}
			})
			pss, err := SignPSS(rand.Reader, item.key, crypto.SHA256, digest[:], nil)
			if err != nil {
				b.Fatal(err)
			}
			b.Run("PSS", func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					if err := VerifyPSS(&item.key.PublicKey, crypto.SHA256, digest[:], pss, nil); err != nil {
						b.Fatal(err)
					}
				}
			})
		})
	}
}
