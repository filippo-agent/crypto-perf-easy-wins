// Package hashsumreturn isolates SHA2's returned fixed-byte-array construction.
// NOT a crypto implementation; do not use helper timings as hash/HMAC timings.
package hashsumreturn

import "encoding/binary"

type State struct {
	Words [8]uint32
	Buffer [64]byte
	N int
	Length uint64
	Short bool
}

// barrier preserves the out-of-line, state-mutating call preceding serialization
// in SHA2 checkSum, without unrelated compression/padding code. This is only a
// compiler reduction. Full operation costs MUST use the real HMAC benchmark in
// ../constant-append-memmove against original/patched GOROOTs.
//go:noinline
func barrier(d *State) { d.Words[0] += uint32(d.Length) }

//go:noinline
func ReturnLocal(d *State) [32]byte {
	barrier(d)
	if d.N != 0 { panic("nonempty final buffer") }
	var out [32]byte
	binary.BigEndian.PutUint32(out[0:], d.Words[0])
	binary.BigEndian.PutUint32(out[4:], d.Words[1])
	binary.BigEndian.PutUint32(out[8:], d.Words[2])
	binary.BigEndian.PutUint32(out[12:], d.Words[3])
	binary.BigEndian.PutUint32(out[16:], d.Words[4])
	binary.BigEndian.PutUint32(out[20:], d.Words[5])
	binary.BigEndian.PutUint32(out[24:], d.Words[6])
	if !d.Short { binary.BigEndian.PutUint32(out[28:], d.Words[7]) }
	return out
}

//go:noinline
func ReturnNamed(d *State) (out [32]byte) {
	barrier(d)
	if d.N != 0 { panic("nonempty final buffer") }
	binary.BigEndian.PutUint32(out[0:], d.Words[0])
	binary.BigEndian.PutUint32(out[4:], d.Words[1])
	binary.BigEndian.PutUint32(out[8:], d.Words[2])
	binary.BigEndian.PutUint32(out[12:], d.Words[3])
	binary.BigEndian.PutUint32(out[16:], d.Words[4])
	binary.BigEndian.PutUint32(out[20:], d.Words[5])
	binary.BigEndian.PutUint32(out[24:], d.Words[6])
	if !d.Short { binary.BigEndian.PutUint32(out[28:], d.Words[7]) }
	return
}

// Into leaves the last four bytes unchanged for Short, like the proposed private
// checkSum helper whose only caller supplies a zeroed array. Not an unrestricted
// semantic equivalent to ReturnLocal unless that precondition holds.
//go:noinline
func Into(d *State, out *[32]byte) {
	barrier(d)
	if d.N != 0 { panic("nonempty final buffer") }
	binary.BigEndian.PutUint32(out[0:], d.Words[0])
	binary.BigEndian.PutUint32(out[4:], d.Words[1])
	binary.BigEndian.PutUint32(out[8:], d.Words[2])
	binary.BigEndian.PutUint32(out[12:], d.Words[3])
	binary.BigEndian.PutUint32(out[16:], d.Words[4])
	binary.BigEndian.PutUint32(out[20:], d.Words[5])
	binary.BigEndian.PutUint32(out[24:], d.Words[6])
	if !d.Short { binary.BigEndian.PutUint32(out[28:], d.Words[7]) }
}

//go:noinline
func SumLocal(d *State, in []byte) []byte {
	dup := *d
	out := ReturnLocal(&dup)
	if dup.Short { return append(in, out[:28]...) }
	return append(in, out[:]...)
}

//go:noinline
func SumInto(d *State, in []byte) []byte {
	dup := *d
	var out [32]byte
	Into(&dup, &out)
	if dup.Short { return append(in, out[:28]...) }
	return append(in, out[:]...)
}

// SumNamed holds the two-stage snapshot/array-return/append shape constant while
// using the named-return callee. It separates zeroing changes from outparam ABI.
//go:noinline
func SumNamed(d *State, in []byte) []byte {
	dup := *d
	out := ReturnNamed(&dup)
	if dup.Short { return append(in, out[:28]...) }
	return append(in, out[:]...)
}
