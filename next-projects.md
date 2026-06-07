# Next Projects

Backlog of automation ideas discussed but deferred. Order is rough priority, not commitment.

---

## 1. AI-spend logging for `improve.py`  (the foundation)

Record token usage and estimated cost for every model call, so the multi-model
pipeline becomes measurable.

- **Step 1 — instrument the adapters.** Each adapter returns `(text, usage)`
  instead of just `text`; normalise into one record
  `{timestamp, file, role, model, input_tok, output_tok, cache_tok, cost}` and
  append to `usage.jsonl` (or SQLite). ~30 lines, no new dependencies.
  Token fields per provider:
  - Anthropic: `message.usage.input_tokens / output_tokens / cache_creation_input_tokens / cache_read_input_tokens`
  - OpenAI: `response.usage.prompt_tokens / completion_tokens`
  - Gemini: `response.usage_metadata.prompt_token_count / candidates_token_count`
  - Mistral: `response.usage.prompt_tokens / completion_tokens`
- **Step 2 — a `--costs` summary** that reads the log and prints a table
  (by day / model / file / role).
- **Optional later:** Streamlit/Plotly dashboard; monthly reconciliation against
  the Anthropic + OpenAI cost APIs (Gemini/Mistral have no clean usage API).

Pricing reference (per 1M tokens): Opus 4.8 $5 / $25, Sonnet 4.6 $3 / $15,
Haiku 4.5 $1 / $5. Cache reads ~0.1×, cache writes ~1.25×.

**Why first:** every other idea below either reads this log or reuses its
adapter pattern.

---

## 2. MCP "hello world" — a Bagatelles corpus server

A ~40-line `FastMCP` server (`pip install mcp`) exposing the essays to Claude
Code / Desktop, so you can ask in plain language: *"which essays touch on free
will?"*, *"how long is the truth essay?"*, *"find every essay that cites
Russell."*

Tools: `list_essays()`, `search_essays(query)`, `get_essay(path)`,
`corpus_stats()`. Register once with `claude mcp add` (verify exact syntax when
building).

**Why:** cleanest possible introduction to MCP — teaches tools, the
client/server split, and resources-vs-tools, over data you actually care about.
Natural sequel: point the same pattern at `usage.jsonl` (a `query_usage` tool)
so you can interrogate spend conversationally.

---

## 3. Transaction categorizer  (the Google-Sheet workflow)

Automate step (2) of the monthly finance routine: assigning keys/comments
(petrol, restaurants, …) to new transactions.

**Architecture — hybrid, in this order (the key decision):**
1. **Rule layer** — build a `merchant → key` map from 15 years of already-
   categorized history; resolves ~85–95% of rows deterministically, free,
   instant, auditable.
2. **AI layer** — only the residual (new/ambiguous merchants) goes to a
   *cheap* model (Haiku-tier) with few-shot examples drawn from history;
   returns `key` + `comment` + `confidence`.
3. **Human layer** — high-confidence rows pre-filled, low-confidence flagged
   for a glance; you confirm.
4. **Feed back** — confirmed rows extend the map, so the AI residual shrinks
   every month.

**Non-negotiables:**
- **Fill-only, never overwrite** existing labels (they're ground truth + the
  few-shot source). Backup first.
- **Privacy** — bank data leaves the machine only for the residual; can send
  merchant string only (not amounts), or run a local model for zero egress.
  Decide the line before building.

Start with the **CSV round-trip** you already do (export → categorize →
re-import). Step (1) prepend stays as-is (or fold the JS into the Python tool).
Phase 2: direct Google Sheets API read/write.

Reuses the `MODELS` adapter pattern from `improve.py`.

---

*Captured 2026-06-07. None of these are started; pick them up one at a time.*