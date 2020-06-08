#/bin/bash

set -e

readonly TARGETDIR=$GITHUB_WORKSPACE/bin

mkdir -p $TARGETDIR

.ci/github/_dep_gomplate.sh

echo "::add-path::$TARGETDIR"
