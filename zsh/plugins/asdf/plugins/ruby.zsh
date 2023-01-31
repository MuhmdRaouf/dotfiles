##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                Ruby Configs                               ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export ASDF_GEM_DEFAULT_PACKAGES_FILE="$ASDF_CONFIG_HOME/default-ruby-packages"
[[ -e "$ASDF_GEM_DEFAULT_PACKAGES_FILE" ]] || cat >> "$ASDF_GEM_DEFAULT_PACKAGES_FILE" << EOM

EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
