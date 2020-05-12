#! /usr/bin/env bash

# Exit in case of error
set -e

# Token is pulled from the environment variable POETRY_PYPI_TOKEN_PYPI

# Setup to use test Pypi and not real pypi (don't do this in the actual package)
echo "poetry config repositories.pypi https://test.pypi.org/simple/"
poetry config repositories.pypi https://test.pypi.org/simple/

# Run deploy script
echo "cookiecutter --config-file ./config-travis-testing.yml --no-input -f ./"
cookiecutter --config-file ./config-travis-testing.yml --no-input -f ./
ls
cd ./pypackage
ls
bash ./scripts/publish.sh
