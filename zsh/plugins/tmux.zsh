##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                   Tmux                                    ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export TMUX_CONFIG_FILE="$XDG_CONFIG_HOME/tmux/tmux.conf"
export TMUX_CONFIGS_DIR="$XDG_CONFIG_HOME/tmux/conf.d"
export TMUX_PLUGINS_DIR="$XDG_CONFIG_HOME/tmux/plugins"
export TMUX_PLUGIN_MANAGER_PATH="$TMUX_PLUGINS_DIR/tpm"
zinit ice id-as'tpm' as'null' atclone'rm -rf $TMUX_PLUGINS_DIR; mkdir -p $TMUX_PLUGINS_DIR; ln -s $ZINIT[PLUGINS_DIR]/tpm $TMUX_PLUGIN_MANAGER_PATH'
zinit light tmux-plugins/tpm
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
