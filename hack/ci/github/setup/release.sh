#/bin/bash

set -e

source hack/sh/rc.sh

export ADFINIS_CHARTS_TMP_BIN=$RUNNER_WORKSPACE/bin
mkdir -p $ADFINIS_CHARTS_TMP_BIN

# Install deps
source hack/sh/deps/gomplate.sh
source hack/sh/deps/yq.sh
echo $ADFINIS_CHARTS_TMP_BIN >> $GITHUB_PATH
