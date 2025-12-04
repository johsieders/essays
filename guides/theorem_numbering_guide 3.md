# Theorem Numbering and Cross-Referencing in MyST

## Problem You're Having

You want:
- **Theorem 4.3** (chapter 4, theorem 3)
- **Theorem A1.6** (appendix A1, theorem 6)
- Cross-references that show "Intermediate Value Theorem" automatically

## Current Issues

1. You're using `:nonumber:` - this DISABLES automatic numbering
2. You're using `{prf:ref}` without proper configuration

## Solution

### Step 1: Remove `:nonumber:` from all theorems

**BEFORE (your current code):**
```markdown
````{prf:theorem} Bolzano-Weierstrass
:label: thr-bolzano-weierstrass
:nonumber:

Every bounded sequence has a convergent subsequence.
````
```

**AFTER (what you should use):**
```markdown
````{prf:theorem} Bolzano-Weierstrass
:label: thr-bolzano-weierstrass

Every bounded sequence has a convergent subsequence.
````
```

### Step 2: Configure sphinx-proof in _config.yml

Add this to your `_config.yml` under the `sphinx:` → `config:` section:

```yaml
sphinx:
  extra_extensions:
    - sphinx_proof
    - sphinx_togglebutton
  config:
    # ... your existing config ...

    # Add this:
    numfig: true
    numfig_secnum_depth: 1  # Include chapter number

    # Configure sphinx-proof numbering
    proof_theorem_numfig: true  # Use figure-style numbering
    proof_theorem_numref: "%s {name}"  # Format: "Theorem 4.3 Bolzano-Weierstrass"
```

### Step 3: Cross-Reference Formats

MyST/Sphinx supports multiple cross-reference syntaxes:

#### Option A: Auto-numbered with title (RECOMMENDED)
```markdown
See {prf:ref}`thr-bolzano-weierstrass`
```
**Output:** "Theorem 4.3 (Bolzano-Weierstrass)"

#### Option B: Custom text with number
```markdown
See {prf:ref}`the Bolzano-Weierstrass theorem <thr-bolzano-weierstrass>`
```
**Output:** "the Bolzano-Weierstrass theorem 4.3"

#### Option C: Name attribute (most flexible)
```markdown
````{prf:theorem}
:label: thr-bolzano-weierstrass
:name: Bolzano-Weierstrass Theorem

Every bounded sequence has a convergent subsequence.
````

Later reference with:
{prf:ref}`thr-bolzano-weierstrass`
```
**Output:** "Theorem 4.3 (Bolzano-Weierstrass Theorem)"

### Step 4: Section-Based Numbering

For chapter-based numbering (4.1, 4.2, etc.):

**In _config.yml:**
```yaml
sphinx:
  config:
    numfig: true
    numfig_secnum_depth: 1  # 1 = chapter level (4.1, 4.2)
                            # 2 = section level (4.1.1, 4.1.2)
```

**In your markdown file:**
```markdown
# Chapter 4: Differentiation

````{prf:theorem} Mean Value Theorem
:label: thr-mean-value

...
````
```
This will show as **Theorem 4.1**

### Step 5: Appendix Numbering

For appendix numbering (A.1, A.2):

**In _toc.yml:**
```yaml
format: jb-book
root: intro
chapters:
  - file: philosophy/philosophy_charts
  - file: mathematics/calculus
    # ... your chapters ...

# Add appendices section
appendices:
  - file: mathematics/appendix_a1
    title: Appendix A1: Proofs
  - file: mathematics/appendix_a2
    title: Appendix A2: Exercises
```

Theorems in appendix files will be numbered A1.1, A1.2, etc.

## Complete Example

### In your calculus.md:

```markdown
# Chapter 4: Differentiation

## The Mean Value Theorem

````{prf:theorem} Mean Value Theorem
:label: thr-mean-value

Let $f$ be continuous on $[a,b]$ and differentiable on $(a,b)$.
Then there exists $\xi \in (a,b)$ such that:

\$\$
f'(\xi) = \frac{f(b) - f(a)}{b - a}
\$\$
````

````{prf:proof}
By {prf:ref}`thr-intermediate-value` we know...
````

## Applications

The {prf:ref}`thr-mean-value` has many important consequences...
```

### Expected Output:

**Heading:** Chapter 4: Differentiation
**Theorem box:** "**Theorem 4.1** (Mean Value Theorem)"
**Reference:** "By Theorem 3.2 (Intermediate Value Theorem) we know..."
**Later reference:** "The Mean Value Theorem (Theorem 4.1) has many..."

## Quick Reference Card

| Syntax | Purpose | Example |
|--------|---------|---------|
| `` ```{prf:theorem} `` | Define theorem | See above |
| `:label: my-label` | Set reference ID | `:label: thr-mean-value` |
| `:name: My Theorem` | Set display name | `:name: Mean Value Theorem` |
| `{prf:ref}` | Cross-reference | `{prf:ref}\`thr-mean-value\`` |
| `:nonumber:` | **DON'T USE** (unless you really want no number) | - |

## MyST vs Sphinx vs Markdown Cheat Sheet

| Syntax | Type | Purpose |
|--------|------|---------|
| `# Header` | Markdown | Section heading |
| `**bold**` | Markdown | Bold text |
| `` `code` `` | Markdown | Inline code |
| `` ```python `` | Markdown | Code block |
| `` ```{directive} `` | MyST | Structured content (powered by Sphinx) |
| `{role}` | MyST | Inline markup (powered by Sphinx) |
| `:option: value` | MyST | Directive/role options |
| `(label)=` | MyST | Simple label (for sections) |

## Common Directives You're Using

| Directive | Extension | Purpose |
|-----------|-----------|---------|
| `{prf:theorem}` | sphinx-proof | Theorem environment |
| `{prf:definition}` | sphinx-proof | Definition environment |
| `{prf:proof}` | sphinx-proof | Proof environment |
| `{math}` | Sphinx | Math block |
| `{figure}` | Sphinx | Figure with caption |
| `{bibliography}` | sphinxcontrib-bibtex | Reference list |

## Pro Tips

1. **Always use `:label:`** for anything you might reference
2. **Use `:name:`** to control what appears in cross-references
3. **Don't use `:nonumber:`** unless you specifically want no number
4. **Use `numfig_secnum_depth: 1`** for chapter-based numbering
5. **Put appendices in `_toc.yml` under `appendices:`** for A.1, A.2 numbering

## Debugging Tips

If numbering doesn't work:
1. Check `sphinx-proof` is in `extra_extensions`
2. Check `numfig: true` in config
3. Remove `:nonumber:` from directives
4. Rebuild with `jupyter-book build . --all` (the `--all` forces full rebuild)
5. Check the browser console for Sphinx warnings
