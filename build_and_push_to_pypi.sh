#!/bin/zsh

git add -u
git commit -m "Add read/write text files"
git push
# Build
hatch build

# Publish
hatch publish

