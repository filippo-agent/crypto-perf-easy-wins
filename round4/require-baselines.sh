#!/bin/bash
# The historical source-mutating drivers require their measured checkpoints.
# Run in disposable worktrees with the paths below adjusted if necessary.
for item in \
  /home/exedev/go-crypto:2532e0de69344246565a94fc3de14fd4f982b361 \
  /home/exedev/go-pq-stack:db19b48d27dde1bb6c7c2c144ba3099536382374; do
  tree=${item%:*}
  base=${item##*:}
  if [[ $(git -C "$tree" rev-parse HEAD) != "$base" ]] ||
    ! git -C "$tree" diff --quiet HEAD -- src/crypto; then
    echo "Refusing to overwrite measurements: $tree must be clean at $base." >&2
    echo "Use disposable baseline worktrees; the selected source commit is newer." >&2
    exit 1
  fi
done
