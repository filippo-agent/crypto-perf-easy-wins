package paddingrange

import "encoding/binary"

//go:noinline
func Branch256(n uint64) ([72]byte, uint64) {
	var tmp [72]byte
	tmp[0] = 0x80
	var t uint64
	if n%64 < 56 { t = 56-n%64 } else { t = 120-n%64 }
	pad := tmp[:t+8]
	binary.BigEndian.PutUint64(pad[t:], n<<3)
	return tmp, uint64(len(pad))
}

//go:noinline
func Mask256(n uint64) ([72]byte, uint64) {
	var tmp [72]byte
	tmp[0] = 0x80
	t := (55-n)&63 + 1
	pad := tmp[:t+8]
	binary.BigEndian.PutUint64(pad[t:], n<<3)
	return tmp, uint64(len(pad))
}

//go:noinline
func Branch512(n uint64) ([144]byte, uint64) {
	var tmp [144]byte
	tmp[0] = 0x80
	var t uint64
	if n%128 < 112 { t = 112-n%128 } else { t = 240-n%128 }
	pad := tmp[:t+16]
	binary.BigEndian.PutUint64(pad[t+8:], n<<3)
	return tmp, uint64(len(pad))
}

//go:noinline
func Mask512(n uint64) ([144]byte, uint64) {
	var tmp [144]byte
	tmp[0] = 0x80
	t := (111-n)&127 + 1
	pad := tmp[:t+16]
	binary.BigEndian.PutUint64(pad[t+8:], n<<3)
	return tmp, uint64(len(pad))
}
