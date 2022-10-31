#/bin/bash

set -e

source hack/sh/_functions.sh

readonly pluto_target=$ADFINIS_CHARTS_TMP_BIN
readonly pluto_version=$ADFINIS_CHARTS_PLUTO_VERSION
readonly pluto_bin=$pluto_target/pluto

readonly pluto_url="https://github.com/FairwindsOps/pluto/releases/download/v$pluto_version/pluto_${pluto_version}_linux_amd64.tar.gz"

set +e

if [[ ! -x `which pluto` ]]; then
   curl -L -o - $pluto_url | tar -C $pluto_target -zxf -
   chmod +x $pluto_bin
   [[ ! -x `which pluto` ]] && err "Could not install pluto binary."
fi
