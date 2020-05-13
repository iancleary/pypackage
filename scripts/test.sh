#! /usr/bin/env bash

# Exit in case of error
set -e

# clears local created file
rm -rf ./pypackage

# Creates cookiecutter using repo controlled config file (no CLI user input)
cookiecutter --config-file ./config-travis-testing.yml --no-input -f ./

# Enter package repo
cd ./pypackage

# Install packages, run tests (pytest, mypy, etc.), and test building docs
poetry install
bash ./scripts/test.sh
bash ./scripts/build-docs.sh

# only useful when running locally
cd ../
