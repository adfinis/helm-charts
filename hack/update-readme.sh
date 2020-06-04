#!/bin/bash

# quick and dirty gomplate wrapper to update README.md

set -e

err () {
    echo "${1}" 1>&2
    exit 1
}

# specify an alternative hack/update-readme/$HELMCHARTS_GOMPLATE_NAME.yaml config
readonly readme_config_name=${HELMCHARTS_GOMPLATE_NAME:-readme}
# where to render the template to, defaults to README.md but can be overridden for generating the GitHub Pages index
readonly output_path=${HELMCHARTS_GOMPLATE_OUTPUT:-README.md}

[[ ! -x `which helm` ]] && err "Could not locate helm binary. See https://helm.sh/docs/intro/install/ for info."
[[ ! -x `which gomplate` ]] && err "Could not locate gomplate binary. See https://docs.gomplate.ca/installing/ for info."

gomplate -o $output_path -f hack/README.tpl.md \
  -d readme=hack/update-readme/$readme_config_name.yaml
