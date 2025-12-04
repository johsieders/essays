# How to Fix Your Theorems in calculus.md

## BEFORE (Current - No Numbering)

```markdown
````{prf:theorem} Bolzano-Weierstrass
:label: thr-bolzano-weierstrass
:nonumber:

Every bounded sequence in $\mathbb{R}$ has a convergent subsequence.
````

Later reference:
From {prf:ref}`thr-intermediate-value` we know...
```

**Problems:**
- `:nonumber:` prevents automatic numbering
- Cross-reference shows only generic "Theorem" without number or name

## AFTER (Fixed - Automatic Numbering)

```markdown
````{prf:theorem} Bolzano-Weierstrass Theorem
:label: thr-bolzano-weierstrass

Every bounded sequence in $\mathbb{R}$ has a convergent subsequence.
````

Later reference:
From the {prf:ref}`thr-intermediate-value` we know...
```

**Results:**
- Shows "**Theorem 1** (Bolzano-Weierstrass Theorem)" automatically
- Cross-reference shows "Theorem 2 (Intermediate Value Theorem)"

## Step-by-Step Fix for calculus.md

### 1. Search and Replace

In calculus.md, remove ALL instances of `:nonumber:`

**Find:** `:nonumber:\n`
**Replace:** (nothing)

### 2. Improve Theorem Titles

Make titles descriptive (they appear in cross-references):

**BEFORE:**
```markdown
````{prf:theorem} Bolzano-Weierstrass
```

**AFTER:**
```markdown
````{prf:theorem} Bolzano-Weierstrass Theorem
```

### 3. Better Cross-References

**BEFORE (shows nothing useful):**
```markdown
{prf:ref}`thr-mean-value`
```
**Output:** "Theorem"

**AFTER (shows full info):**
```markdown
the {prf:ref}`thr-mean-value`
```
**Output:** "the Theorem 4.3 (Mean Value Theorem)"

OR:

```markdown
By {prf:ref}`thr-mean-value`, we have...
```
**Output:** "By Theorem 4.3 (Mean Value Theorem), we have..."

## Complete Example: Before & After

### BEFORE (your current code at line 337):

```markdown
````{prf:theorem} Mean Value Theorem
:label: thr-mean-value
:nonumber:

Let $f : [a, b] \to \mathbb{R}$ be continuous on $[a, b]$
and differentiable on $(a, b)$. Then, there exists a
$\xi \in (a, b)$ such that $f'(\xi) = \mu$ where

$$
\mu = \frac{f(b) - f(a)}{b - a}
$$
````

````{prf:proof}
From {prf:ref}`thr-intermediate-value` we know that there
exists a $\xi \in [a, b]$ such that $f(\xi) = \mu$.
````
```

**What this shows:**
- Theorem box has no number
- Cross-reference just says "Theorem" (no number, no name)

### AFTER (what you should have):

```markdown
````{prf:theorem} Mean Value Theorem
:label: thr-mean-value

Let $f : [a, b] \to \mathbb{R}$ be continuous on $[a, b]$
and differentiable on $(a, b)$. Then, there exists a
$\xi \in (a, b)$ such that $f'(\xi) = \mu$ where

$$
\mu = \frac{f(b) - f(a)}{b - a}
$$
````

````{prf:proof}
From the {prf:ref}`thr-intermediate-value` we know that there
exists a $\xi \in [a, b]$ such that $f(\xi) = \mu$.
````
```

**What this shows:**
- Theorem box: "**Theorem 4.3** (Mean Value Theorem)"
- Cross-reference: "From the Theorem 4.1 (Intermediate Value Theorem) we know..."

## The Three-Step Fix

1. **Remove** `:nonumber:` from all theorems, definitions, proofs
2. **Add** theorem names to titles (not just "Bolzano-Weierstrass" but "Bolzano-Weierstrass Theorem")
3. **Rebuild** with `jupyter-book build bagatelles --all`

The `--all` flag forces a complete rebuild, ensuring numbering is recalculated.

## For Appendix Numbering (A1.1, A1.2, etc.)

If you want appendix theorems numbered separately:

**In _toc.yml:**
```yaml
format: jb-book
root: intro
chapters:
  - file: mathematics/calculus
    title: First Steps in Calculus
  # ... other chapters ...

# Add this section for appendices
appendices:
  - file: mathematics/appendix_proofs
    title: "Appendix A: Additional Proofs"
```

**Then create** `mathematics/appendix_proofs.md`:
```markdown
# Appendix A: Additional Proofs

````{prf:theorem} Extended Mean Value Theorem
:label: thr-extended-mvt

...
````
```

**This will show as:** "Theorem A.1 (Extended Mean Value Theorem)"