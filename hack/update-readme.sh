#!/bin/bash

# quick and dirty gomplate wrapper to update README.md

set -e

err () {
    echo "${1}" 1>&2
    exit 1
}

[[ ! -x `which helm` ]] && err "Could not locate helm binary. See https://helm.sh/docs/intro/install/ for info."
[[ ! -x `which gomplate` ]] && err "Could not locate gomplate binary. See https://docs.gomplate.ca/installing/ for info."

gomplate -o README.md -f hack/README.tpl.md
