#/bin/bash

set +e

if [[ ! -x `which pre-commit` ]]; then
  pip install pre-commit
fi
