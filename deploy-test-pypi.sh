#! /usr/bin/env bash

# Exit in case of error
set -e

# Setup to use token (do this in the actual package)
poetry config pypi-token.pypi my-token
# Setup to use test Pypi and not real pypi (don't do this in the actual package)
poetry config repositories.pypi https://test.pypi.org/simple/

# Change into folder (repo name)
cd pypackage
bash scripts/deploy.sh
