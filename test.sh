#! /usr/bin/env bash

# Exit in case of error
set -e

rm -rf ./samplemod

cookiecutter --config-file ./testing-config.yml --no-input -f ./

cd ./samplemod

pipenv install --dev
pipenv run bash ./scripts/test.sh
pipenv run bash ./scripts/build-docs.sh

cd ../