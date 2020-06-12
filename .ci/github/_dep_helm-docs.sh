#/bin/bash

set -e

readonly TARGETDIR=$GITHUB_WORKSPACE/bin
readonly HELM_DOCS_VERSION="0.13.0"

curl -L -o - https://github.com/norwoodj/helm-docs/releases/download/v$HELM_DOCS_VERSION/helm-docs_${HELM_DOCS_VERSION}_Linux_x86_64.tar.gz | tar -C $TARGETDIR -zxf -
