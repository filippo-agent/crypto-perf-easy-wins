package sha256_test

import (
	"bytes"
	"crypto/hmac"
	"crypto/sha256"
	"crypto/sha512"
	"encoding"
	"encoding/hex"
	"fmt"
	"hash"
	"math/rand/v2"
	"testing"
)

var auditHash256Sink [32]byte
var auditHash512Sink [64]byte
var auditMACSink []byte

func BenchmarkAuditPublicSHA2(b *testing.B) {
	for _, n := range []int{0, 8, 32, 55, 56, 63, 64, 65, 111, 112, 127, 128, 129, 1024} {
		input := make([]byte, n)
		b.Run(fmt.Sprintf("SHA256/%d", n), func(b *testing.B) {
			b.ReportAllocs()
			for b.Loop() {
				auditHash256Sink = sha256.Sum256(input)
			}
		})
		b.Run(fmt.Sprintf("SHA512/%d", n), func(b *testing.B) {
			b.ReportAllocs()
			for b.Loop() {
				auditHash512Sink = sha512.Sum512(input)
			}
		})
	}
}
func BenchmarkAuditPublicHMAC(b *testing.B) {
	for _, h := range []struct {
		name string
		f    func() hash.Hash
	}{{"SHA256", sha256.New}, {"SHA512", sha512.New}} {
		for _, n := range []int{0, 32, 64, 1024} {
			key, input := make([]byte, 32), make([]byte, n)
			b.Run(fmt.Sprintf("%s/%d/NewWriteSum", h.name, n), func(b *testing.B) {
				out := make([]byte, 0, h.f().Size())
				b.ReportAllocs()
				for b.Loop() {
					mac := hmac.New(h.f, key)
					mac.Write(input)
					auditMACSink = mac.Sum(out)
				}
			})
			b.Run(fmt.Sprintf("%s/%d/ResetWriteSum", h.name, n), func(b *testing.B) {
				mac := hmac.New(h.f, key)
				out := make([]byte, 0, mac.Size())
				mac.Reset()
				b.ReportAllocs()
				for b.Loop() {
					mac.Reset()
					mac.Write(input)
					auditMACSink = mac.Sum(out)
				}
			})
		}
	}
}

// Public entry-point streaming benchmarks hash complete messages. Chunk size is
// fixed at 32 bytes; both fresh and reused hash state are measured.
func BenchmarkAuditPublicStreamedSHA2(b *testing.B) {
	for _, n := range []int{0, 32, 55, 56, 63, 64, 1024} {
		input := make([]byte, n)
		b.Run(fmt.Sprintf("SHA256/%d/NewWriteSum", n), func(b *testing.B) {
			var out [sha256.Size]byte
			b.ReportAllocs()
			for b.Loop() {
				h := sha256.New()
				for p := input; len(p) > 0; {
					n := min(len(p), 32)
					h.Write(p[:n])
					p = p[n:]
				}
				auditMACSink = h.Sum(out[:0])
			}
		})
		b.Run(fmt.Sprintf("SHA256/%d/ResetWriteSum", n), func(b *testing.B) {
			h := sha256.New()
			var out [sha256.Size]byte
			b.ReportAllocs()
			for b.Loop() {
				h.Reset()
				for p := input; len(p) > 0; {
					n := min(len(p), 32)
					h.Write(p[:n])
					p = p[n:]
				}
				auditMACSink = h.Sum(out[:0])
			}
		})
		b.Run(fmt.Sprintf("SHA512/%d/NewWriteSum", n), func(b *testing.B) {
			var out [sha512.Size]byte
			b.ReportAllocs()
			for b.Loop() {
				h := sha512.New()
				for p := input; len(p) > 0; {
					n := min(len(p), 32)
					h.Write(p[:n])
					p = p[n:]
				}
				auditMACSink = h.Sum(out[:0])
			}
		})
		b.Run(fmt.Sprintf("SHA512/%d/ResetWriteSum", n), func(b *testing.B) {
			h := sha512.New()
			var out [sha512.Size]byte
			b.ReportAllocs()
			for b.Loop() {
				h.Reset()
				for p := input; len(p) > 0; {
					n := min(len(p), 32)
					h.Write(p[:n])
					p = p[n:]
				}
				auditMACSink = h.Sum(out[:0])
			}
		})
	}
}

