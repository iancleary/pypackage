#! /usr/bin/env bash

# Exit in case of error
set -e

rm -rf ./pypackage

cookiecutter --config-file ./config-travis-testing.yml --no-input -f ./

cd ./pypackage

# poetry install
# bash ./scripts/test.sh
# bash ./scripts/build-docs.sh

cd ../
