#!/bin/sh -e
set -x

autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place {{cookiecutter.project_name}} tests --exclude=__init__.py
black {{cookiecutter.project_name}} tests
isort --multi-line=3 --trailing-comma --force-grid-wrap=0 --combine-as --line-width 88 --recursive --thirdparty {{cookiecutter.project_name}} --apply {{cookiecutter.project_name}} tests