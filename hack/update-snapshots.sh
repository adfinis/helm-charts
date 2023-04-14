#!/bin/bash

# hacky script to update snapshots, used by pre-commit
#
# This script expects a list of all the changed files
# as $@ and will use that to figure out on which charts
# it needs to upate snapshots.

set -e

source hack/sh/rc.sh
source hack/sh/_functions.sh
source hack/sh/deps/helm.sh

set -x

# grab all charts that where modified
declare -a charts
for file in "$@"; do
    charts+=(`echo $file | cut -d/ -f 1-2`)
done
charts=`printf '%s\n' ${charts[@]} | sort -u`

for chart in $charts; do
    # unittest needs deps to work
    helm dep build $chart
    helm unittest --update-snapshot $chart
done
