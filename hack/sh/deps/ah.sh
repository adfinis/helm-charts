#/bin/bash

set -e

source hack/sh/rc.sh
source hack/sh/_functions.sh

readonly ah_target=$ADFINIS_CHARTS_TMP_BIN
readonly ah_version=$ADFINIS_CHARTS_AH_VERSION
readonly ah_bin=$ah_target/ah

readonly ah_url="https://github.com/artifacthub/hub/releases/download/v$ah_version/ah_${ah_version}_linux_amd64.tar.gz"

set +e

if [[ ! -x `which ah` ]]; then
   curl -L -o - $ah_url | tar -C $ah_target -zxf -
   chmod +x $ah_bin
   $ah_bin version
fi
