# improve.py — a multi-model writing pipeline

`improve.py` runs an essay chapter through three roles in sequence:

```
REVIEW  ->  PLAN  ->  WRITE
```

- **REVIEW** — one or more models each read the chapter and return a critique
  (factual errors, logical gaps, style, bias). The critiques are merged into
  `<stem>-comments.md`, with the reviewers anonymized as *Reviewer A / B / C*.
- **PLAN** — one model reads the chapter plus the merged comments and decides,
  point by point, what to accept and what to refute. Saved to `<stem>-plan.md`.
  This file holds the valuable insights and is **kept** (tracked in git).
- **WRITE** — one model rewrites the chapter, silently incorporating the points
  it accepts, and **overwrites the original in place**.

## Usage

```bash
# defaults: review with gemini, openai, mistral; plan and write with claude
improve myfile.md

# assign any model to any role
improve myfile.md --review gemini,mistral --plan openai --write claude

# stop after PLAN, leave the original untouched
improve myfile.md --no-write

# print the prompts that would be sent, call no APIs
improve myfile.md --dry-run

# cold run: drop the author profile and reference papers
improve myfile.md --no-context

# process several files at once (keep the number small — rate limits)
improve --jobs 2 a.md b.md c.md
```

Available models are listed in the `MODELS` registry at the top of the script.
Adding a model is one line there; it can then play any role.

## Files produced

For input `myfile.md`:

| File | Purpose | Lifetime |
|------|---------|----------|
| `myfile.md` | the revised chapter (overwrites the input) | tracked in git |
| `myfile-backup.md` | the original, copied before the first run | delete manually (git-ignored) |
| `myfile-comments.md` | merged, anonymized reviewer comments | delete manually (git-ignored) |
| `myfile-plan.md` | accept/refute decision for each point | **kept**, tracked in git |

The backup is written only if it does not already exist, so re-running a file
never overwrites the true original. The original is also always recoverable via
git.

## How the models are used

Every call is a single, independent, stateless request. The provider APIs keep
no conversation memory: an SDK client object holds the API key and connection,
not a history. Nothing is carried from one call to the next unless the text is
resent — which the pipeline never does. This is why the reviewers can run in
parallel, and why each run produces fresh, non-deterministic results.

Each model receives the same **context** (system prompt): the author profile
(`johannes_profile.md`) plus a few reference papers, so it judges and writes in
light of who the author is and what he has argued elsewhere. `--no-context`
omits it. For Claude, the context block is marked cacheable, so when Claude
plays two roles for one chapter (PLAN then WRITE) the second call reuses it
instead of re-billing the tokens.

## Anonymized reviewers

LLMs show self-preference bias: a model tends to rate its own output more
favorably. Because the PLAN model sees the merged comments — and may, under a
custom role assignment, end up planning over comments from its own family — the
reviewers are tagged *Reviewer A / B / C* rather than by provider name. The
planner therefore judges the substance, not the source. The A/B/C → provider
mapping is printed to the console only; no model ever sees it.

## Environment

A local `.env` is loaded automatically. Set the keys for the models you use:

```
GEMINI_API_KEY     https://aistudio.google.com/apikey
OPENAI_API_KEY     https://platform.openai.com/api-keys
MISTRAL_API_KEY    https://console.mistral.ai/api-keys
ANTHROPIC_API_KEY  https://console.anthropic.com/
```