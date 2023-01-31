##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               NodeJS Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export ASDF_NPM_DEFAULT_PACKAGES_FILE="$ASDF_CONFIG_HOME/default-nodejs-packages"
[[ -e "$ASDF_NPM_DEFAULT_PACKAGES_FILE" ]] || cat >> "$ASDF_NPM_DEFAULT_PACKAGES_FILE" << EOM
npm-check-updates
pm2
pnpm
yarn
EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
