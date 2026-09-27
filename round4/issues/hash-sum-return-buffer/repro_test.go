package hashsumreturn

import (
	"bytes"
	"testing"
)

// Bytewise independent oracle; no binary helpers/shared candidate code.
func oracle(d State) (out [32]byte) {
	d.Words[0] += uint32(d.Length)
	n := 8
	if d.Short { n = 7 }
	for i:=0; i<n; i++ {
		for j:=0; j<4; j++ { out[4*i+j] = byte(d.Words[i] >> uint(24-8*j)) }
	}
	return
}

func TestReturnAndSnapshot(t *testing.T) {
	for k:=0; k<257; k++ {
		d := State{Length:uint64(k)*0x123456789, Short:k%2==0}
		for i:=range d.Words { d.Words[i] = uint32(k)*0x9e3779b9+uint32(i)*0xfedcba98 }
		for i:=range d.Buffer { d.Buffer[i] = byte(i+k) }
		want := oracle(d)
		for _, fn := range []func(*State)[32]byte{ReturnLocal, ReturnNamed} {
			dup:=d
			if got:=fn(&dup); got!=want { t.Fatalf("return k=%d",k) }
		}
		dup:=d
		var out [32]byte
		Into(&dup,&out)
		if out!=want { t.Fatalf("into k=%d",k) }
		n:=32
		if d.Short { n=28 }
		for _, fn := range []func(*State,[]byte)[]byte{SumLocal,SumNamed,SumInto} {
			for _, cap := range []int{3, 32, 64} {
				in:=make([]byte,3,cap)
				copy(in,[]byte{4,5,6})
				snapshot:=d
				got:=fn(&d,in)
				if !bytes.Equal(got[:3],[]byte{4,5,6}) || !bytes.Equal(got[3:],want[:n]) || d!=snapshot { t.Fatal("Sum immutability/output") }
			}
		}
	}
}
