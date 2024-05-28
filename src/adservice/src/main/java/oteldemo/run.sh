#!/bin/bash

REPO_PATH="./"
COMMIT_MESSAGE="Created and added"
BRANCH_NAME="master" 

cd $REPO_PATH

if [ ! -d "$REPO_PATH" ]; then
  echo "Directory $REPO_PATH does not exist."
  exit 1
fi

git add .
git commit -m "$COMMIT_MESSAGE"
git remote add origin https://github.com/Ashish1331/demo.git
git push -u origin $BRANCH_NAME

echo "Repository updated successfully."
