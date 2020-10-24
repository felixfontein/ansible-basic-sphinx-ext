Ansible Basic Sphinx Extension
==============================

This is a minimal Sphinx extension which adds some features from the Ansible doc site:

1. The ``ansible-output`` Pygments lexer;
2. Some minimal CSS so that the plugin documentation rendered by `antsibull-docs <https://pypi.org/project/antsibull/>`_ looks good.

Buiding CSS File
----------------

The CSS file ``ansible_basic_sphinx_ext/ansible-basic-sphinx-ext.css`` is built from ``css-source/ansible-basic-sphinx-ext.scss`` using `SASS <https://sass-lang.com/>`_ and `postcss <https://postcss.org/>`_ using `autoprefixer <https://github.com/postcss/autoprefixer>`_ and `cssnano <https://cssnano.co/>`_.

Use the script ``build-css.sh`` to build the ``.css`` file from the ``.scss`` file::

    ./build-css.sh

For this to work, you need to make sure that ``sassc`` and ``postcss`` are on your path and that the autoprefixer and nanocss modules are installed::

    # Debian:
    apt-get install sassc

    # PostCSS, autoprefixer and cssnano require nodejs/npm:
    npm install autoprefixer cssnano postcss postcss-cli
