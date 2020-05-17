#!/usr/bin/env bash

set -e
set -x

pytest --cov={{cookiecutter.package_name}} --cov=tests --cov-report=term-missing ${@}
bash ./scripts/lint.sh
