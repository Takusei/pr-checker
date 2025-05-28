#!/bin/bash

# List all repos under your account (replace `your-username` if needed)
gh repo list your-username --limit 1000 --json name,isArchived,isFork -q '.[] | select(.isArchived == false and .isFork == false) | .name' | while read -r repo; do
  echo "Checking PRs for repo: $repo"
  gh pr list -R Takusei/$repo
done