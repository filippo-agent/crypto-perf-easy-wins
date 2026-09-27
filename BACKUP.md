# Before deleting the VM

**Do not rely on Git fetch/clone alone.** At the September 27, 2026 inventory,
this audit had 1,114 untracked files and 406 ignored files. The Go source
worktrees had another 84 untracked files, including benchmark/test fixtures.
Fetching source commits or cloning this report repository does not preserve
those files. In particular, retain the saved binaries used with the profiles
and disassembly, not just the final production patches.

## Prepared backups

The backup directory on this VM is `/home/exedev/vm-backup`. Copy it to your
own machine **before** deleting the VM:

```sh
scp -r lark-zen.exe.xyz:/home/exedev/vm-backup .
cd vm-backup
shasum -a 256 -c SHA256SUMS
```

On Linux, `sha256sum -c SHA256SUMS` is also suitable. Both archives should
report `OK`. Check that their contents can be listed or extracted locally.

* **`crypto-audit.tar.gz`**: the complete `crypto-audit`, `go-crypto`, and
  `go-pq-stack` directories, including Git metadata, all branches, untracked
  and ignored artifacts, compiled Go tools, and saved benchmark binaries.
  Also includes `go/bin/benchstat` and `audit-metadata/` with repository
  inventories, machine/toolchain information, and remaining audit scratch
  files from `/tmp`.
* **`shelley-private.tar.gz`**: a consistent SQLite snapshot of the local
  conversation database, the Shelley guidance file, and a standalone Git
  bundle containing all refs from the local Shelley repository. That bundle
  preserves both the customization branch and the local sender-classification
  fix. Relevant build logs and the patch/PR draft are included.
  **This archive contains private conversation history; do not publish it.**
  The conversation snapshot is taken during backup creation, not after the
  final chat response.
* **`SHA256SUMS`**: checksums of both archives.

These are project backups, not a VM image. They intentionally omit general
package/download caches, Node dependencies, credentials, and unrelated VM
configuration. The saved Go and benchmark executables target Linux/amd64.

## Restoring the audit

Extract into an empty directory:

```sh
mkdir recovered-audit
tar -xzf crypto-audit.tar.gz -C recovered-audit
```

`go-pq-stack` is a linked worktree of `go-crypto`. Its `.git` file originally
points to an absolute VM path. After relocating both directories, repair
that linkage before using Git in the PQ tree:

```sh
root="$(cd recovered-audit && pwd)"
git -C "$root/go-crypto" worktree repair "$root/go-pq-stack"
git -C "$root/go-crypto" worktree list
git -C "$root/go-pq-stack" status --short
```

The untracked fixtures in `status` are expected. Many measurement scripts
also use absolute `/home/exedev/...` paths; adjust those paths or restore
the original layout before rerunning them.

The source repository is shallow. The archive preserves its existing
objects, shallow boundary, and refs; it does not claim to contain all upstream
Go history.

## Restoring local Shelley source

```sh
tar -xzf shelley-private.tar.gz
git clone shelley-private/shelley.bundle recovered-shelley
git -C recovered-shelley branch -a
```

Keep the database snapshot separately as history. Do not overwrite a running
Shelley installation's database with it. No credentials are required to read
the archived Git bundle or database offline.
