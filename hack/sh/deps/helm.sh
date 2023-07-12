#/bin/bash

set -e

source hack/sh/_functions.sh

readonly helm_target=$ADFINIS_CHARTS_TMP_BIN
readonly helm_version=$ADFINIS_CHARTS_HELM_VERSION
readonly helm_bin=$helm_target/helm

readonly helm_url="https://get.helm.sh/helm-v$helm_version-linux-amd64.tar.gz"
readonly helm_docs="https://get.helm.sh/"

set +e

if [[ ! -x `which helm` ]]; then
   curl -L -o - $helm_url | tar -C $helm_target -zxf -
   chmod +x $helm_bin
   helm plugin install https://github.com/helm-unittest/helm-unittest
   [[ ! -x `which helm` ]] && err "Could not install helm binary. See $helm_docs for info."
fi
