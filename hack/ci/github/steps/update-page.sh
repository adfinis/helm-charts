#!/bin/bash

set -e

source hack/sh/rc.sh
source hack/sh/_functions.sh

info 'Updating charts repo site...'

set -x

gh_pages_worktree=$(mktemp -d)

git worktree add "$gh_pages_worktree" gh-pages || true

HELMCHARTS_GOMPLATE_OUTPUT="$gh_pages_worktree/index.md" \
HELMCHARTS_GOMPLATE_NAME=indexpage \
hack/update-readme.sh

cp --force adfinis-charts-repo.yaml "$gh_pages_worktree/adfinis-charts-repo.yaml"

mkdir --parent "$gh_pages_worktree/docs/images"
cp --force docs/images/lunkwill_helm_shirt.png "$gh_pages_worktree/docs/images/lunkwill_helm_shirt.png"

pushd "$gh_pages_worktree" > /dev/null

git add index.md adfinis-charts-repo.yaml docs/images/lunkwill_helm_shirt.png
# abort pages update if no changes detected
`git diff --cached --quiet` && exit 0
git commit --message="Update site" --signoff

readonly repo_url="https://x-access-token:$CR_TOKEN@github.com/adfinis/helm-charts"
git push "$repo_url" gh-pages

popd > /dev/null
