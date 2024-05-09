#!/bin/zsh

git add -u
git commit -m "Update"

# Build
python -m build


# Upload
python3 -m twine upload --repository testpypi dist/*

