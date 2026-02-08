#!/bin/bash
# Execute all Jupyter notebooks in bagatelles

cd "$(dirname "$0")/bagatelles" || exit 1

echo "Executing all Jupyter notebooks in bagatelles/..."
echo ""

# Find all .ipynb files, excluding _build directory
find . -name "*.ipynb" -not -path "./_build/*" -not -path "./.jupyter_cache/*" | while read -r notebook; do
    echo "▶ Executing: $notebook"
    ../.venv/bin/jupyter nbconvert \
        --to notebook \
        --execute \
        --inplace \
        --ExecutePreprocessor.timeout=300 \
        "$notebook" 2>&1 | grep -v "jetTransient" | grep -E "(Writing|ERROR|Traceback)"

    if [ $? -eq 0 ]; then
        echo "  ✓ Success"
    else
        echo "  ✗ Failed"
    fi
    echo ""
done

echo "Done! All notebooks executed."