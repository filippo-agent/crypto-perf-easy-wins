package carrysumprobe

import "testing"

var sink [15]uint64

func benchmarkInputs() (a, b [14]uint64) {
	for i := range a {
		a[i] = ^uint64(0) - uint64(i*17)
		b[i] = uint64(0x8a5bd9386) + uint64(i*13)
	}
	return
}

func BenchmarkCarry(b *testing.B) {
	b.Run("IndependentAB", func(b *testing.B) {
		a, c := benchmarkInputs()
		var out [15]uint64
		for b.Loop() {
			IndependentAB(&out, &a, &c)
		}
		sink = out
	})
	b.Run("IndependentBA", func(b *testing.B) {
		a, c := benchmarkInputs()
		var out [15]uint64
		for b.Loop() {
			IndependentBA(&out, &a, &c)
		}
		sink = out
	})
	b.Run("ReorderedAB", func(b *testing.B) {
		a, c := benchmarkInputs()
		var out [15]uint64
		for b.Loop() {
			ReorderedAB(&out, &a, &c)
		}
		sink = out
	})
	b.Run("ReorderedBA", func(b *testing.B) {
		a, c := benchmarkInputs()
		var out [15]uint64
		for b.Loop() {
			ReorderedBA(&out, &a, &c)
		}
		sink = out
	})
	b.Run("DependentAB", func(b *testing.B) {
		a, c := benchmarkInputs()
		var out [15]uint64
		for b.Loop() {
			DependentAB(&out, &a, &c)
		}
		sink = out
	})
	b.Run("DependentBA", func(b *testing.B) {
		a, c := benchmarkInputs()
		var out [15]uint64
		for b.Loop() {
			DependentBA(&out, &a, &c)
		}
		sink = out
	})
}
