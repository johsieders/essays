
# Next Steps for the story of the Jews

## Status (June 2026)

All four workstreams below are **done** and verified by a successful `jupyter-book build`:

* **Glossary** — `glossary.md` (43 concept entries, alphabetical). The long term list
  in `israel-0` was replaced by a short pointer to the glossary. Added to `_toc.yml`.
* **Index of names** — `index-of-names.md` (~160 entries in four sections:
  Personen / Völker und Dynastien / Orte / Institutionen, Organisationen und Ereignisse).
  Added to `_toc.yml`.
* **References / literature** — `references.bib` holds the union of all chapters'
  reading lists (86 works, each tagged with its citing chapter and the author's
  annotations). One central `references.md` ("Literatur") renders the whole list;
  each chapter's end-of-chapter list was rewritten as `{cite}`-linked entries that
  jump to it. Registered in `_config.yml`; the root `references-page.md` was filtered
  to exclude the israel works so the two bibliographies don't collide.
* **Internal links** — ~22 cross-chapter links (`Kapitel N` → `israel-N.md`) plus
  3 in-chapter "Abschnitt" links in `israel-1` (via `(sec-1-N)=` anchors + `{ref}`).

## Open items for review

* **Bibliography metadata** — years and publishers in `references.bib` are best-effort
  and should be verified. Four entries deliberately have no publisher:
  `dubnow1925`, `graetz1853`, `josephus_krieg_il`, `eshel_scrolls`.
* **Attribution to confirm** — `eshel_scrolls`: the title *"The Dead Sea Scrolls in
  Perspective"* is credited to Hanan Eshel in chapter 1, but that title is usually
  Geza Vermes'. Decide the correct work/author.
* **Two stale chapter references in `israel-8`** (look like leftovers from an earlier
  numbering — not auto-linked, need a decision):
  * L104: *"…behandle ich in Kapitel 8 und 12."* — there is no Kapitel 12, and the
    text is itself in Kapitel 8.
  * L218: *"…(Kapitel 8)…"* — a self-reference to the current chapter.

## Possible later refinements (not done, optional)

* Inline linking depth: currently terms/names are only collected in the glossary and
  index; individual occurrences in the chapters are not yet linked. If wanted, link
  the first occurrence per chapter (linking every occurrence was judged overkill).
* `*-plan.md`, `*-backup.md`, `*-comments.md` artifacts in `israel/` are built as
  orphan pages (toctree warnings). Consider git-ignoring or excluding them from the build.