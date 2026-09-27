// Copy into src/crypto/hmac/native_round2_test.go for baseline and candidate.
package hmac_test

import (
	"bytes"
	"crypto/hkdf"
	"crypto/hmac"
	"crypto/pbkdf2"
	"crypto/sha1"
	"crypto/sha256"
	"crypto/sha3"
	"crypto/sha512"
	"encoding"
	"encoding/binary"
	"errors"
	"fmt"
	"hash"
	"sync"
	"testing"
)

type round2HashCase struct {
	name string
	new  func() hash.Hash
}

func round2Hashes() []round2HashCase {
	return []round2HashCase{
		{"SHA224", sha256.New224}, {"SHA256", sha256.New}, {"SHA384", sha512.New384},
		{"SHA512", sha512.New}, {"SHA512_224", sha512.New512_224}, {"SHA512_256", sha512.New512_256},
		{"SHA3_224", func() hash.Hash { return sha3.New224() }},
		{"SHA3_256", func() hash.Hash { return sha3.New256() }},
		{"SHA3_384", func() hash.Hash { return sha3.New384() }},
		{"SHA3_512", func() hash.Hash { return sha3.New512() }},
		{"SHA1", sha1.New},
		{"OpaqueSHA256", func() hash.Hash { return &round2Opaque{sha256.New()} }},
		{"MarshaledSHA256", func() hash.Hash { return &round2Marshaled{sha256.New()} }},
	}
}

type round2Opaque struct{ hash.Hash }
type round2Marshaled struct{ hash.Hash }

func (h *round2Marshaled) MarshalBinary() ([]byte, error) {
	return h.Hash.(encoding.BinaryMarshaler).MarshalBinary()
}
func (h *round2Marshaled) UnmarshalBinary(b []byte) error {
	return h.Hash.(encoding.BinaryUnmarshaler).UnmarshalBinary(b)
}
func (h *round2Marshaled) Clone() (hash.Cloner, error) {
	c, err := h.Hash.(hash.Cloner).Clone()
	if err != nil {
		return nil, err
	}
	return &round2Marshaled{c}, nil
}

// No HMAC reuse, clone, or marshaling in this intentionally independent oracle.
func round2ReferenceMAC(newHash func() hash.Hash, key, msg []byte) []byte {
	inner, outer := newHash(), newHash()
	block := inner.BlockSize()
	if len(key) > block {
		outer.Write(key)
		key = outer.Sum(nil)
		outer.Reset()
	}
	ipad, opad := make([]byte, block), make([]byte, block)
	copy(ipad, key)
	copy(opad, key)
	for i := range ipad {
		ipad[i] ^= 0x36
		opad[i] ^= 0x5c
	}
	inner.Write(ipad)
	inner.Write(msg)
	outer.Write(opad)
	outer.Write(inner.Sum(nil))
	return outer.Sum(nil)
}

func TestRound2HMACNativeTransitions(t *testing.T) {
	for _, tc := range round2Hashes() {
		t.Run(tc.name, func(t *testing.T) {
			bs := tc.new().BlockSize()
			for _, kl := range []int{0, 1, 16, bs - 1, bs, bs + 1, 2*bs + 3} {
				key := bytes.Repeat([]byte{0xa7}, kl)
				for _, ml := range []int{0, 1, 27, 28, 31, 32, 55, 56, 63, 64, 65, 111, 112, 127, 128, 129, 2*bs + 1} {
					msg := bytes.Repeat([]byte{0x93}, ml)
					inputKey := bytes.Clone(key)
					h := hmac.New(tc.new, inputKey)
					// New must copy key bytes, and the lazy cache must not retain inputKey.
					for i := range inputKey {
						inputKey[i] ^= 0xff
					}
					for stage := 0; stage < 4; stage++ {
						if stage > 0 {
							h.Reset()
							h.Reset()
						}
						h.Write(msg[:len(msg)/2])
						h.Write(nil)
						h.Write(msg[len(msg)/2:])
						want := round2ReferenceMAC(tc.new, key, msg)
						prefix := []byte("unaltered prefix")
						out := make([]byte, len(prefix), len(prefix)+h.Size()+13)
						copy(out, prefix)
						got := h.Sum(out)
						if !bytes.Equal(got[:len(prefix)], prefix) || !bytes.Equal(got[len(prefix):], want) {
							t.Fatalf("key=%d msg=%d stage=%d", kl, ml, stage)
						}
						if !bytes.Equal(h.Sum(nil), want) {
							t.Fatal("repeated Sum changed state")
						}
						h.Write([]byte{7})
						extended := append(bytes.Clone(msg), 7)
						if !bytes.Equal(h.Sum(nil), round2ReferenceMAC(tc.new, key, extended)) {
							t.Fatal("Write after Sum")
						}
					}
				}
			}
		})
	}
}

