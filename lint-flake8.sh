#!/bin/bash
set -e
poetry run flake8 ansible_basic_sphinx_ext --count --max-complexity=10 --max-line-length=100 --statistics "$@"
