package paddingrange

import "testing"

func TestPadding(t *testing.T) {
	// Near zero and near uint64 wrap, plus large intermediate accumulated lengths.
	for _, base := range []uint64{0, 1024, 1<<32, 1<<63, ^uint64(0)-1023} {
		for offset:=uint64(0); offset<1024; offset++ {
			n:=base+offset
			// Independent oracle: append the mandatory one byte, then walk to the
			// trailer boundary. Do not share the candidate modular-distance math.
			for _, block := range []uint64{64,128} {
				trailer:=block/8
				target:=block-trailer
				tail:=uint64(1)
				for (n+tail)%block != target { tail++ }
				want:=make([]byte,block+trailer)
				want[0]=0x80
				for j:=uint64(0); j<8; j++ { want[tail+trailer-8+j]=byte((n<<3) >> (56-8*j)) }
				if block==64 {
					for _, fn:=range []func(uint64)([72]byte,uint64){Branch256,Mask256} {
						got,length:=fn(n)
						if length!=tail+trailer { t.Fatal(n,block,length) }
						for i,v:=range got { if v!=want[i] { t.Fatal(n,block,i) } }
					}
				} else {
					for _, fn:=range []func(uint64)([144]byte,uint64){Branch512,Mask512} {
						got,length:=fn(n)
						if length!=tail+trailer { t.Fatal(n,block,length) }
						for i,v:=range got { if v!=want[i] { t.Fatal(n,block,i) } }
					}
				}
			}
		}
	}
}
