#!/bin/sh -e
set -x

autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place {{cookiecutter.package_name}} tests --exclude=__init__.py
black {{cookiecutter.package_name}} tests
isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --combine-as --line-width 88 --recursive --thirdparty {{cookiecutter.package_name}} --apply {{cookiecutter.package_name}} tests
