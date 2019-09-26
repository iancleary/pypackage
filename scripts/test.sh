#!/usr/bin/env bash

set -e
set -x

pytest --cov={{cookiecutter.project_name}} --cov=tests --cov-report=term-missing ${@}
bash ./scripts/lint.sh