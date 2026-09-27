// Temporary performance-audit probes. No production code changes.
package x509

import (
	"bytes"
	"crypto/x509/pkix"
	"encoding/asn1"
	"encoding/pem"
	"fmt"
	"testing"
	"time"
)

// auditSignatureAlgorithmFast models the proposed canonical DER fast path.
func auditSignatureAlgorithmFast(ai pkix.AlgorithmIdentifier) SignatureAlgorithm {
	if ai.Algorithm.Equal(oidSignatureRSAPSS) {
		switch {
		case bytes.Equal(ai.Parameters.FullBytes, pssParametersSHA256.FullBytes):
			return SHA256WithRSAPSS
		case bytes.Equal(ai.Parameters.FullBytes, pssParametersSHA384.FullBytes):
			return SHA384WithRSAPSS
		case bytes.Equal(ai.Parameters.FullBytes, pssParametersSHA512.FullBytes):
			return SHA512WithRSAPSS
		}
	}
	return getSignatureAlgorithmFromAI(ai)
}

func TestAuditPSSFastPath(t *testing.T) {
	for _, tc := range []struct {
		p    asn1.RawValue
		want SignatureAlgorithm
	}{
		{pssParametersSHA256, SHA256WithRSAPSS},
		{pssParametersSHA384, SHA384WithRSAPSS},
		{pssParametersSHA512, SHA512WithRSAPSS},
	} {
		ai := pkix.AlgorithmIdentifier{Algorithm: oidSignatureRSAPSS, Parameters: tc.p}
		if slow, fast := getSignatureAlgorithmFromAI(ai), auditSignatureAlgorithmFast(ai); slow != tc.want || fast != tc.want {
			t.Fatalf("canonical %v: slow=%v fast=%v", tc.want, slow, fast)
		}
		// Every one-bit corruption and truncation must retain fallback behavior.
		for i := range tc.p.FullBytes {
			for bit := uint(0); bit < 8; bit++ {
				ai.Parameters.FullBytes = bytes.Clone(tc.p.FullBytes)
				ai.Parameters.FullBytes[i] ^= 1 << bit
				if got, want := auditSignatureAlgorithmFast(ai), getSignatureAlgorithmFromAI(ai); got != want {
					t.Fatalf("%v byte %d bit %d: got %v want %v", tc.want, i, bit, got, want)
				}
			}
			ai.Parameters.FullBytes = tc.p.FullBytes[:i]
			if got, want := auditSignatureAlgorithmFast(ai), getSignatureAlgorithmFromAI(ai); got != want {
				t.Fatalf("%v truncation %d: got %v want %v", tc.want, i, got, want)
			}
		}
		// Omitting both permitted NULLs is valid, but should use the fallback.
		var params pssParameters
		if _, err := asn1.Unmarshal(tc.p.FullBytes, &params); err != nil {
			t.Fatal(err)
		}
		params.Hash.Parameters = asn1.RawValue{}
		params.MGF.Parameters.FullBytes, _ = asn1.Marshal(pkix.AlgorithmIdentifier{Algorithm: params.Hash.Algorithm})
		ai.Parameters.FullBytes, _ = asn1.Marshal(params)
		if got := auditSignatureAlgorithmFast(ai); got != tc.want {
			t.Fatalf("absent NULLs: got %v want %v", got, tc.want)
		}
		ai = pkix.AlgorithmIdentifier{Algorithm: oidSignatureECDSAWithSHA256, Parameters: tc.p}
		if got, want := auditSignatureAlgorithmFast(ai), getSignatureAlgorithmFromAI(ai); got != want {
			t.Fatal("wrong OID fast-path")
		}
	}
}

func BenchmarkAuditPSSAlgorithm(b *testing.B) {
	for _, tc := range []struct {
		name string
		p    asn1.RawValue
	}{
		{"SHA256", pssParametersSHA256}, {"SHA384", pssParametersSHA384}, {"SHA512", pssParametersSHA512},
	} {
		ai := pkix.AlgorithmIdentifier{Algorithm: oidSignatureRSAPSS, Parameters: tc.p}
		b.Run(tc.name+"/Original", func(b *testing.B) {
			b.ReportAllocs()
			for b.Loop() {
				getSignatureAlgorithmFromAI(ai)
			}
		})
		b.Run(tc.name+"/Fast", func(b *testing.B) {
			b.ReportAllocs()
			for b.Loop() {
				auditSignatureAlgorithmFast(ai)
			}
		})
	}
}

func BenchmarkAuditParseCertificate(b *testing.B) {
	for _, tc := range []struct{ name, pem string }{
		{"PSS", rsaPSSSelfSignedPEM}, {"PSSOpenSSL", rsaPSSSelfSignedOpenSSL110PEM},
		{"Google", googleLeaf}, {"Root", gtsRoot},
	} {
		b.Run(tc.name, func(b *testing.B) {
			block, _ := pem.Decode([]byte(tc.pem))
			if block == nil {
				b.Fatal("bad fixture")
			}
			b.ReportAllocs()
			for b.Loop() {
				if _, err := ParseCertificate(block.Bytes); err != nil {
					b.Fatal(err)
				}
			}
		})
	}
}

func BenchmarkAuditVerifyHostname(b *testing.B) {
	for _, n := range []int{1, 10, 100} {
		b.Run(fmt.Sprint(n), func(b *testing.B) {
			c := &Certificate{}
			for i := 0; i < n-1; i++ {
				c.DNSNames = append(c.DNSNames, fmt.Sprintf("name%d.example.com", i))
			}
			c.DNSNames = append(c.DNSNames, "*.example.org")
			b.ReportAllocs()
			for b.Loop() {
				if err := c.VerifyHostname("www.example.org"); err != nil {
					b.Fatal(err)
				}
			}
		})
	}
}

func BenchmarkAuditVerify(b *testing.B) {
	tc := verifyTests[0]
	c, err := certificateFromPEM(tc.leaf)
	if err != nil {
		b.Fatal(err)
	}
	opts := VerifyOptions{Roots: NewCertPool(), Intermediates: NewCertPool(), DNSName: tc.dnsName, CurrentTime: time.Unix(tc.currentTime, 0)}
	for _, p := range tc.roots {
		if !opts.Roots.AppendCertsFromPEM([]byte(p)) {
			b.Fatal("root")
		}
	}
	for _, p := range tc.intermediates {
		if !opts.Intermediates.AppendCertsFromPEM([]byte(p)) {
			b.Fatal("intermediate")
		}
	}
	if _, err := c.Verify(opts); err != nil {
		b.Fatal(err)
	}
	b.ReportAllocs()
	for b.Loop() {
		if _, err := c.Verify(opts); err != nil {
			b.Fatal(err)
		}
	}
}

func BenchmarkAuditParseOID(b *testing.B) {
	for _, s := range []string{"1.2.840.113549.1.1.10", "2.5.29.32.0", "2.18446744073709551616.3.18446744073709551617"} {
		b.Run(s, func(b *testing.B) {
			b.ReportAllocs()
			for b.Loop() {
				if _, err := ParseOID(s); err != nil {
					b.Fatal(err)
				}
			}
		})
	}
}
