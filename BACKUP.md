# Before deleting the VM

**Published alternative:** [PUBLICATION.md](PUBLICATION.md) links the repository,
filtered research conversation, and a checked public research supplement.
The public supplement omits unnecessary page/search caches and has a different
checksum from the original local archive described below.

**Git preserves the production changes, but not all research artifacts.**
At the September 27, 2026 inventory,
this audit had 1,114 untracked files and 406 ignored files. The Go source
worktrees had another 84 untracked entries: 82 source fixtures and two symlinks.
Fetching source commits or cloning this report repository does not preserve
those files. Keeping every compiled binary is optional, not a prerequisite
for landing the source changes.

## What is actually valuable?

* **Landing the SHA-256 change or reporting the round-4 compiler findings:**
  the production commit, selected raw benchmark results, validation results,
  issue drafts, small reproducers, assembly, and compact carry-chain SSA proof
  are already tracked. The full VM backup is not required for those.
* **Landing earlier prototypes or extending the research:** preserve the extra
  correctness/property tests, benchmark harnesses, raw samples and controls,
  experimental patches, and preparation scripts. An exact-content comparison
  found 60 of the 82 source fixtures have no identical copy among this audit
  repository's tracked files. Examples include CTR streaming tests, ML-KEM
  arithmetic/encoding tests, and P-384/wNAF/bigmod experiments.
* **Exact historical binary inspection:** the saved executables are useful
  for re-symbolizing profiles or examining the original build. They account
  for most of the full archive's size. Omitting them loses that convenience,
  not the source patches or already saved disassembly. Rebuilding an
  identical executable is not guaranteed merely by retaining the source.
* **Downloaded pages/search caches and redundant logs:** lower priority.
  They are cheap enough to retain in the compact archive, but are not
  prerequisites for submitting the patches.

### Recommended compact supplement

`/home/exedev/vm-backup/research-sources.tar.gz` contains the audit files
(including untracked and ignored research material), all 82 untracked source
fixtures under `worktree-fixtures/`, and audit metadata/scratch inputs.
It omits Git metadata, compiled ELF executables, Python bytecode caches, and
Shelley history. **Keep the fetched Go source branches and cloned audit
repository as well:** the compact archive is a supplement, not their replacement.

```sh
scp 'lark-zen.exe.xyz:/home/exedev/vm-backup/research-sources.tar.gz*' .
shasum -a 256 -c research-sources.tar.gz.sha256
```

The fixtures cover different historical experiments; do not copy every
fixture into one checkout indiscriminately. Match the associated report,
baseline, and candidate first. Exploratory files are not additional selected
patches or evidence that a rejected candidate should be landed.

## Prepared backups

For a full snapshot instead, the backup directory on this VM is
`/home/exedev/vm-backup`. Copy it to your own machine **before** deleting the VM:

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
The separate Shelley backup is unnecessary if the desired conversation
history and source changes have already been saved elsewhere.

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
