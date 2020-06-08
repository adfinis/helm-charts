#!/bin/bash


echo 'Updating charts repo site...'

set -ex

gh_pages_worktree=$(mktemp -d)

git worktree add "$gh_pages_worktree" gh-pages

HELMCHARTS_GOMPLATE_OUTPUT="$gh_pages_worktree/index.md" \
HELMCHARTS_GOMPLATE_NAME=indexpage \
./hack/update-readme.sh

mkdir --parent "$gh_pages_worktree/docs/images"
cp --force docs/images/lunkwill_helm_shirt.png "$gh_pages_worktree/docs/images/lunkwill_helm_shirt.png"

pushd "$gh_pages_worktree" > /dev/null

git add index.md docs/images/lunkwill_helm_shirt.png
git commit --message="Update site" --signoff

readonly repo_url="https://x-access-token:$CR_TOKEN@github.com/adfinis-sygroup/helm-charts"
git push "$repo_url" gh-pages

popd > /dev/null
