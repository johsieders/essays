# Simple Glue Test

Testing if glue works at all.

## Test 1: Reference with file path

Value: {glue:text}`glue-demo::my_value`

## Test 2: Reference without .ipynb extension

Value: {glue:text}`glue-demo::my_value`

## Test 3: Just the key (same directory)

Value: {glue:text}`my_value`

## Test 4: Using glue directive

```{glue:} my_value
```

---

If all show empty, glue isn't working in your Jupyter Book setup.