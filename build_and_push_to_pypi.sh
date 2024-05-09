#!/bin/zsh

git add -u
git commit -m "Update"

# Build
python -m build


# Upload
twine upload --repository-url https://test.pypi.org/legacy/ dist/*
