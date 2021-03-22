#/bin/bash

set -e

source hack/sh/_functions.sh

readonly yq_target=$ADFINIS_CHARTS_TMP_BIN
readonly yq_version=$ADFINIS_CHARTS_YQ_VERSION
readonly yq_bin=$yq_target/yq

readonly yq_url="https://github.com/mikefarah/yq/releases/download/v$yq_version/yq_linux_amd64"

set +e

if [[ ! -x `which yq` ]]; then
   curl -L -o $yq_bin $yq_url
   chmod +x $yq_bin
   [[ ! -x $yq_bin ]] && err "Could not install yq binary."
fi
