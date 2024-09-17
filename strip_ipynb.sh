#!/bin/bash

# Check if nbstripout is installed
if ! command -v nbstripout &> /dev/null
then
    echo "Error: nbstripout is not installed. Install it with 'pip install nbstripout'."
    exit 1
fi

# Find all .ipynb files and strip metadata
echo "Stripping metadata from all Jupyter notebooks (*.ipynb) in the current directory and subdirectories..."
find . -name '*.ipynb' -exec nbstripout {} \;

echo "Metadata stripping complete."
