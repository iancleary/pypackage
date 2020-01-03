.PHONY: help

# Shell that make should use
SHELL:=bash

# Capture git branch and hash information
# https://stackoverflow.com/questions/43008842/capture-git-branch-name-in-makefile-variable
BRANCH := $(shell git rev-parse --abbrev-ref HEAD)
HASH := $(shell git rev-parse HEAD)

# - to suppress if it doesn't exist
-include make.env

help:
# http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
# adds anything that has a double # comment to the phony help list
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

lint: ## lint the code
lint:
	bash scripts/lint.sh

format: ## format the code
format:
	bash scripts/format.sh

test: ## lint the code
test:
	bash scripts/test.sh

docs-live: ## make live docs
docs-live:
	bash scripts/docs-live.sh

deploy-docs: ## deploy the docs, if on master branch
deploy-docs:
	# https://www.mkdocs.org/user-guide/deploying-your-docs/

	# moved script to bash file for easy of reading
	bash scripts/deploy-docs.sh

install: ## uninstall and install package with python
install:
	echo y | pip uninstall {{cookiecutter.package_name}}
	python setup.py build
	python setup.py install

install-editable: ## uninstall and install package with python, editable
install-editable:
	# https://pip.pypa.io/en/stable/reference/pip_install/#editable-installs
	echo y | pip uninstall {{cookiecutter.package_name}}
	python setup.py build
	python setup.py develop
	# python -m pip install -e .