func TestRound2HMACCloneSharedNativeState(t *testing.T) {
	for _, tc := range round2Hashes() {
		t.Run(tc.name, func(t *testing.T) {
			key := bytes.Repeat([]byte{0x68}, 32)
			for _, warm := range []bool{false, true} {
				h := hmac.New(tc.new, key)
				if warm {
					h.Reset()
				}
				h.Write([]byte("prefix"))
				c, err := h.(hash.Cloner).Clone()
				if err != nil {
					if errors.Is(err, errors.ErrUnsupported) {
						continue
					}
					t.Fatal(err)
				}
				h.Write([]byte("left"))
				c.Write([]byte("right"))
				if !bytes.Equal(h.Sum(nil), round2ReferenceMAC(tc.new, key, []byte("prefixleft"))) {
					t.Fatal("original changed")
				}
				if !bytes.Equal(c.Sum(nil), round2ReferenceMAC(tc.new, key, []byte("prefixright"))) {
					t.Fatal("clone changed")
				}
				// Reset independently, then run both concurrently under -race. They may
				// share immutable cache/pads, never mutable digest state.
				var wg sync.WaitGroup
				for _, x := range []hash.Hash{h, c} {
					wg.Add(1)
					go func(x hash.Hash) {
						defer wg.Done()
						for i := 0; i < 20; i++ {
							x.Reset()
							x.Write([]byte("independent"))
							if !bytes.Equal(x.Sum(nil), round2ReferenceMAC(tc.new, key, []byte("independent"))) {
								t.Error("shared mutable clone state")
							}
						}
					}(x)
				}
				wg.Wait()
			}
		})
	}
}

func round2ReferencePBKDF2(n func() hash.Hash, password string, salt []byte, iter, size int) []byte {
	out := make([]byte, 0, size+n().Size())
	var ctr [4]byte
	for b := uint32(1); len(out) < size; b++ {
		binary.BigEndian.PutUint32(ctr[:], b)
		input := append(bytes.Clone(salt), ctr[:]...)
		u := round2ReferenceMAC(n, []byte(password), input)
		v := bytes.Clone(u)
		for i := 1; i < iter; i++ {
			u = round2ReferenceMAC(n, []byte(password), u)
			for j := range v {
				v[j] ^= u[j]
			}
		}
		out = append(out, v...)
	}
	return out[:size]
}
func round2ReferenceHKDF(n func() hash.Hash, secret, salt []byte, info string, size int) []byte {
	if salt == nil {
		salt = make([]byte, n().Size())
	}
	prk := round2ReferenceMAC(n, salt, secret)
	out := make([]byte, 0, size+n().Size())
	var prev []byte
	for c := byte(1); len(out) < size; c++ {
		input := append(bytes.Clone(prev), []byte(info)...)
		input = append(input, c)
		prev = round2ReferenceMAC(n, prk, input)
		out = append(out, prev...)
	}
	return out[:size]
}
func TestRound2PublicKDFNative(t *testing.T) {
	for _, tc := range round2Hashes() {
		t.Run(tc.name, func(t *testing.T) {
			size := tc.new().Size()
			salt := bytes.Repeat([]byte{0x76}, 16)
			password := "password with at least 16 bytes"
			for _, iterations := range []int{1, 2, 17} {
				for _, outLen := range []int{1, size - 1, size, size + 1, 3*size + 7} {
					got, err := pbkdf2.Key(tc.new, password, salt, iterations, outLen)
					if err != nil {
						t.Fatal(err)
					}
					if !bytes.Equal(got, round2ReferencePBKDF2(tc.new, password, salt, iterations, outLen)) {
						t.Fatalf("PBKDF2 iter=%d output=%d", iterations, outLen)
					}
				}
			}
			for _, outLen := range []int{0, 1, size, size + 1, 4*size + 7, 255 * size} {
				got, err := hkdf.Key(tc.new, []byte(password), salt, "context", outLen)
				if err != nil {
					t.Fatal(err)
				}
				if !bytes.Equal(got, round2ReferenceHKDF(tc.new, []byte(password), salt, "context", outLen)) {
					t.Fatalf("HKDF output=%d", outLen)
				}
			}
			for _, bad := range []int{0, -1} {
				if _, err := pbkdf2.Key(tc.new, password, salt, 2, bad); err == nil {
					t.Fatal("PBKDF2 invalid length accepted")
				}
			}
			if _, err := hkdf.Key(tc.new, []byte(password), salt, "context", 255*size+1); err == nil {
				t.Fatal("HKDF too-long output accepted")
			}
		})
	}
}

