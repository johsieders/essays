# Test Glue Import

This file demonstrates how to reference variables glued in `glue-demo.ipynb`.

## Method 1: Inline text with glue:text role

My function is: {glue:text}`glue-demo.ipynb::my_function`

At point (1,2), the value is: {glue:text}`glue-demo.ipynb::my_value`

## Method 2: Display math using glue directive

```{glue:} glue-demo.ipynb::my_function
```

## Method 3: In LaTeX environment

To include glued LaTeX in a math environment, you need to wrap it:

The gradient is:

$
\nabla f = \begin{bmatrix}2 x + 2 y\\2 x + 2 y\end{bmatrix}
$

**Note:** Direct glue substitution inside `$$...$$` doesn't work. You have two options:

1. Glue the complete equation (including the `$$`)
2. Use the glue directive (Method 2 above)

## Method 4: Using glue:any directive

```{glue:any} glue-demo.ipynb::my_gradient
```

---

## Summary

**What works:**
- `{glue:text}` for inline text insertion  ✅
- ` ```{glue:}``` ` directive for display ✅

**What doesn't work:**
- Glue inside `$$..$$` math delimiters ❌
- `{glue:math}` role (doesn't exist) ❌
