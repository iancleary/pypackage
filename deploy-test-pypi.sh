#! /usr/bin/env bash

# Exit in case of error
set -e

# Token is pulled from the environment variable POETRY_PYPI_TOKEN_PYPI

# Setup to use test Pypi and not real pypi (don't do this in the actual package)
echo "poetry config repositories.pypi https://test.pypi.org/simple/"
poetry config repositories.pypi https://test.pypi.org/simple/

# Logging
pwd
ls

# Run Deploy Script
echo "cd ./pypackage"
cd ./pypackage
echo "bash ./scripts/publish.sh"
bash ./scripts/publish.sh
