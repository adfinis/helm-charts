#!/bin/bash

# wrapper to call helm-docs

set -e

source hack/sh/rc.sh
source hack/sh/_functions.sh
source hack/sh/deps/helm-docs.sh

readonly template_file=$HELM_DOCS_TEMPLATE_FILE

set -x

[ ! -f $HELM_DOCS_TEMPLATE_FILE ] && echo "Missing template '$HELM_DOCS_TEMPLATE_FILE' bailing out" && exit 1

helm-docs --template-files=$template_file
