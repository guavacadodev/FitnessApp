#!/bin/sh

clear
echo "Welcome to git-auto-pusher! This was created by iBite Technologies"
echo "Enter the duration in seconds you want to wait before commits"
read duration

git config --global credential.helper 'cache --timeout 10800'

while true; do
  sleep $duration

  git add .

  SUMMARY=$(git diff --cached --stat)

  if [ -z "$SUMMARY" ]; then
    echo "No changes to commit"
  else
    COMMIT_MSG="Auto Commit
$SUMMARY"

    git commit -m "$COMMIT_MSG"
    git push

    echo "Committed:"
    echo "$SUMMARY"
  fi

done