// Golden digests were generated independently with Python hashlib, for input
// input[i] = byte(i*131 + n). Randomized chunking is deterministic.
var auditSHA2PaddingGolden = []struct {
	n              int
	sha256, sha512 string
}{
	{0, "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855", "cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e"},
	{1, "4bf5122f344554c53bde2ebb8cd2b7e3d1600ad631c385a5d7cce23c7785459a", "7b54b66836c1fbdd13d2441d9e1434dc62ca677fb68f5fe66a464baadecdbd00576f8d6b5ac3bcc80844b7d50b1cc6603444bbe7cfcf8fc0aa1ee3c636d9e339"},
	{31, "1439b4e6c3253c52732631b745015cf6fe65e4101ca72b5d13ef17bcfdd9cae6", "182a2c6800bd1265425569d5a7d82fbeaac47ce3c9844ebba61716aadd81b287c0e9177e5adafc8c842c3ff10033d40e0a10b6fe0ba51c5ab2c631c53815f9f2"},
	{32, "ccecf31f3de5927340d13afdf284aa96b34aca8b3a876d7a59c3dc25830fcb2e", "e11517287dba1fb29a0079f7aeed19a64b9b31260bc33f366d9e16d0fb4804ecaf08009391cdd18c7427d4b93660c75226b1704336660c1ccc1b5bb5907452ce"},
	{54, "380710b58d249f807c222a725f0a2eae6cb29c762c72f8308abe2c4cfe3c596c", "b278e59d1d7fe50609bb4617142f9a3c57ddfc00f15e3a6b3173f711c358c5782ba940b4efe71ec68e8545942bde3740a1d70d4dd85b792484539f6114e71b77"},
	{55, "86bdf1401483a3d48aa0b853de242db9073b3e9e190bd1c8073abf0eba3d3ea7", "08bf0af4aac41643e6fb5b1cc6f934be9eb7ce1eebcd70424911249f7589be860984ea9150b690e901621fab736d64c1199360f0e18da52bb8941f502b63022e"},
	{56, "3682950d356858453c48a040cf03790b27a8a5bb541df1c7b2741140f1ca041d", "90f31a3d7e27ddee645525a0ac148e5fa649b83458b42f70156fee7d406e200226036ba335c897a77aa7eb891b0457335f2fa6d676c0a247b91083b28b02d1ca"},
	{57, "a1a4f023df6eac2b87153a848c362a381988a3034d6078abb92b1c5618f08def", "150926407d83c6953e43317f1afb66e2c47e8a29e4502665277eff00134dbc690fdd6cefb3da819ac80cb1a360fef9839ce124da633f6246f474f37cb28d1a43"},
	{62, "05bac2c5deed33f6aeff5814267a36b7c5e70e25e5361cf6b6d5ac4ebd883e14", "6ecb1ed4f4e7239615f3fcd6300c7190bf2383d75a3365a1f4b2ec21726f4874b26b3b624b820913fd98ff3fc906e5b73fbe21e1c4333b7fe204917f2c34c3c1"},
	{63, "308f063ec4dcb7154b236d356430791a13a7b3001d6a375dcfd686368c68950f", "93e98b2faa14ce96f2e9ca7617aec734b5a33216f5f3f0a822c9b9ba6914bd29a02a49ebf3434b790bd0845a33c0e6c2daa5a7f7e24f20ec117d4d577c53affe"},
	{64, "197a5d2e6d3bc917955f5c5f4fd66bf316cb07ee58f6110a730c08c11b5563e0", "94e8dfbc13779a9dcf69a452cc0f5afb5ee999e31d568754d10693204089acda44fda16cf1356ba75665c9ef3a84067c85c5e2be74fdcd3819740fdc6b737475"},
	{65, "0e0450689e33dcf6ce90264391ad6f82e0efe546579e57c0fe8dc759a37fe26a", "9167b093161f54e2f05ec6849235038736c65a7982cfb2ab1bad1bd38af157100ee59d7f5ec39cb566b002e3a71c75be694978a4b8f6d2d2e58e621c35815f92"},
	{111, "efba2da7debf9e1b7180afc08ec4a93274e7ef39a98784adb181b8e70f48f660", "1db29b4079c70c1609d41f0194d19825e9087d523bc8103047a5ff218619d0b7b6acac8b124fcd8dc7091d49deeee78b7942345b5e70eb7fb84bb8a59258a0e4"},
	{112, "7630abbb1df261e1c03a6d3c81984305b37d4a26a5add2d207170793cd3d5211", "3d2ba6404c1cf92c021ced3f68f44212988e2c13a23437bc7ddb17255d46a2d3e743f5cd80d11d351a52de90fa6908b4aad2ab3687ff6397c6fb26a4b64e866d"},
	{113, "073560999d10bf2c77ad8ec9884f716cad2d24ea0325e5b9476dd70e78909aae", "3f70fccc3721e084026980088ad9c33d883f2ed9fe002514f0b67a0fc4bfa66b4a358781aa5bef3d6050ef609ee7c768715fe7f97da2b24404538ab409185e7b"},
	{119, "de55d54be9f6c0db65425d6e308db6ba9e8eea6e35b070e2dcd39919b668ff9c", "615665a17b8df102add2068b24da510b7377d0e81c646941ecc485b592a5e58e2b5180deadab5b780ae0379802414cd2bf62c516308e7a9ef172a0da1b2c271e"},
	{120, "033f2213655dffe41d5824f3babf21b7f7dcb731d1c6ff1835b4937b2a16db00", "c2999f4c2446144ca75468c426764cbd9bdaa1468a571cfd781c17aa7ae926f1fe6fc680ecd3ec474370bbd4f8eacb4fccb8474290533bffb3d07597ac79774b"},
	{127, "e11b02085cb403ba057be515f657dd7ccd525faa3f46eea4f3c1b80e1e0afc07", "7994d7efdc7030f31d8989fa306881b95b4405b8256f0eab428a23d2db8b61aeab50be00ddbc602484abb6fb12f4bb30667242023dc60f8406826c562c4644bb"},
	{128, "22a665a43655bc61baeb62241a1bb247b0d8ce7c6352dbcbb035e73b99c310b2", "7e2ebf5232da7b659fc76fbd0e0ca5be5c9748827bb522a1ec63ecf7a1681ea936ebedd2e5e547569503c1d2f2a8e845abdd7b5131c0aaf11448e94a11fc643e"},
	{129, "2b663e72b7901994a87ff501473d3e796cca3fe69e39bdcb0419ef4c70d69003", "7e2e042ccc7a554a087e36fb89defa35f39e90b56e3ef2ec75780554d052221e16aba1059ca57efcd69ff65e594d81609760c50bf9079f0f9ab16a4b2891c3fe"},
	{255, "b09a2141d879ce93a3d2045de7f2f28af8619986ab7895be5d89814634d9ddb7", "6aa30616addf6a7162cba7b635636588f13dc99fdea6ba79838c23be90c7dd08c47e85c6c3637c3b1ee4831def27d84200dc44ee60363671a11df224c22f5ae2"},
	{256, "3312ebee214f09971b3a69a0a732248325d7ac0dc755db0bbcbc5cb663365fa0", "757fd9c98c9c4d1335fe1304dc540a483083955db44683dca9c5ec1bf04615c3efec39400ba0d974a13b8a5aa8a296a6a19a991b3a5916ea0f96fef96124f2dd"},
	{257, "ee399caa9c1f8a4dbee40adda5189e990679ec381f5384fc57704dc8ecdcd9eb", "688692d0d5369737a008deffc802c3ed01bacdd9cbefc0b694ab200751b5b8032e0751b8d1bee4dfe957713e39e6c79f019de705c84f9f12d6048ff00d0ce104"},
	{1024, "9beebd1abedb9a07cb93075e59b7e7372b4259f4085e2d0cefef51232bd991c7", "4dce9c7bd8c8126f8abb0d8d6bc885daabe83e51567db06d8dc3f0b78a85dad76ccfcfecb5e3a796e472809dc7dbe0edfdfa4544dd363969b1fac0138e91af49"},
}

