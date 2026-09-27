# Published research snapshot

Published September 27, 2026:

* Repository: https://github.com/filippo-agent/crypto-perf-easy-wins
* Original research conversation:
  https://gist.github.com/filippo-agent/4a76063873cdd5221ee0710803e6784b
* Research supplement:
  https://github.com/filippo-agent/crypto-perf-easy-wins/releases/tag/research-snapshot-2026-09-27

Release downloads:

* [research-sources.tar.gz](https://github.com/filippo-agent/crypto-perf-easy-wins/releases/download/research-snapshot-2026-09-27/research-sources.tar.gz)
* [research-sources.tar.gz.sha256](https://github.com/filippo-agent/crypto-perf-easy-wins/releases/download/research-snapshot-2026-09-27/research-sources.tar.gz.sha256)

The Go source branches were separately fetched to the research owner's
machine. This repository contains the audit reports, selected patch files,
measurements, and compiler reproductions, not a complete Go checkout.

## Conversation export

The gist was generated with Shelley's actual conversation-to-Markdown
formatter and **Only user messages and final answers** enabled
(`onlyFinalAnswers: true`).

It contains the original `crypto-performance-optimizations` conversation:
**9 human user messages and 6 final assistant answers**. Tool calls/results,
thinking blocks, intermediate commentary, and subagent messages are excluded.
It is a historical conversation: later reports qualify or supersede some
earlier recommendations. Consult the round READMEs for the final conclusions.

## Research supplement

The public `research-sources.tar.gz` is a compact source/data supplement:

* Audit research material, including otherwise untracked fixtures,
  exploratory patches, raw measurements, controls, and negative results.
* All 82 untracked Go source fixtures from the main and PQ worktrees.
* Source/machine metadata and useful scratch inputs.
* `CONTENTS.sha256` for the archived regular files.
* `PUBLICATION-NOTES.md` listing publication-specific omissions.

It excludes compiled executables, Git metadata, the Shelley conversation
database, and full tool/thinking transcripts. It also omits 104 unnecessary
cached HTML/header files and untracked GitHub issue/search-page JSON files.
Those caches included credential-like strings from upstream issue content
and expired signed-image URLs. Tracked prior-art evidence is retained.

This is a **publication copy**, not byte-identical to the earlier private
11 MB supplement. The original local archive was not modified.

* Size: **9,427,655 bytes**
* SHA-256:
  `34e8f047528ba364ef953fdfc23e3d5d6617c7db95560918a1f346798f2c0f84`

Download the archive and its `.sha256` file together, then:

```sh
shasum -a 256 -c research-sources.tar.gz.sha256
```

The fixtures span different experimental baselines and include rejected
prototypes. They are not all intended to compile in the same checkout or
to become upstream regression tests unchanged.

## Publication checks and limits

* Gitleaks **8.30.1** scanned the audit repository's complete reachable Git
  history and the filtered conversation export: no findings.
* The original archive produced 67 scanner findings. Removing unnecessary
  page/search caches reduced the public copy to 18 findings, all reviewed:
  six unchanged public BearSSL sample private keys, five known-answer/test
  vector matches, and seven Go identifier false positives.
* An independent local review covered the Git object database, archive
  contents, compressed profiles, and PDF text. No live operational
  credentials or non-test private keys were identified.
* Archive content hashes and the exported gist content were verified.
  Both CLI and anonymous downloads of the release assets matched the
  original archive and checksum file.

This is a heuristic and contextual review, not a guarantee against every
possible secret format. Public test keys remain as test/reference data.
Ordinary provenance metadata remains visible: author names/emails, local
paths, the former VM hostname, and benchmark hardware/toolchain details.
The separate private Shelley backup is **not published**.
