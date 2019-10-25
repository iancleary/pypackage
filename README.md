# Cookiecutter python module

[![Build Status](https://img.shields.io/travis/com/iancleary/cookiecutter-pypackage/master.svg)](https://img.shields.io/travis/com/iancleary/cookiecutter-pypackage)
[![image](https://img.shields.io/github/contributors/iancleary/cookiecutter-pypackage.svg)](https://github.com/iancleary/cookiecutter-pypackage/graphs/contributors)

## The Basic Idea

This is a template module collecting many utilities I have liked from other projects, to serve as a personal reference.

- [https://github.com/tiangolo/fastapi/](https://github.com/tiangolo/fastapi/)
- [https://github.com/tiangolo/full-stack-fastapi-postgresql](https://github.com/tiangolo/full-stack-fastapi-postgresql)
- [https://github.com/cookiecutter/cookiecutter](https://github.com/cookiecutter/cookiecutter)

## Getting started with this template

```bash
pip install --user cookiecutter

$ cookiecutter https://github.com/iancleary/cookiecutter-pypackage
# For the sake of brevity, repos on GitHub can just use the 'gh' prefix
$ cookiecutter gh:iancleary/cookiecutter-pypackage
```

## Features

- pipenv (sane virtualenv)
- black (linting/formatter)
- autoflake (removing unused packages)
- isort (dependency organization)
- mypy (static type checking)
- pytest (including test coverage)
- travis-ci for CI/CD

Only **Python 3.6+** is supported as required by the black, pydantic packages

----------

## Contributing Guide

See the [Contributing Guide](CONTRIBUTING.md) and welcome!
