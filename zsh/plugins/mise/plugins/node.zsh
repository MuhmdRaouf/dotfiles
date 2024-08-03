##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               NodeJS Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export MISE_NODE_DEFAULT_PACKAGES_FILE="$MISE_CONFIG_DIR/default-node-packages"
[[ -e "$MISE_NODE_DEFAULT_PACKAGES_FILE" ]] || cat >> "$MISE_NODE_DEFAULT_PACKAGES_FILE" << EOM
@ansible/ansible-language-server
bash-language-server
dockerfile-language-server-nodejs
graphql-language-service-cli
intelephense
js-beautify
marked
neovim
npm-check-updates
pm2
pnpm
postcss-lit
stylelint
stylelint-config-standard
remark-language-server
typescript
typescript-language-server
unified-language-server
vscode-langservers-extracted
yaml-language-server
yarn
EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
