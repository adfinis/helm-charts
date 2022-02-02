#!/bin/bash

# wrapper to call pluto

set -e

source hack/sh/rc.sh
source hack/sh/_functions.sh
source hack/sh/deps/pluto.sh

helm template $1 | pluto detect -
