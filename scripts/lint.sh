#!/usr/bin/env bash

set -e
set -x

mypy template_module --disallow-untyped-defs
black template_module tests --check
isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --combine-as --line-width 88 --recursive --check-only --thirdparty template_module template_module tests