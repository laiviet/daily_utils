#!/bin/zsh

git add -u
git commit -m "Add read/write text files"
git push
# Build
python -m build


# Upload to TestPyPi
#twine upload --repository-url https://upload.pypi.org/legacy/ dist/*

twine upload dist/*
