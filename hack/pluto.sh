#!/bin/bash

# wrapper to call pluto

set -e

source hack/sh/rc.sh
source hack/sh/_functions.sh
source hack/sh/deps/pluto.sh

chart_dir=$1

[[ -d $chart_dir ]] || err "No chart dir given. Usage: hack/pluto.sh chart/name"

helm template $chart_dir | pluto detect -
