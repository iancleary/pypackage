#!/usr/bin/env bash

set -e
set -x

mypy {{cookiecutter.project_name}} --disallow-untyped-defs
black {{cookiecutter.project_name}} tests --check
isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --combine-as --line-width 88 --recursive --check-only --thirdparty {{cookiecutter.project_name}} {{cookiecutter.project_name}} tests