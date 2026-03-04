#!/bin/sh

clear
echo "Welcome to git-auto-pusher! This was created by iBite Technologies"
echo "Enter the duration in seconds you want to wait before commits"
read duration

git config --global credential.helper 'cache --timeout 10800'

while true; do
  sleep $duration

  CHANGED_FILES=$(git status --porcelain | awk '{print $2}')

  if [ -z "$CHANGED_FILES" ]; then
    echo "No changes to commit"
  else
    git add .

    COMMIT_MSG="Auto Commit: Updated files -> $CHANGED_FILES"

    git commit -m "$COMMIT_MSG"
    git push

    echo "Committed: $COMMIT_MSG"
  fi

done