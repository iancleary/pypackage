#! /usr/bin/env bash

# Exit in case of error
set -e

rm -rf ./pypackage

cookiecutter --config-file ./testing-config.yml --no-input -f ./

cd ./pypackage

pipenv install --dev
pipenv run bash ./scripts/test.sh
pipenv run bash ./scripts/build-docs.sh

cd ../