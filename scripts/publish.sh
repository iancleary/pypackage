#! /usr/bin/env bash

# Exit in case of error
set -e

# There are a few key lines are in ../.github/workflows/publish.yml
# ```yml
#   - name: Publish
#     env:
#       PYPI_TOKEN: ${{ secrets.PYPI_TOKEN }}
#     run: |
#       poetry config pypi-token.pypi $PYPI_TOKEN
#       poetry config repositories.pypi https://test.pypi.org/simple/
#       bash scripts/publish.sh
# ```
## 1) Environment variale is pulled from repo settings.
### `env:
#       PYPI_TOKEN: ${{ secrets.PYPI_TOKEN }}`
#
## 2) Token is pulled from the environment variable POETRY_PYPI_TOKEN_PYPI
### `poetry config pypi-token.pypi $PYPI_TOKEN`
#
## 3) URL of repo set to test PyPI
### `poetry config repositories.pypi https://test.pypi.org/simple/`
#
# ----------------------------------------------------------
# ----------------------------------------------------------
# Then this script `scripts/publish.sh` builds and publishes
#
# https://python-poetry.org/docs/libraries/
# https://python-poetry.org/docs/cli/#publish
poetry publish --build
