#! /usr/bin/env bash

# Exit in case of error
set -e

# Setup to use token (do this in the actual package)
echo "poetry config pypi-token.pypi my-token"
poetry config pypi-token.pypi my-token
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