func TestAuditPublicSHA2PaddingOracle(t *testing.T) {
	r := rand.NewChaCha8([32]byte{42})
	for _, tt := range auditSHA2PaddingGolden {
		input := make([]byte, tt.n)
		for i := range input {
			input[i] = byte(i*131 + tt.n)
		}
		want256, _ := hex.DecodeString(tt.sha256)
		want512, _ := hex.DecodeString(tt.sha512)
		a, c := sha256.Sum256(input), sha512.Sum512(input)
		if !bytes.Equal(a[:], want256) || !bytes.Equal(c[:], want512) {
			t.Fatalf("one-shot oracle mismatch n=%d", tt.n)
		}
		for _, v := range []struct {
			newHash func() hash.Hash
			want    []byte
		}{{sha256.New, want256}, {sha512.New, want512}} {
			for trial := 0; trial < 16; trial++ {
				h := v.newHash()
				// Exercise stale storage after Reset, then many Write/Sum interleavings.
				h.Write(bytes.Repeat([]byte{0xff}, 257))
				h.Reset()
				for p := input; len(p) > 0; {
					count := min(len(p), 1+int(r.Uint64()%97))
					h.Write(p[:count])
					p = p[count:]
					before, err := h.(encoding.BinaryMarshaler).MarshalBinary()
					if err != nil {
						t.Fatal(err)
					}
					h.Sum(nil)
					after, err := h.(encoding.BinaryMarshaler).MarshalBinary()
					if err != nil {
						t.Fatal(err)
					}
					if !bytes.Equal(before, after) {
						t.Fatalf("Sum mutated state n=%d trial=%d", tt.n, trial)
					}
				}
				if got := h.Sum(nil); !bytes.Equal(got, v.want) {
					t.Fatalf("streaming oracle mismatch n=%d size=%d trial=%d", tt.n, h.Size(), trial)
				}
				prefix := []byte{1, 2, 3}
				got := h.Sum(append([]byte(nil), prefix...))
				if !bytes.Equal(got[:3], prefix) || !bytes.Equal(got[3:], v.want) {
					t.Fatal("Sum append contract")
				}
			}
		}
	}
}
