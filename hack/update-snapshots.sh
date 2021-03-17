#!/bin/bash

# hacky script to update snapshots, used by pre-commit

set -e

source hack/sh/rc.sh
source hack/sh/_functions.sh
source hack/sh/deps/helm.sh

set -x

# grab all charts that where modified
declare -a charts
for file in $@; do
    charts+=(`echo $file | cut -d/ -f 1-2`)
done

for chart in $charts; do
    # unittest needs deps to work
    helm dep build $chart
    helm unittest --helm3 --update-snapshot $chart
done
