#!/bin/sh
set -e
poetry run python -m pytest --cov-branch --cov=ansible_basic_sphinx_ext --cov-report term-missing -vv tests "$@"
