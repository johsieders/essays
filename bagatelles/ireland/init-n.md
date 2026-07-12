# init.md — chapter chat bootstrap (Irish history)

<!--
BOOT NOTE — read me first (a note to myself)

Claude can only fetch a URL that reaches it through a *trusted* path: a link I
paste into the chat myself, or one returned by a prior web search or fetch. A URL
that appears *only* inside a fetched file — like this manifest — does NOT count as
trusted, even if I trust the file completely. Claude will refuse it with a
permissions error. This is a deliberate prompt-injection guard and there is no way
to mark a file or repo as "trusted" to get around it.

Practical consequence for booting a session:

  - Don't expect Claude to walk this manifest and fetch each file on its own.
    The links named below are refused when Claude only knows them from here.

  - Instead, EITHER paste the raw URLs into the chat myself, one message,
    in load order — then every link counts as user-provided and resolves —
    OR paste the contents of this file inline rather than having Claude fetch it,
    which has the same effect (the URLs arrive as my text, not as fetched content).

  - If a boot step still fails on provenance, just drop that raw link into the
    chat and it goes through. Same URL, trusted path.

In short: I supply the links; the manifest only says which ones and in what order.
-->

The chapter in play — replace N with the chapter number:
   https://raw.githubusercontent.com/johsieders/essays/main/bagatelles/ireland/ireland-N.md

If any fetch fails, say so and stop — do not proceed on a stale or
missing file.
