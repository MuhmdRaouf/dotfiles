##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               NodeJS Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export ASDF_NPM_DEFAULT_PACKAGES_FILE="$ASDF_CONFIG_HOME/default-nodejs-packages"
[[ -e "$ASDF_NPM_DEFAULT_PACKAGES_FILE" ]] || cat >> "$ASDF_NPM_DEFAULT_PACKAGES_FILE" << EOM
@ansible/ansible-language-server
bash-language-server
dockerfile-language-server-nodejs
graphql-language-service-cli
intelephense
js-beautify
marked
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
