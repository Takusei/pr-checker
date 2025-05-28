#!/bin/bash

# List all repos under my GitHub account
gh repo list Takusei --limit 1000 --json name,isArchived,isFork -q '.[] | select(.isArchived == false and .isFork == false) | .name' | while read -r repo; do
  echo "Checking PRs for repo: $repo"
  gh pr list -R Takusei/$repo
done