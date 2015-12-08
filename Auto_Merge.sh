#!/bin/sh
# Automatically merge the last commit through the following branches:
#Hotfix-} Integration-Releases -} master

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
LAST_COMMIT=$(git rev-list -1 HEAD)

echo Automatically merging commit $LAST_COMMIT from $CURRENT_BRANCH rippling to master

case $CURRENT_BRANCH in
Hotfix)
  git checkout master
    git merge $CURRENT_BRANCH
      git push https://ESI15:admin123@github.com/ESI15/Demo.git
        git checkout Integration-Releases
	  git merge $CURRENT_BRANCH
	    git push https://ESI15:admin123@github.com/ESI15/Demo.git
	      git checkout $CURRENT_BRANCH
	        ;;
		esac

