##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                Perl Configs                               ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export ASDF_PERL_DEFAULT_PACKAGES_FILE="$ASDF_CONFIG_HOME/default-perl-modules"
[[ -e "$ASDF_PERL_DEFAULT_PACKAGES_FILE" ]] || cat >> "$ASDF_PERL_DEFAULT_PACKAGES_FILE" << EOM
Neovim::Ext
EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
