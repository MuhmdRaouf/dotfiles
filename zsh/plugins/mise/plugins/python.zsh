##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               Python Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export MISE_PYTHON_DEFAULT_PACKAGES_FILE="$MISE_CONFIG_DIR/default-python-packages"
[[ -e "$MISE_PYTHON_DEFAULT_PACKAGES_FILE" ]] || cat >> "$MISE_PYTHON_DEFAULT_PACKAGES_FILE" << EOM
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
