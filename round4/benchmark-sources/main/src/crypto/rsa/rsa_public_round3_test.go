package rsa_test

import (
	"crypto"
	"crypto/rand"
	. "crypto/rsa"
	"crypto/sha256"
	"crypto/x509"
	"fmt"
	"testing"
)

// All paths perform public modulus setup on every operation. The reparse
// control additionally constructs a genuinely new public key from DER.
func BenchmarkRound3RSAPublic(b *testing.B) {
	for _, key := range []*PrivateKey{test2048Key, test3072Key, test4096Key} {
		b.Run(fmt.Sprint(key.N.BitLen()), func(b *testing.B) {
			digest := sha256.Sum256([]byte("round3 cold/per-operation RSA"))
			pkcs, err := SignPKCS1v15(rand.Reader, key, crypto.SHA256, digest[:])
			if err != nil {
				b.Fatal(err)
			}
			pss, err := SignPSS(rand.Reader, key, crypto.SHA256, digest[:], nil)
			if err != nil {
				b.Fatal(err)
			}
			der := x509.MarshalPKCS1PublicKey(&key.PublicKey)
			for _, reparse := range []bool{false, true} {
				label := "PerOperationSetup"
				if reparse {
					label = "DERParseAndOperation"
				}
				b.Run(label, func(b *testing.B) {
					for _, op := range []string{"VerifyPKCS1", "VerifyPSS", "EncryptOAEP"} {
						b.Run(op, func(b *testing.B) {
							b.ReportAllocs()
							for b.Loop() {
								pub := &key.PublicKey
								if reparse {
									var err error
									pub, err = x509.ParsePKCS1PublicKey(der)
									if err != nil {
										b.Fatal(err)
									}
								}
								var err error
								switch op {
								case "VerifyPKCS1":
									err = VerifyPKCS1v15(pub, crypto.SHA256, digest[:], pkcs)
								case "VerifyPSS":
									err = VerifyPSS(pub, crypto.SHA256, digest[:], pss, nil)
								case "EncryptOAEP":
									_, err = EncryptOAEP(sha256.New(), rand.Reader, pub, []byte("message"), nil)
								}
								if err != nil {
									b.Fatal(err)
								}
							}
						})
					}
				})
			}
		})
	}
}
