#!/bin/bash

# wrapper to call helm-docs

set -e

source hack/sh/rc.sh
source hack/sh/_functions.sh
source hack/sh/deps/helm-docs.sh

readonly template_file=$HELM_DOCS_TEMPLATE_FILE

set -x

helm-docs --template-files=$template_file
