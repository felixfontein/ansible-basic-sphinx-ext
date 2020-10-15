#!/bin/bash
set -e
poetry run pylint --rcfile .pylintrc.automated ansible_basic_sphinx_ext "$@"
