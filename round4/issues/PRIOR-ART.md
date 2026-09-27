# Round 4 compiler drafts: verified prior art and filing disposition

**Snapshot: September 27, 2026 (UTC). Internal review only; nothing filed.**

## Bottom line

These are useful reproductions and residual optimization cases, **not six newly
discovered compiler problem classes**. Prefer augmentation of existing work where
there is an open natural home. A closed issue is not proof that every related
case was fixed; GitHub's `completed` reason can also accompany a working-as-intended
closure. Recommendations below are triage judgments, not maintainer decisions.

| Draft / component | Recommended first route | What this packet adds |
|---|---|---|
| P-384 tiny carry replay | **Augment #33349**, cross-reference #80399 and #65039; split only if maintainers want a separately tracked residual | Call-free seven-limb replay, one commuted expression, live result limbs, dependent control, phase attribution |
| Negated borrow | **Residual case for #80399's maintainers**, with #76056 context; not a general new carry optimization | `-borrow` versus the already-covered ordinary ADD/SUB consumers, tested working source control |
| Constant 28/32-byte append/copy | **Reasonable narrow follow-up**, cross-reference #41662 and #54467 | Overlap-safe amd64 size/lowering gap, arm64 positive control, distinction from late constant discovery |
| Hash duplicate initialization | **Augment #4750 / #15925** first | Real out-of-line call/branch shape; named-return control; tiny application budget disclosed |
| Hash caller array-result materialization | **Augment #15925**, with #14762 related | Distinct ABI/growslice lifetime problem, outparam control, no frame-size claim |
| Bounded exact multiply/divide | **Reasonable narrow follow-up to #10931 / #25239**, not general reassociation novelty | Explicit local nonoverflow proof + exact divisibility + overflow negative control |
| CBD narrow bit sums | **Augment #27572** first | Narrow-add variant of bounds-informed extension elimination, exhaustive input test, amd64/arm64 evidence |

“Reasonable narrow follow-up” means no exact open tracker was found in the
reviewed search set, **not** that novelty has been established. Offer useful new
cases to known work before opening redundant issues. Existing draft labels such
as “ready to file” describe evidence readiness, not authorization to file a new
standalone issue without this deduplication step.

## Search and verification method

- Read the six requested draft files; inspected issue bodies and technical comments
  from the official `golang/go` GitHub repository. No CPU compilation, build,
  test, benchmark, or profile was run. Existing correctness/performance evidence
  was not revalidated or changed.
- Re-ran GitHub API issue searches with `repo:golang/go is:issue` and URL-encoded
  `q` via `urllib.parse.urlencode` / `curl --data-urlencode`, `per_page=100`.
  `prior-art-snapshot/requests.jsonl` records exact successful API requests and
  retrieval times. Search JSON includes `total_count` and `incomplete_results`.
  Reviewed searches fit in one page; a result containing a term in a comment is
  a lead, not semantic overlap by itself.
- Direct issue API responses and all comments for the main early candidates are
  saved as `issue-N.json` and `comments-N.json`. When unauthenticated API rate
  limits intervened, fetched official GitHub issue pages and saved their embedded
  JSON plus extracted issue/comment objects as `html-data-N.json` and
  `html-extract-N.json`. GitHub page timeline pagination can omit events/comments;
  these are not claimed as complete timelines. Conclusions cite only inspected
  bodies/comments. API comments for #76056/#80399 are complete (16/8 respectively).
- `prior-art-snapshot/index.json` is a normalized status/title/source inventory.
  The tables below report **the actual GitHub state and reason**, not an inferred
  implementation status. Closure timestamps are shown where directly available
  from the API; no date is invented from a last-update field.
- Disregarded the earlier `*search.json`/`*exact.json` files as evidence of relevance
  or exhaustiveness. In particular the old `memmove-exact.json` is not evidence
  for the four issue numbers from the parent summary. Automated “related issues”
  bot suggestions were used only as leads, never as verification.
