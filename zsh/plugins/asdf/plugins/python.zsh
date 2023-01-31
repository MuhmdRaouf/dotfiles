##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               Python Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export ASDF_PYTHON_DEFAULT_PACKAGES_FILE="$ASDF_CONFIG_HOME/default-python-packages"
[[ -e "$ASDF_PYTHON_DEFAULT_PACKAGES_FILE" ]] || cat >> "$ASDF_PYTHON_DEFAULT_PACKAGES_FILE" << EOM

EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
