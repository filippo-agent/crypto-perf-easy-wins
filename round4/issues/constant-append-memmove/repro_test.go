package constantappend

import (
	"bytes"
	"crypto/hmac"
	"crypto/sha256"
	"testing"
)

var Sink []byte

func TestAppends(t *testing.T) {
	variants := []struct {
		name string
		fn func([]byte, *[32]byte) []byte
		n int
	}{{"append", Append32, 32}, {"short", Append28, 28}, {"local", Local32, 32}, {"array", Array32, 32}, {"scalar", Scalar32, 32}}
	for _, v := range variants {
		for _, capacity := range []int{0, 5, 17, 36, 37, 64, 128} {
			for _, sourceAt := range []int{0, 3, 5, 11, 32, 63} {
				var backing [128]byte
				for i := range backing { backing[i] = byte(i*37+sourceAt+capacity) }
				p := (*[32]byte)(backing[sourceAt:])
				length := 5
				if capacity < length { length = capacity }
				in := backing[:length:capacity]
				want := make([]byte, length+v.n)
				copy(want, in)
				copy(want[length:], p[:v.n])
				got := v.fn(in, p)
				if !bytes.Equal(got, want) { t.Fatalf("%s cap=%d at=%d", v.name, capacity, sourceAt) }
			}
		}
		if got := v.fn(nil, new([32]byte)); len(got) != v.n { t.Fatal(v.name) }
	}
}

func TestCopyOverlap(t *testing.T) {
	for _, delta := range []int{-31, -16, -1, 0, 1, 16, 31} {
		var b [128]byte
		for i := range b { b[i] = byte(i*43+7) }
		snapshot := [32]byte(b[48:80])
		Copy32((*[32]byte)(b[48+delta:]), (*[32]byte)(b[48:]))
		if [32]byte(b[48+delta:48+delta+32]) != snapshot { t.Fatal(delta) }
	}
}

// This benchmark intentionally measures a REAL complete public HMAC operation,
// not the reduced helper. Build unchanged against baseline/patched GOROOTs.
// Reset amortizes the existing checkpoint preparation, matching parent profile.
func BenchmarkPublicWarmHMAC(b *testing.B) {
	key, msg := make([]byte, 32), make([]byte, 32)
	for i := range key { key[i], msg[i] = byte(i*17+5), byte(i*29+7) }
	h := hmac.New(sha256.New, key)
	h.Reset()
	out := make([]byte, 0, 32)
	b.ReportAllocs()
	b.ResetTimer()
	for i:=0; i<b.N; i++ {
		h.Reset()
		h.Write(msg)
		out = h.Sum(out[:0])
	}
	Sink = out
}
