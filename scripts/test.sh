#!/usr/bin/env bash

set -e
set -x

pytest --cov=template_module --cov=tests --cov-report=term-missing ${@}
bash ./scripts/lint.sh