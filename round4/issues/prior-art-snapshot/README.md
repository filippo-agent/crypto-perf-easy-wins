# Primary-source snapshot

Retrieved September 27, 2026 UTC. See `../PRIOR-ART.md` for interpretation.

- `requests.jsonl`: successful encoded issue-search and direct API URLs/timestamps.
- `search-N.json`: API search responses. All successful result sets fit one page.
- `issue-N.json`, `comments-N.json`: original API responses (comments requested up to 100).
- `html-data-N.json`: official GitHub page embedded application JSON.
- `html-extract-N.json`: extracted issue and visible comments; not necessarily the full timeline.
- `index.json`: normalized issue title/status/source inventory; prefer API where both exist.
- `commit-search-*.json`, `*.patch`: verified official golang/go commit history/diffs.

Do not infer a change was merged from a bot comment alone. `closed/completed`
does not always mean the proposed optimization was implemented.
