#!/bin/zsh

# Build

python -m build


# Upload
python3 -m twine upload --repository testpypi dist/*

