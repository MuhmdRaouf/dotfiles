##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               NodeJS Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export MISE_NODE_COREPACK=true
export MISE_NODE_DEFAULT_PACKAGES_FILE="$MISE_CONFIG_DIR/default-node-packages"
[[ -e "$MISE_NODE_DEFAULT_PACKAGES_FILE" ]] || cat >> "$MISE_NODE_DEFAULT_PACKAGES_FILE" << EOM
@google/gemini-cli
gitlab-ci-local
npm
npm-check-updates
pnpm
typescript
typescript-language-server
yarn
EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
