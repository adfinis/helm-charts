#!/bin/bash

# gomplate wrapper to update README.md

set -e

source hack/sh/rc.sh
source hack/sh/_functions.sh
source hack/sh/deps/helm.sh
source hack/sh/deps/gomplate.sh

# specify an alternative hack/update-readme/$HELMCHARTS_GOMPLATE_NAME.yaml config
readonly readme_config_name=${HELMCHARTS_GOMPLATE_NAME:-readme}
# where to render the template to, defaults to README.md but can be overridden for generating the GitHub Pages index
readonly output_path=${HELMCHARTS_GOMPLATE_OUTPUT:-README.md}

set -x

gomplate -o $output_path -f hack/config/update-readme/README.md.gotmpl \
  -d readme=hack/config/update-readme/$readme_config_name.yaml
