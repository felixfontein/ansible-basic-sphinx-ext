Ansible Basic Sphinx Extension
==============================

⚠️ **This extension is deprecated! Use the ``sphinx_antsibull_ext`` extension instead, which is part of `antsibull-docs <https://pypi.org/project/antsibull-docs/>`_, and the `Pygments lexer and style Ansible snippets <https://github.com/ansible-community/ansible-pygments>`_ which are a dependency of antsibull-docs!** ⚠️

This is a minimal Sphinx extension which adds some features from the Ansible doc site:

1. The ``ansible-output`` Pygments lexer;
2. Some minimal CSS so that the plugin documentation rendered by `antsibull-docs <https://pypi.org/project/antsibull-docs/>`_ looks good.

Using The extension
-------------------

1. Install the extension::

       pip install ansible_basic_sphinx_ext

2. Include it in your sphinx configuration ``conf.py``::

       # Add it to 'extensions':
       extensions = ['sphinx.ext.autodoc', 'sphinx.ext.intersphinx', 'notfound.extension', 'ansible_basic_sphinx_ext']

Building CSS File
-----------------

The CSS file `ansible_basic_sphinx_ext/ansible-basic-sphinx-ext.css <https://github.com/felixfontein/ansible-basic-sphinx-ext/blob/main/ansible_basic_sphinx_ext/ansible-basic-sphinx-ext.css>`_ is built from `css-source/ansible-basic-sphinx-ext.scss <https://github.com/felixfontein/ansible-basic-sphinx-ext/blob/main/css-source/ansible-basic-sphinx-ext.scss>`_ using `SASS <https://sass-lang.com/>`_ and `postcss <https://postcss.org/>`_ using `autoprefixer <https://github.com/postcss/autoprefixer>`_ and `cssnano <https://cssnano.co/>`_.

Use the script ``build-css.sh`` to build the ``.css`` file from the ``.scss`` file::

    ./build-css.sh

For this to work, you need to make sure that ``sassc`` and ``postcss`` are on your path and that the autoprefixer and nanocss modules are installed::

    # Debian:
    apt-get install sassc

    # PostCSS, autoprefixer and cssnano require nodejs/npm:
    npm install autoprefixer cssnano postcss postcss-cli
