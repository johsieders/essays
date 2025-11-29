# MyST Quick Reference Card

## The Stack: How It All Fits Together

```
┌─────────────────────────────────────────────┐
│         Jupyter Book                        │  User-friendly wrapper
│         (Configuration layer)               │  Provides _config.yml, _toc.yml
└──────────────┬──────────────────────────────┘
               │
┌──────────────▼──────────────────────────────┐
│         Sphinx                              │  Documentation engine
│         (Build system)                      │  Generates HTML, handles extensions
└──────────────┬──────────────────────────────┘
               │
┌──────────────▼──────────────────────────────┐
│         MyST Parser                         │  Markdown → Sphinx converter
│         (Parser layer)                      │  Adds {directives} and :roles:
└──────────────┬──────────────────────────────┘
               │
┌──────────────▼──────────────────────────────┐
│         Markdown                            │  Basic text formatting
│         (Base syntax)                       │  # headers, **bold**, etc.
└─────────────────────────────────────────────┘
```

## Who Does What?

| Layer | Provides | Example |
|-------|----------|---------|
| **Markdown** | Basic formatting | `**bold**`, `# Header`, `[link](url)` |
| **MyST** | Structured content | `` ```{prf:theorem} ``, `{prf:ref}` |
| **Sphinx** | Extensions & building | `sphinx_proof`, `sphinxcontrib-bibtex` |
| **Jupyter Book** | Configuration | `_config.yml`, `_toc.yml`, book structure |

## Syntax Guide

### Basic Markdown (Standard)

```markdown
# Level 1 Heading
## Level 2 Heading

**bold** and *italic*

[link text](https://example.com)

- bullet
- list

1. numbered
2. list

`inline code`
```

### MyST Directives (Sphinx-Powered)

**Syntax:** Three or four backticks + `{directive_name}`

```markdown
````{prf:theorem} Theorem Name
:label: my-label
:option: value

Content goes here
````
```

**Common directives you're using:**

| Directive | Purpose | Extension |
|-----------|---------|-----------|
| `{prf:theorem}` | Theorem box | sphinx-proof |
| `{prf:definition}` | Definition box | sphinx-proof |
| `{prf:proof}` | Proof environment | sphinx-proof |
| `{math}` | Math equation | Sphinx built-in |
| `{figure}` | Image with caption | Sphinx built-in |
| `{note}` | Note admonition | Sphinx built-in |
| `{warning}` | Warning box | Sphinx built-in |
| `{bibliography}` | Citations list | sphinxcontrib-bibtex |

### MyST Roles (Inline References)

**Syntax:** `{role_name}` followed by backticks

```markdown
See {prf:ref}`my-label`
See {eq}`my-equation`
See {numref}`my-figure`
Cite {cite}`einstein1905`
```

| Role | Purpose | Extension |
|------|---------|-----------|
| `{prf:ref}` | Reference theorem/def | sphinx-proof |
| `{eq}` | Reference equation | Sphinx built-in |
| `{numref}` | Reference figure/table | Sphinx built-in |
| `{cite}` | Citation | sphinxcontrib-bibtex |
| `{math}` | Inline math | Sphinx built-in |

### Directive Options (MyST Syntax)

Options use colons and go right after the directive declaration:

```markdown
````{prf:theorem} Theorem Name
:label: thr-my-theorem        ← for cross-referencing
:nonumber:                    ← suppress numbering (DON'T USE unless needed)
:class: my-css-class          ← custom CSS styling

Content here
````
```

**Common options:**
- `:label:` - ID for cross-referencing (ALWAYS USE THIS)
- `:name:` - Display name (appears in references)
- `:nonumber:` - No automatic numbering (usually you DON'T want this)
- `:class:` - CSS class for custom styling

## Your Specific Use Cases

### 1. Theorems with Automatic Numbering

```markdown
# Chapter 4: Differentiation

````{prf:theorem} Mean Value Theorem
:label: thr-mvt

Let $f$ be continuous on $[a,b]$...
````
```

**Shows as:** "**Theorem 4.1** (Mean Value Theorem)"

### 2. Cross-References

```markdown
By the {prf:ref}`thr-mvt`, we have...
```

**Shows as:** "By the Theorem 4.1 (Mean Value Theorem), we have..."

### 3. Math Equations

**Inline:**
```markdown
Let $x \in \mathbb{R}$
```

**Display (numbered):**
```markdown
```{math}
:label: eq-euler

e^{i\pi} + 1 = 0
\```
```

**Display (unnumbered):**
```markdown
$$
e^{i\pi} + 1 = 0
$$
```

### 4. Citations

**In text:**
```markdown
As shown by {cite}`einstein1905`, we have...
```

**Bibliography (at end of chapter/book):**
```markdown
```{bibliography}
:filter: docname in docnames
\```
```

## Debugging Checklist

When things don't work:

### Numbering Not Showing?
- [ ] Removed `:nonumber:` from directives?
- [ ] Added `numfig: true` to `_config.yml`?
- [ ] Added `prf_theorem_numfig: true` to `_config.yml`?
- [ ] Rebuilt with `--all` flag?

### Cross-References Not Working?
- [ ] Is `:label:` present on the target?
- [ ] Using correct role (`{prf:ref}` for theorems, `{eq}` for equations)?
- [ ] Rebuilt with `--all` flag?
- [ ] Check build warnings in terminal

### Build Errors?
- [ ] All directives properly closed (matching backtick counts)?
- [ ] Extensions loaded in `_config.yml` → `sphinx:` → `extra_extensions:`?
- [ ] Indentation correct (2 or 4 spaces consistently)?

## The Answer to Your Questions

> (a) the back ticks are sphinx, right?

**Almost!** Backticks are standard Markdown, but:
- `` `code` `` = Markdown
- `` ```{directive} `` = MyST syntax that invokes Sphinx directives
- `{role}` = MyST syntax that invokes Sphinx roles

> (b) The colons (:nonumber:) are MyST, right?

**Yes!** The `:option: value` syntax is MyST's way of passing options to Sphinx directives.

## Most Important Rules

1. **Use `:label:` for everything you might reference**
2. **DON'T use `:nonumber:` (unless you specifically want no number)**
3. **Rebuild with `--all`** when changing numbering config
4. **Match backtick counts** (4 opening = 4 closing)
5. **Use chapter structure** in `_toc.yml` for section numbering (4.1, 4.2, etc.)

## The Fix for Your calculus.md

1. Remove all `:nonumber:` lines
2. Add `prf_theorem_numfig: true` to `_config.yml` ✅ (already done)
3. Rebuild: `jupyter-book build bagatelles --all`
4. Deploy: `./deploy.sh`

You'll get:
- **Theorem 1** (Bolzano-Weierstrass Theorem)
- **Theorem 2** (Continuity on Compact Sets)
- **Theorem 3** (Intermediate Value Theorem)

And cross-references will show full names automatically!