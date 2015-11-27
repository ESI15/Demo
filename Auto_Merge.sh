#!/bin/sh
# Automatically merge the last commit through the following branches:
# Integration-Releases -} master

#git checkout -b issue-001 master

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
LAST_COMMIT=$(git rev-list -1 HEAD)

echo Automatically merging commit $LAST_COMMIT from $CURRENT_BRANCH rippling to master

case $CURRENT_BRANCH in
issue-001)
 
  git checkout master
  git merge $CURRENT_BRANCH
  git push
  git checkout Integration-Releases
  git merge $CURRENT_BRANCH
  git push
 #git branch -d issue-#001
  ;;
esac