#/bin/bash

set -e

readonly TARGETDIR=$GITHUB_WORKSPACE/bin
readonly GOMPLATE_VERSION="3.7.0"

curl -L -o $TARGETDIR/gomplate https://github.com/hairyhenderson/gomplate/releases/download/v${GOMPLATE_VERSION}/gomplate_linux-amd64 && chmod +x $TARGETDIR/gomplate
