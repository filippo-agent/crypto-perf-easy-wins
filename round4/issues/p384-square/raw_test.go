//go:build original

package p384issue

import "testing"

func init() {
	squares["raw"] = RawSquare
	multiplies["raw"] = RawMul
}
func BenchmarkRaw(b *testing.B) {
	b.Run("Square", func(b *testing.B) {
		x := benchInput()
		for b.Loop() {
			RawSquare(&x, &x)
		}
		sink = x
	})
	b.Run("Mul", func(b *testing.B) {
		x := benchInput()
		for b.Loop() {
			RawMul(&x, &x, &x)
		}
		sink = x
	})
}
