##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               Python Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export ASDF_PYTHON_DEFAULT_PACKAGES_FILE="$ASDF_CONFIG_HOME/default-python-packages"
[[ -e "$ASDF_PYTHON_DEFAULT_PACKAGES_FILE" ]] || cat >> "$ASDF_PYTHON_DEFAULT_PACKAGES_FILE" << EOM
black
Cython
fb-idb
isort
nginx-language-server
nose
pynvim
pip
pipenv
pipx
pyflakes
pytest
python-lsp-server[all]
EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
