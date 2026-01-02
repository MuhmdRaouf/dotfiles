##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               Python Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export MISE_PYTHON_DEFAULT_PACKAGES_FILE="$MISE_CONFIG_DIR/default-python-packages"
[[ -e "$MISE_PYTHON_DEFAULT_PACKAGES_FILE" ]] || cat >> "$MISE_PYTHON_DEFAULT_PACKAGES_FILE" << EOM
oci-cli
pip
pipx
pyright
python-lsp-server[all]
EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