var round2Sink []byte

func BenchmarkRound2PublicHMAC(b *testing.B) {
	for _, tc := range round2Hashes() {
		for _, size := range []int{0, 32, 1024} {
			key := bytes.Repeat([]byte{0x76}, 32)
			msg := make([]byte, size)
			b.Run(fmt.Sprintf("%s/%d/Cold", tc.name, size), func(b *testing.B) {
				b.ReportAllocs()
				var out [64]byte
				for b.Loop() {
					h := hmac.New(tc.new, key)
					h.Write(msg)
					round2Sink = h.Sum(out[:0])
				}
			})
			b.Run(fmt.Sprintf("%s/%d/Warm", tc.name, size), func(b *testing.B) {
				h := hmac.New(tc.new, key)
				h.Reset()
				var out [64]byte
				b.ReportAllocs()
				for b.Loop() {
					h.Reset()
					h.Write(msg)
					round2Sink = h.Sum(out[:0])
				}
			})
			b.Run(fmt.Sprintf("%s/%d/TwoUses", tc.name, size), func(b *testing.B) {
				b.ReportAllocs()
				var out [64]byte
				for b.Loop() {
					h := hmac.New(tc.new, key)
					h.Write(msg)
					round2Sink = h.Sum(out[:0])
					h.Reset()
					h.Write(msg)
					round2Sink = h.Sum(out[:0])
				}
			})
		}
	}
}
func BenchmarkRound2PublicPBKDF2(b *testing.B) {
	for _, tc := range round2Hashes() {
		for _, iter := range []int{1, 2, 4096} {
			for _, blocks := range []int{1, 3} {
				n := tc.new().Size() * blocks
				salt := bytes.Repeat([]byte{0x42}, 16)
				b.Run(fmt.Sprintf("%s/Iter%d/Blocks%d", tc.name, iter, blocks), func(b *testing.B) {
					b.ReportAllocs()
					for b.Loop() {
						var err error
						round2Sink, err = pbkdf2.Key(tc.new, "benchmark password", salt, iter, n)
						if err != nil {
							b.Fatal(err)
						}
					}
				})
			}
		}
	}
}
func BenchmarkRound2PublicHKDF(b *testing.B) {
	for _, tc := range round2Hashes() {
		for _, blocks := range []int{1, 2, 8, 255} {
			n := tc.new().Size() * blocks
			secret := bytes.Repeat([]byte{0x42}, 32)
			salt := bytes.Repeat([]byte{0x24}, 32)
			b.Run(fmt.Sprintf("%s/Blocks%d", tc.name, blocks), func(b *testing.B) {
				b.ReportAllocs()
				for b.Loop() {
					var err error
					round2Sink, err = hkdf.Key(tc.new, secret, salt, "benchmark context", n)
					if err != nil {
						b.Fatal(err)
					}
				}
			})
		}
	}
}

