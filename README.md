# Cookiecutter py
[![Build Status](https://img.shields.io/travis/com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/master.svg)](https://img.shields.io/travis/com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}})
[![image](https://img.shields.io/pypi/v/{{cookiecutter.package_name}}.svg)](https://pypi.org/project/{{cookiecutter.repo_name}}/)
[![Updates](https://pyup.io/repos/github/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/shield.svg)](https://pyup.io/repos/github/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/)
[![image](https://img.shields.io/pypi/l/{{cookiecutter.package_name}}.svg)](https://pypi.org/project/{{cookiecutter.package_name}}/)
[![image](https://img.shields.io/pypi/pyversions/{{cookiecutter.package_name}}.svg)](https://pypi.org/project/{{cookiecutter.package_name}}/)
[![image](https://img.shields.io/github/contributors/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}.svg)](https://github.com/{{cookiecutter.github_user}}/{{cookiecutter.repo_name}}/graphs/contributors)


# The Basic Idea

This is a template module collecting many utilities I have liked from other projects, to serve as a personal reference.
- [https://github.com/tiangolo/fastapi/](https://github.com/tiangolo/fastapi/)

## Getting started with this template

```bash
$ cookiecutter https://github.com/{{cookiecutter.github_user}}/cookiecutter-pypackage
# For the sake of brevity, repos on GitHub can just use the 'gh' prefix
$ cookiecutter gh:{{cookiecutter.github_user}}/cookiecutter-pypackage

```

## Example Usage

```python
import {{cookiecutter.package_name}}

# do stuff
```

## Installing {{cookiecutter.package_name}}

Install the latest release:

```bash
pip install {{cookiecutter.package_name}}
```

Only **Python 3.6+** is supported as required by the black, pydantic packages

----------

## Contributing Guide

See the [Contributing Guide](CONTRIBUTING.md) and welcome!
