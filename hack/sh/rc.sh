#!/bin/bash

source .env
export $(grep -v '#' .env | cut -d= -f1)

# catch github CI case
[[ ! "0$RUNNER_WORKDIR" = "0" ]] && export ADFINIS_CHARTS_TMP_BIN="$RUNNER_WORKDIR/bin"

[[ ! -d $ADFINIS_CHARTS_TMP_BIN ]] && mkdir -p $ADFINIS_CHARTS_TMP_BIN

export PATH=$ADFINIS_CHARTS_TMP_BIN:$PATH