// This oracle deliberately accepts the unusual constructor behavior where the
// first hash (outer) differs from the second (inner). Preserve existing behavior
// even though callers should normally return the same algorithm each time.
func round2ReferenceMixedMAC(outerNew, innerNew func() hash.Hash, key, msg []byte) []byte {
	outer, inner := outerNew(), innerNew()
	block := inner.BlockSize()
	if len(key) > block {
		outer.Write(key)
		key = outer.Sum(nil)
		outer.Reset()
	}
	ipad, opad := make([]byte, block), make([]byte, block)
	copy(ipad, key)
	copy(opad, key)
	for i := range ipad {
		ipad[i] ^= 0x36
		opad[i] ^= 0x5c
	}
	inner.Write(ipad)
	inner.Write(msg)
	outer.Write(opad)
	outer.Write(inner.Sum(nil))
	return outer.Sum(nil)
}

func TestRound2HMACMixedNativeConstructors(t *testing.T) {
	cases := []struct {
		name string
		outer, inner func() hash.Hash
	}{
		{"SHA256_SHA512", sha256.New, sha512.New},
		{"SHA512_SHA256", sha512.New, sha256.New},
		{"SHA224_SHA256", sha256.New224, sha256.New},
		{"SHA256_SHA224", sha256.New, sha256.New224},
		{"SHA384_SHA512", sha512.New384, sha512.New},
		{"SHA512_SHA384", sha512.New, sha512.New384},
		{"SHA512_224_SHA512_256", sha512.New512_224, sha512.New512_256},
		{"SHA3_224_SHA3_512", func() hash.Hash { return sha3.New224() }, func() hash.Hash { return sha3.New512() }},
		{"SHA3_256_SHA256", func() hash.Hash { return sha3.New256() }, sha256.New},
	}
	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			for _, keyLen := range []int{16, 64, 129, 301} {
				key := bytes.Repeat([]byte{0x73}, keyLen)
				calls := 0
				newMixed := func() hash.Hash {
					calls++
					if calls%2 == 1 {
						return tc.outer()
					}
					return tc.inner()
				}
				h := hmac.New(newMixed, key)
				check := func(x hash.Hash, msg []byte) {
					t.Helper()
					if x.Size() != tc.outer().Size() || x.BlockSize() != tc.inner().BlockSize() {
						t.Fatal("copy lost the independent inner/outer algorithm variants")
					}
					want := round2ReferenceMixedMAC(tc.outer, tc.inner, key, msg)
					if !bytes.Equal(x.Sum(nil), want) || !bytes.Equal(x.Sum(nil), want) {
						t.Fatalf("mixed constructor output changed, keyLen=%d", keyLen)
					}
				}
				// Sum before any Reset must not initialize a native cache or
				// change the meaning of a later Clone and Reset.
				h.Write([]byte("first"))
				check(h, []byte("first"))
				coldClone, cloneErr := h.(hash.Cloner).Clone()
				if cloneErr != nil && !errors.Is(cloneErr, errors.ErrUnsupported) {
					t.Fatal(cloneErr)
				}
				h.Reset()
				h.Write([]byte("second"))
				check(h, []byte("second"))
				if cloneErr == nil {
					// Original has released its raw pad headers; coldClone must
					// still own valid shared pads until its own first Reset.
					coldClone.Write([]byte("-clone"))
					check(coldClone, []byte("first-clone"))
					coldClone.Reset()
					coldClone.Write([]byte("independent"))
					check(coldClone, []byte("independent"))
				}
				warmClone, err := h.(hash.Cloner).Clone()
				if err == nil {
					warmClone.Reset()
					warmClone.Write([]byte("warm clone"))
					check(warmClone, []byte("warm clone"))
					check(h, []byte("second"))
				} else if !errors.Is(err, errors.ErrUnsupported) {
					t.Fatal(err)
				}
				for i := 0; i < 3; i++ {
					h.Reset()
					h.Reset()
					h.Write([]byte("reused"))
					check(h, []byte("reused"))
				}
			}
		})
	}
}
