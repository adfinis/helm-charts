#/bin/bash

set -e

readonly TARGETDIR=$GITHUB_WORKSPACE/bin
readonly HELM_DOCS_VERSION="0.12.0"
readonly GOMPLATE_VERSION="3.7.0"

mkdir -p $TARGETDIR

curl -L -o - https://github.com/norwoodj/helm-docs/releases/download/v$HELM_DOCS_VERSION/helm-docs_${HELM_DOCS_VERSION}_Linux_x86_64.tar.gz | tar -C $TARGETDIR -zxf -
curl -L -o $TARGETDIR/gomplate https://github.com/hairyhenderson/gomplate/releases/download/v${GOMPLATE_VERSION}/gomplate_linux-amd64 && chmod +x $TARGETDIR/gomplate

echo "::add-path::$TARGETDIR"
