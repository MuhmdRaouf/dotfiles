##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                   asdf                                    ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"

export ASDF_CONFIG_HOME="$XDG_CONFIG_HOME/asdf"

[[ -d "$ASDF_CONFIG_HOME" ]] || mkdir -p "$ASDF_CONFIG_HOME"

export ASDF_CONFIG_FILE="$ASDF_CONFIG_HOME/asdfrc"
[[ -f "$ASDF_CONFIG_FILE" ]] || cat >> "$ASDF_CONFIG_FILE" << EOM
###
## Legacy files  
###
legacy_version_file = yes

###
## Java  
###
java_macos_integration_enable = yes

EOM

zinit ice atload"export ASDF_DIR=\"$ZINIT[PLUGINS_DIR]/asdf-vm---asdf\"; sh asdf.sh" ver="v0.11.1"
zinit light asdf-vm/asdf

path=("$ASDF_DIR/bin" $path)
export PATH
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
