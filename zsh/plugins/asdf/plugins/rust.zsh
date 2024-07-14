##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                Rust Configs                               ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export ASDF_CRATE_DEFAULT_PACKAGES_FILE="$ASDF_CONFIG_HOME/default-cargo-crates"
[[ -e "$ASDF_CRATE_DEFAULT_PACKAGES_FILE" ]] || cat >> "$ASDF_CRATE_DEFAULT_PACKAGES_FILE" << EOM

EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
