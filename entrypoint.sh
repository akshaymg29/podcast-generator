#!/bin/bash

echo "==========================="

git congif -global user.name "${GITHUB_ACTOR}"
git congif -global user.email "${INPUT_EMAIL}"
git congif -global --add safe.directory /github/workspace

python3 /urs/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "==========================="