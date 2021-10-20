#/bin/bash

set -e

source hack/sh/rc.sh

export ADFINIS_CHARTS_TMP_BIN=$RUNNER_WORKSPACE/bin
mkdir -p $ADFINIS_CHARTS_TMP_BIN

# Install deps
source hack/sh/deps/pre-commit.sh
source hack/sh/deps/helm-docs.sh
source hack/sh/deps/gomplate.sh
echo $ADFINIS_CHARTS_TMP_BIN >> $GITHUB_PATH

# Set PY
echo "PY=$(python -c 'import hashlib, sys;print(hashlib.sha256(sys.version.encode()+sys.executable.encode()).hexdigest())')" >> $GITHUB_ENV

# Add our repo for `helm dep build` purposes
helm repo add adfinis https://charts.adfinis.com
