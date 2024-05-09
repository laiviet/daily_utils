#!/bin/zsh

git add -u
git commit -m "Add read/write text files"

# Build
python -m build


# Upload
twine upload --repository-url https://test.pypi.org/ dist/*
