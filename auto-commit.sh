#!/bin/bash

git pull

# Commit changes.
msg="auto commit `date`"
git add .
git commit -m "$msg"

# Push source and build repos.
git push origin master
