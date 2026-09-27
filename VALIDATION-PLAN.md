# Final validation plan

Only run after timing jobs finish. No concurrent compilation/test workloads during reported measurements.

1. Select qualifying production patches; remove weak/known/out-of-scope experiments from source. Keep independent before/after binaries and exploratory files in report tree.
2. `GOMAXPROCS=2 bin/go test -short -p=2 crypto/...` (full current-tree short suite; record exclusions/failures, do not imply tests skipped by -short ran).
3. Focused changed packages in `-tags=purego`, and `GOARCH=386 CGO_ENABLED=0` where the host can execute 32-bit Go binaries.
4. `GODEBUG=fips140=on` focused changed public/internal packages; frozen snapshots are never rewritten.
5. Race test changed public packages plus alias/padding/property probes where practical.
6. Record commands/exits/logs. No claim of cross-architecture performance, completed certification, or full cryptographic security audit.
