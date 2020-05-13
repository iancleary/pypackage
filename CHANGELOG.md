# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.4.2] - 2020-05-13

## Changed

- Fixed root level Readme and GitHub Actions to be consistent with new publish demonstration scope

### Removed

- Reduced publish demonstration scope (no longer tries to publish to test.pypi.org)

## [0.4.1] - 2020-05-13

### Added

- `poetry run` prefix to [.github/workflows/publish.yml](.github/workflows/publish.yml)

## [0.4.0] - 2020-05-13

### Added

- Poetry
- Publishing to test.pypi.org
- Github Actions Workflows for publishing, testing, and issue management

### Removed

- Pipfile
- stale files `scripts/deploy.sh` and `setup.py`
- Pyup badges
- Travis-CI

## [0.3.0] - 2020-01-03

- changelog version generation with YYYY-MM-DD date format
- flit pyproject.toml fixes and additional metadata
- fixed created folder name (should be repo_name, was package_name)
- added Makefile as entry point
- added .vscode recommended extensions
- added setup.py
- corrected .gitingore for above and install* make targets

## [0.2.0] - 2019-11-25

### Added

- fixed flit version and docstring to be in __init__.py
- added travis.yml testing to repo
- added mkdocs for documentation (with material theme)

## [0.1.0] - 2019-09-26

- Conception!

[Unreleased]: https://github.com/iancleary/pypackage/compare/v0.4.1...HEAD
[0.4.1]: https://github.com/iancleary/pypackage/releases/tag/v0.4.1
[0.4.0]: https://github.com/iancleary/pypackage/releases/tag/v0.4.0
[0.3.0]: https://github.com/iancleary/pypackage/releases/tag/v0.3.0
[0.2.0]: https://github.com/iancleary/pypackage/releases/tag/v0.2.0
[0.1.0]: https://github.com/iancleary/pypackage/releases/tag/v0.1.0
