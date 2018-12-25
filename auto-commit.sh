#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Commit changes.
msg="auto commit `date`"
git add .
git commit -m "$msg"

# Push source and build repos.
git push origin master
