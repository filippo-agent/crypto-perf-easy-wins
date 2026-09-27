// Copyright 2026 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package rsa_test

import (
	"crypto/rsa"
	"crypto/x509"
	"testing"
)

// BenchmarkAuditParsePKCS8PrivateKey measures a complete public import,
// including RSA validation and precomputation, at the existing fixture sizes.
// DER preparation is outside the timed loop; no key generation is needed.
func BenchmarkAuditParsePKCS8PrivateKey(b *testing.B) {
	for _, tt := range []struct {
		name string
		key  *rsa.PrivateKey
	}{
		{"2048", test2048Key},
		{"3072", test3072Key},
		{"4096", test4096Key},
	} {
		b.Run(tt.name, func(b *testing.B) {
			der, err := x509.MarshalPKCS8PrivateKey(tt.key)
			if err != nil {
				b.Fatal(err)
			}
			b.ReportAllocs()
			for b.Loop() {
				if _, err := x509.ParsePKCS8PrivateKey(der); err != nil {
					b.Fatal(err)
				}
			}
		})
	}
}
