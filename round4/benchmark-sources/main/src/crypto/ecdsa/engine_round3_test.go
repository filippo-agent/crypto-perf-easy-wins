package ecdsa_test

import (
	"crypto"
	"crypto/ecdsa"
	"crypto/elliptic"
	"crypto/sha256"
	"math/big"
	"testing"
)

// Includes fresh-key/reparse cost on every iteration. No candidate is allowed
// to amortize a public-key table across these operations.
func BenchmarkRound3VerifyEngine(b *testing.B) {
	for _, c := range []elliptic.Curve{elliptic.P256(), elliptic.P384(), elliptic.P521()} {
		b.Run(c.Params().Name, func(b *testing.B) {
			var keys [8][]byte
			var hashes [8][32]byte
			var sigs [8][]byte
			var pubs [8]*ecdsa.PublicKey
			for i := range keys {
				d := big.NewInt(int64(7 + 13*i))
				x, y := c.ScalarBaseMult(d.Bytes())
				priv := &ecdsa.PrivateKey{PublicKey: ecdsa.PublicKey{Curve: c, X: x, Y: y}, D: d}
				var err error
				keys[i], err = priv.PublicKey.Bytes()
				if err != nil {
					b.Fatal(err)
				}
				hashes[i] = sha256.Sum256([]byte{42, byte(i)})
				sigs[i], err = priv.Sign(nil, hashes[i][:], crypto.SHA256)
				if err != nil {
					b.Fatal(err)
				}
				pubs[i], err = ecdsa.ParseUncompressedPublicKey(c, keys[i])
				if err != nil || !ecdsa.VerifyASN1(pubs[i], hashes[i][:], sigs[i]) {
					b.Fatal("bad fixture")
				}
			}
			for _, mode := range []string{"Warm", "FreshCoordinates", "Reparse"} {
				for _, invalid := range []bool{false, true} {
					name := mode + "/Valid"
					if invalid {
						name = mode + "/InvalidHash"
					}
					b.Run(name, func(b *testing.B) {
						hs := hashes
						if invalid {
							for i := range hs {
								hs[i][0] ^= 0x80
							}
						}
						b.ReportAllocs()
						i := 0
						for b.Loop() {
							pub := pubs[i]
							if mode == "FreshCoordinates" {
								pub = &ecdsa.PublicKey{Curve: c, X: new(big.Int).Set(pub.X), Y: new(big.Int).Set(pub.Y)}
							}
							if mode == "Reparse" {
								var err error
								pub, err = ecdsa.ParseUncompressedPublicKey(c, keys[i])
								if err != nil {
									b.Fatal(err)
								}
							}
							if ecdsa.VerifyASN1(pub, hs[i][:], sigs[i]) == invalid {
								b.Fatal("verify mismatch")
							}
							i = (i + 1) % len(pubs)
						}
					})
				}
			}
		})
	}
}