- Searches covered flagalloc/carry chains/carry consumers; memmove/copy/overlap;
  array returns/zeroing; multiply/divide/overflow/reassociation; zero extensions,
  truncations and narrow arithmetic. The final range searches are important:
  they found #27572 and #10931, which title-only searches had missed.

## 1. Carry-chain replay: old mechanism, useful sharper reproducer

| Issue (verified exact title) | Snapshot state / reason | Closed at (UTC, when fetched from API) |
|---|---|---|
| [#33349: cmd/compile: redundant moves and stack variables when function using bits.Add64 is inlined](https://github.com/golang/go/issues/33349) | open / — | — |
| [#65039: cmd/compile: flagalloc doesn't delete dead instructions](https://github.com/golang/go/issues/65039) | open / — | — |
| [#24537: cmd/compile: less optimized AMD64 code](https://github.com/golang/go/issues/24537) | open / — | — |
| [#80399: cmd/compile: materialized bits.Add64/Sub64 carries no longer fold into consumers on amd64 (regression from CL 778140)](https://github.com/golang/go/issues/80399) | closed / completed | 2026-07-15T18:38:48Z |
| [#80400: cmd/compile: add memory operand ADC and SBB to `AMD64.rules`](https://github.com/golang/go/issues/80400) | open / — | — |

**Closest old diagnosis:** #33349's
[compiler-maintainer explanation](https://github.com/golang/go/issues/33349#issuecomment-516128652)
identifies a scheduled Add64 whose carry is needed after memmove; flagalloc reissues
the flag-generating arithmetic. A
[later comment](https://github.com/golang/go/issues/33349#issuecomment-525035964)
explains why merely advancing flag users is insufficient and calls for better
scheduling. That is substantial semantic overlap with the present flag-lifetime /
recomputation mechanism. Our absence of calls/inlining, commutation of two carries,
seven-instruction recursive replay, and preserved result limbs make a stronger
additional reproducer, not discovery of flag recomputation itself.

#65039 and #24537 concern old flag producers becoming dead after replacement.
Their visible comments link CL 804181; both issues are still **open** in this
snapshot. Do not infer a landed fix from a bot's change link. Deleting dead
comparisons does not by itself solve our replay: the first arithmetic chain
still supplies live limb results.

**Already implemented scheduling prior art:**
[commit c386269ed8746304b219d5be7d673539ae1e2643](https://github.com/golang/go/commit/c386269ed8746304b219d5be7d673539ae1e2643),
“cmd/compile: schedule carry chain arithmetic disjointly” (CL 393656), explicitly
addresses expensive carry clobbers in generated elliptic arithmetic. The inspected
patch's carry-op classification is PPC64-specific. Cite it as historical design
prior art, not a fix already covering these amd64 operations or as evidence of
our current timing. Commit search and patch are saved locally.

**Immediate rewrite provenance:** #80399 documents a materialized-carry consumer
regression. Its actual
[fix 0a6ccc557a7205172a9db17acb76cb18428a441e](https://github.com/golang/go/commit/0a6ccc557a7205172a9db17acb76cb18428a441e)
(CL 800460) adds exactly the ADDQ/SUBQ widened-SETB folds implicated in the draft.
This is verified source history, not a tested regression bisection of the new
reproducer. The issue even calls for a fallback when flags cannot be scheduled
to the consumer. #80400 instead requests memory operands for ADC/SBB: adjacent
carry work, not the same replay bug.

**Disposition:** augment #33349 first, cross-link #80399; describe a residual
consumer-orientation/lifetime case. If maintainers prefer a new tracked issue,
the narrow current title is defensible with these links. Keep the unresolved
full P-384 Square/Mul latency explanation separate.

## 2. Negated borrow: missing consumer of established canonicalization

| Issue (verified exact title) | Snapshot state / reason | Closed at (UTC, when fetched from API) |
|---|---|---|
| [#76056: cmd/compile: optimize conditional subtractions](https://github.com/golang/go/issues/76056) | closed / completed | 2026-05-15T23:24:02Z |
| [#68961: cmd/compile: amd64 carry flag spilling uses SBBQ + NEGQ instead of SETCS](https://github.com/golang/go/issues/68961) | closed / completed | 2026-07-14T13:16:11Z |
| [#76066: cmd/compile: on `AMD64` slow instruction sequence to Zext a < register size instruction output](https://github.com/golang/go/issues/76066) | open / — | — |

#76056's body concerns conditional modular subtraction and borrow-driven selection;
its comments document the related intrinsic/CMOV work. The linked actual
[commit 212065c9221bc01b176ce5820fccae19c2a54c4b](https://github.com/golang/go/commit/212065c9221bc01b176ce5820fccae19c2a54c4b)
(CL 778140) replaces NEG(SBB carrymask) materialization with MOVBQZX(SETB).
#68961's closing comment explicitly identifies that commit; its original concern
was how to materialize a 0/1 carry, not the present all-bits mask.

The stronger overlap is **#80399** above: missing ordinary-arithmetic consumers of
that changed representation. The inspected fix adds ADDQ/SUBQ rules and codegen
tests for `s+carry` and `s-carry`; it adds neither a NEG rule nor a `-borrow` test.
That supports treating our case as a residual consumer, not a claim that #80399's
original test still fails. #76066 is SETcc zero-extension scheduling/latency work,
not the same negated-mask fold. Its discussion also corrects an initial hardware
fusion assumption; do not copy the early claim as established CPU fact.

**Disposition:** submit the case to the #80399 workstream first, with #76056
context; an explicitly requested follow-up is better than an unqualified new
carry-to-mask issue. No empirical end-to-end speedup or historical regression
range is added by this review.

## 3. Constant append/memmove: distinguish sizes and legality

| Issue (verified exact title) | Snapshot state / reason | Closed at (UTC, when fetched from API) |
|---|---|---|
| [#41662: cmd/compile: missed opportunity to inline runtime.memmove](https://github.com/golang/go/issues/41662) | closed / completed | 2021-05-12T16:24:06Z |
| [#54467: cmd/compile: miscompilation of partially-overlapping array assignments](https://github.com/golang/go/issues/54467) | closed / completed | 2022-08-23T19:58:06Z |

#41662's entire reproducer is an 8-byte `copy` after a bounds assertion. Its
constant size was not visible at the appropriate generic optimization stage;
technical comments recommend architecture-specific memmove inlining, with
CL 289151 linked. Our 28/32-byte potentially overlapping copies are a different
size/overlap-lowering case. Calling small-copy inlining new, or claiming to have
rediscovered an unfixed #41662 without this distinction, would be misleading.

#54467 is direct correctness precedent: assignment through pointers to overlapping
arrays was miscompiled because source loads and destination stores were
interleaved. Its comments discuss OpMove/disjointness and link CL 425076. It
supports the draft's load-all-before-store obligation and cautions against merely
raising a threshold; it is not evidence that this new draft observes corruption.

Screened nonduplicates include #57759 (exact same-address append avoidance),
#36405 (already-inline small appends and hardware store/load interactions), and
#18529 (temporary slice/inlining/BCE). None is the same general 28/32-byte
potential-overlap lowering request. Their raw records are saved; they need not
clutter the filing draft.

**Disposition:** a narrow follow-up on overlap-safe fixed-size amd64 lowering is
reasonable after linking #41662/#54467. A narrower fresh-stack-local alias-proof
improvement is a separate possible implementation route, not proof that generic
arbitrary-overlap lowering is safe. No exact open duplicate was located; this
negative search result is provisional.

## 4. Hash result pipeline: two established families, not one new bug

| Issue (verified exact title) | Snapshot state / reason | Closed at (UTC, when fetched from API) |
|---|---|---|
| [#4750: cmd/compile: omit zeroing of named return value when possible](https://github.com/golang/go/issues/4750) | open / — | — |
| [#15925: cmd/compile: SSA performance regression due to array zeroing](https://github.com/golang/go/issues/15925) | open / — | — |
| [#14762: cmd/compile: let SSA store to PPARAMOUT variables earlier than return](https://github.com/golang/go/issues/14762) | open / — | — |
| [#67957: cmd/compile: double zeroing and unnecessary copying/stack use](https://github.com/golang/go/issues/67957) | closed / completed | 2024-07-23T20:56:16Z |
| [#47107: cmd/compile: eliminate redundant zeroing after lower pass](https://github.com/golang/go/issues/47107) | closed / completed | 2025-02-04T20:52:36Z |
| [#59021: cmd/compile: small struct initialization code is suboptimal because of redundant zeroing](https://github.com/golang/go/issues/59021) | closed / completed | 2024-04-25T20:08:05Z |

#4750 reports unnecessary result-area initialization; its later discussion notes
that both named and unnamed return spellings acquired it. #15925 already records
array zeroing, intermediate result copies, and output-pointer workarounds.
#14762 tracks the distinct callee-side restriction on storing to output parameters
before return. Together these are a natural home for the two-stage hash-like
example. The draft's named-return positive control does not contradict #4750's
older spelling comparison: different call shapes and compiler versions are involved.

#67957's
[maintainer diagnosis](https://github.com/golang/go/issues/67957#issuecomment-2166441560)
separates redundant zeroing blocked by an InlMark from temporary aggregate
materialization constrained by store-count rules. #47107's comments discuss
LocalAddr memory effects and combining overwritten ranges; #59021 addresses
equivalent LocalAddr identities. These closed issues establish DSE prior art,
not a claim that an intervening out-of-line call/branch is already handled.
Our draft has no per-pass proof that it is the identical historical failure.

**Disposition A:** augment #4750/#15925 with the duplicate clear across the
hash-like call. Retain the tiny profile budget and negative named-return timing.
**Disposition B:** attach caller result materialization separately to #15925,
with #14762 as context. Its ABI result-slot/growslice lifetime constraints mean
“delete the copy” is not already a proven compiler patch. Do not bundle the
independent append miss as if outparam forwarding solved it. A maintainer-requested
split may be useful, but two generic new optimization discoveries would not be.

## 5. Bounded constant multiply/divide: old caveat, legally restricted case

| Issue (verified exact title) | Snapshot state / reason | Closed at (UTC, when fetched from API) |
|---|---|---|
| [#10931: cmd/compile: constant evaluation could commute and associate](https://github.com/golang/go/issues/10931) | closed / completed | not extracted |
| [#25239: cmd/compile: use proved bounds to remove signed division fix-ups](https://github.com/golang/go/issues/25239) | closed / completed | 2018-10-23T02:30:41Z |
| [#49495: cmd/compile compiler can't optimize calculations with constants](https://github.com/golang/go/issues/49495) | closed / completed | not extracted |

#10931 is unusually close prior art: it explicitly includes integer `x*100/10`.
The author's
[correction](https://github.com/golang/go/issues/10931#issuecomment-104487675)
withdraws division reassociation because of possible overflow. Later closure
reports successful **multiplication** constant combining, not a universal integer
multiply/divide cancellation fix. The masked and wider-intermediate cases in this
packet address exactly the missing legality condition and retain a counterexample
when that condition fails.

#25239 is range-based removal of signed-division correction, already distinct from
cancelling the reciprocal multiply/shift. #49495 is the floating-point analogue;
its closed/completed status reflects rejection as intended IEEE-sensitive
behavior, not implementation of the requested reassociation. #50126 (Abs
multiplication/division) is also floating/complex arithmetic, not this integer fold.

**Disposition:** a guarded integer follow-up referencing #10931/#25239 is
reasonable; no exact open tracker was found. Explain exact divisibility AND
nonoverflow as the contribution, not “compiler cannot combine constants.” The
masked source and overflowing negative control are essential. No new compiler
range machinery, blanket algebraic identity, or API speedup is claimed.

## 6. CBD narrow sums: additional range/extension test for an open issue

| Issue (verified exact title) | Snapshot state / reason | Closed at (UTC, when fetched from API) |
|---|---|---|
| [#27572: cmd/compile: eliminate unnecessary extend-of-truncate calculations in prove pass](https://github.com/golang/go/issues/27572) | open / — | — |
| [#36897: cmd/compile: possible latent codegen issue on amd64 removing zero extensions](https://github.com/golang/go/issues/36897) | open / — | — |
| [#42162: cmd/compile: find a good way to eliminate zero/sign extensions on arm64](https://github.com/golang/go/issues/42162) | closed / completed | 2023-02-28T03:17:17Z |

#27572 already sketches bounds-guided elimination of an explicit
uint64→uint32→uint64 roundtrip and asks whether more variants/useful occurrences
justify generalizing it. The bit-pair case has a narrow arithmetic producer,
not that exact explicit cast graph, but its nonoverflow proof supplies a useful
additional instance of the same range/extension opportunity.

#36897 documents the danger of dropping zero extensions based on a producer's
upper-bit side effects when another rewrite later removes that producer.
Consequently the draft is right to distinguish a narrow SSA range from actual
machine upper bits. #42162 addresses arm64 extension/bitfield rewrite ordering,
not specifically bounded addition. #77380 (bit-vector tests and a widened-word
workaround) and #43357 (extensions before arm64 comparisons) were also inspected;
they are related examples, not proof of an exact duplicate or a fix for this sum.

**Disposition:** augment #27572 with the full-domain bit-pair test, the four-pair
workload occurrence and both architectures. Let maintainers decide whether
narrow-add promotion warrants its own lowering issue. Do not report general
redundant-extension elimination as newly discovered.

## Correction of the suspect parent-summary citations

Direct issue retrieval, not the old memmove search, gives:

| Issue (verified exact title) | Snapshot state / reason | Closed at (UTC, when fetched from API) |
|---|---|---|
| [#55111: go tool compile](https://github.com/golang/go/issues/55111) | closed / not_planned | 2022-09-16T21:48:47Z |
| [#41662: cmd/compile: missed opportunity to inline runtime.memmove](https://github.com/golang/go/issues/41662) | closed / completed | 2021-05-12T16:24:06Z |
| [#46008: doc/go1.17: document database/sql changes for Go 1.17](https://github.com/golang/go/issues/46008) | closed / completed | 2021-05-21T17:44:28Z |
| [#78060: crypto/internal/fips140test: TestIntegrityCheckFailure failures](https://github.com/golang/go/issues/78060) | open / — | — |

Only **#41662** is relevant memmove compiler prior art. #55111 is a short
compiler-tool usage report, #46008 is release documentation for database/sql,
and #78060 concerns a FIPS integrity-test failure. **Do not cite those other
three as copy/append optimization bugs.** Their body/comment snapshots are saved
so the correction is independently auditable.

## Deliverables and remaining uncertainty

Added narrowly scoped related-work/filing-route paragraphs to the six requested
drafts (replacing only carry-select's already-existing prior-art section).
No assembly, measurements, tests, implementation claims or production decisions
were rewritten. `ISSUE-DRAFT-shift51.md` was outside the requested finished set
and was not changed.

The review is a bounded primary-source search, not an exhaustive history of all
Go compiler changes. Statuses are point-in-time; recheck before any external
interaction. None of the inspected source changes was compiled or benchmarked
here. A commit's existence, issue closure, suggested candidate rule, or apparent
source equivalence must not be substituted for a tested patch or regression
range. The filing value is precise residual evidence that helps existing compiler
work, whether it ultimately becomes an issue comment, test case, CL, or new
narrowly scoped tracker.
