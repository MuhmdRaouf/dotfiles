##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               NodeJS Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export MISE_NODE_COREPACK=true
export MISE_NODE_DEFAULT_PACKAGES_FILE="$MISE_CONFIG_DIR/default-node-packages"
[[ -e "$MISE_NODE_DEFAULT_PACKAGES_FILE" ]] || cat >> "$MISE_NODE_DEFAULT_PACKAGES_FILE" << EOM
npm-check-updates
EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
