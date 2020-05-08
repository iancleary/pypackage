# {{cookiecutter.package_name}}

[![Build Status](https://img.shields.io/travis/com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/master.svg)](https://img.shields.io/travis/com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}})
[![image](https://img.shields.io/pypi/v/{{cookiecutter.package_name}}.svg)](https://pypi.org/project/{{cookiecutter.repo_name}}/)
[![image](https://img.shields.io/pypi/l/{{cookiecutter.package_name}}.svg)](https://pypi.org/project/{{cookiecutter.package_name}}/)
[![image](https://img.shields.io/pypi/pyversions/{{cookiecutter.package_name}}.svg)](https://pypi.org/project/{{cookiecutter.package_name}}/)
[![image](https://img.shields.io/github/contributors/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}.svg)](https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/graphs/contributors)

## The Basic Idea

This is a template module collecting many utilities I have liked from other projects, to serve as a personal reference.
- [https://github.com/tiangolo/fastapi/](https://github.com/tiangolo/fastapi/)
- [https://github.com/cookiecutter/cookiecutter](https://github.com/cookiecutter/cookiecutter)

## Features

- Poetry (virtual environment and publish, all with one tool)
- black (linting/formatter)
- autoflake (removing unused packages)
- isort (dependency organization)
- mypy (static type checking)
- pytest (including test coverage)
- travis-ci for CI/CD

## Installing {{cookiecutter.package_name}}

Install the latest release:

```bash
pip install {{cookiecutter.package_name}}
```

Or you can clone `{{cookiecutter.package_name}}` and get started locally

```bash

# ensure you have Poetry installed
pip install --user poetry

# install all dependencies (including dev)
poetry install

# develop!

```

## Example Usage

```python
import {{cookiecutter.package_name}}

# do stuff
```

Only **Python 3.6+** is supported as required by the black, pydantic packages

## Deploying to PyPi

Using the poetry package

```bash
./scripts/deploy.sh
```
