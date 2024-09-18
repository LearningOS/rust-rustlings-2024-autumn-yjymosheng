#!/bin/bash

BRANCH=$( git branch | grep "*" | awk '{print $2}')
REPO=$(git remote)

cd /home/mosheng/github/rust-rustlings-2024-autumn-yjymosheng

git add .
git commit -m update
git push $REPO $BRANCH

echo "仓库： $REPO  分支: $BRANCH 被更新"
