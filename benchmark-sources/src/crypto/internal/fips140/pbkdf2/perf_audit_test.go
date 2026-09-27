package pbkdf2

import (
	"bytes"
	"crypto/internal/fips140/hmac"
	"crypto/internal/fips140/subtle"
	"crypto/sha1"
	"crypto/sha256"
	"crypto/sha512"
	"errors"
	"fmt"
	"hash"
	"testing"
)

func auditKeyXOR[Hash hash.Hash](h func() Hash, password string, salt []byte, iter, keyLength int) ([]byte, error) {
	setServiceIndicator(salt, keyLength)

	if keyLength <= 0 {
		return nil, errors.New("pbkdf2: keyLength must be larger than 0")
	}

	prf := hmac.New(h, []byte(password))
	hmac.MarkAsUsedInKDF(prf)
	hashLen := prf.Size()
	numBlocks := divRoundUp(keyLength, hashLen)
	const maxBlocks = int64(1<<32 - 1)
	if keyLength+hashLen < keyLength || int64(numBlocks) > maxBlocks {
		return nil, errors.New("pbkdf2: keyLength too long")
	}

	var buf [4]byte
	dk := make([]byte, 0, numBlocks*hashLen)
	U := make([]byte, hashLen)
	for block := 1; block <= numBlocks; block++ {
		// N.B.: || means concatenation, ^ means XOR
		// for each block T_i = U_1 ^ U_2 ^ ... ^ U_iter
		// U_1 = PRF(password, salt || uint(i))
		prf.Reset()
		prf.Write(salt)
		buf[0] = byte(block >> 24)
		buf[1] = byte(block >> 16)
		buf[2] = byte(block >> 8)
		buf[3] = byte(block)
		prf.Write(buf[:4])
		dk = prf.Sum(dk)
		T := dk[len(dk)-hashLen:]
		copy(U, T)

		// U_n = PRF(password, U_(n-1))
		for n := 2; n <= iter; n++ {
			prf.Reset()
			prf.Write(U)
			U = U[:0]
			U = prf.Sum(U)
			subtle.XORBytes(T, T, U)
		}
	}
	return dk[:keyLength], nil
}

func TestAuditPBKDF2XOR(t *testing.T) {
	for _, h := range []func() hash.Hash{sha1.New, sha256.New224, sha256.New, sha512.New384, sha512.New} {
		for _, iter := range []int{1, 2, 10, 4096} {
			for _, n := range []int{1, h().Size(), h().Size() + 1, 2*h().Size() + 1} {
				salt := []byte("0123456789abcdef")
				want, e := Key(h, "audit password", salt, iter, n)
				got, e2 := auditKeyXOR(h, "audit password", salt, iter, n)
				if e != nil || e2 != nil || !bytes.Equal(got, want) {
					t.Fatalf("hash=%d iter=%d len=%d", h().Size(), iter, n)
				}
			}
		}
	}
}
func BenchmarkAuditPBKDF2(b *testing.B) {
	for _, h := range []struct {
		name string
		f    func() hash.Hash
	}{{"SHA1", sha1.New}, {"SHA256", sha256.New}, {"SHA384", sha512.New384}, {"SHA512", sha512.New}} {
		for _, v := range []struct {
			name string
			f    func(func() hash.Hash, string, []byte, int, int) ([]byte, error)
		}{{"Base", Key[hash.Hash]}, {"XOR", auditKeyXOR[hash.Hash]}} {
			b.Run(fmt.Sprintf("%s/%s", h.name, v.name), func(b *testing.B) {
				salt := []byte("0123456789abcdef")
				n := h.f().Size()
				b.ReportAllocs()
				for b.Loop() {
					_, err := v.f(h.f, "audit password", salt, 4096, n)
					if err != nil {
						b.Fatal(err)
					}
				}
			})
		}
	}
}
