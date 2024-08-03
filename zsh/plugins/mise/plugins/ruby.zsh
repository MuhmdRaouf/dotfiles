##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                Ruby Configs                               ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export MISE_RUBY_DEFAULT_PACKAGES_FILE="$MISE_CONFIG_DIR/default-ruby-gems"
[[ -e "$MISE_RUBY_DEFAULT_PACKAGES_FILE" ]] || cat >> "$MISE_RUBY_DEFAULT_PACKAGES_FILE" << EOM
neovim
rubocop
ruby-lsp
solargraph
EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
