# {{cookiecutter.repo_name}}

<p align="center">
    <em>A summary phrase to catch attention!</em>
</p>

<p align="center">
<a href="https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/actions?query=workflow%3ATest" target="_blank">
    <img src="https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/workflows/Test/badge.svg" alt="Test">
</a>
<a href="https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/actions?query=workflow%3APublish" target="_blank">
    <img src="https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/workflows/Publish/badge.svg" alt="Publish">
</a>
<a href="https://codecov.io/gh/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}" target="_blank">
    <img src="https://img.shields.io/codecov/c/github/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}?color=%2334D058" alt="Coverage">
</a>
<a href="https://pypi.org/project/{{cookiecutter.package_name}}" target="_blank">
    <img src="https://img.shields.io/pypi/v/{{cookiecutter.package_name}}?color=%2334D058&label=pypi%20package" alt="Package version">
</a>
<a href="https://pypi.org/project/{{cookiecutter.package_name}}/" target="_blank">
    <img src="https://img.shields.io/pypi/pyversions/{{cookiecutter.package_name}}.svg" alt="Python Versions">
</a>

## The Basic Idea

This is a template module collecting many utilities I have liked from other projects, to serve as a personal reference.
- [https://github.com/tiangolo/fastapi/](https://github.com/tiangolo/fastapi/)
- [https://github.com/cookiecutter/cookiecutter](https://github.com/cookiecutter/cookiecutter)

## Features

- Poetry (virtual environment and publish to PyPi, all with one tool)
- black (linting/formatter)
- autoflake (removing unused packages)
- isort (dependency organization)
- mypy (static type checking)
- pytest (including test coverage)
- GitHub Actions for CI/CD
- mkdocs for documentation (with material theme)

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

## Publishing to Pypi

### Poetry's documentation

Note that it is recommended to use [API tokens](https://pypi.org/help/#apitoken) when uploading packages to PyPI.

>Once you have created a new token, you can tell Poetry to use it:

<https://python-poetry.org/docs/repositories/#configuring-credentials>

We do this using GitHub Actions' Workflows and Repository Secrets!

### Repo Secrets

Go to your repo settings and add a `PYPI_TOKEN` environment variable:

![Github Actions setup of Poetry token environment variable](images/Github-Secrets-PYPI_TOKEN-Setup.png)

### Inspect the GitHub Actions Publish Workflows

```yml
name: Publish

on:
  release:
    types:
      - created

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      ...
      ...
      ...
      - name: Publish
        env:
          PYPI_TOKEN: ${{ secrets.PYPI_TOKEN }}
        run: |
          poetry config pypi-token.pypi $PYPI_TOKEN
          poetry config repositories.pypi https://test.pypi.org/simple/
          bash scripts/publish.sh
```

> That's it!

When you make a release on GitHub, the publish workflow will run and deploy to PyPi! 🚀🎉😎

## Contributing Guide

Welcome! 😊👋

> Please see the [Contributing Guide](CONTRIBUTING.md).
