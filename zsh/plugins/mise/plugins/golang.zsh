##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               Golang Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export MISE_GO_DEFAULT_PACKAGES_FILE="$MISE_CONFIG_DIR/default-golang-pkgs"
[[ -e "$MISE_GO_DEFAULT_PACKAGES_FILE" ]] || cat >> "$MISE_GO_DEFAULT_PACKAGES_FILE" << EOM
EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
