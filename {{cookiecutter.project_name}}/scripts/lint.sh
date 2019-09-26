#!/usr/bin/env bash

set -e
set -x

mypy {{cookiecutter.package_name}} --disallow-untyped-defs
black {{cookiecutter.package_name}} tests --check
isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --combine-as --line-width 88 --recursive --check-only --thirdparty {{cookiecutter.package_name}} {{cookiecutter.package_name}} tests