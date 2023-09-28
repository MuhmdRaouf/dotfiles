##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               XDG conventions                             ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
### A tidy $HOME is a tidy mind
# Obey XDG conventions;
# These are the defaults, but some applications are buggy when these lack
# explicit values.
export XDG_CONFIG_HOME="$HOME/.config";
[ -d "$XDG_CONFIG_HOME" ] || mkdir -p "$XDG_CONFIG_HOME"

export XDG_CACHE_HOME="$HOME/.cache";
[ -d "$XDG_CACHE_HOME" ] || mkdir -p "$XDG_CACHE_HOME"

export XDG_LOCAL_HOME="$HOME/.local";
[ -d "$XDG_LOCAL_HOME" ] || mkdir -p "$XDG_LOCAL_HOME"

export XDG_DATA_HOME="$XDG_LOCAL_HOME/share";
[ -d "$XDG_DATA_HOME" ] || mkdir -p "$XDG_DATA_HOME"

export XDG_STATE_HOME="$XDG_LOCAL_HOME/state";
[ -d "$XDG_STATE_HOME" ] || mkdir -p "$XDG_STATE_HOME"

export XDG_BIN_HOME="$XDG_LOCAL_HOME/bin";
export XDG_DOTFILES_HOME="$XDG_CONFIG_HOME/dotfiles"
[ -d "$XDG_BIN_HOME" ] || ln -sf "$XDG_DOTFILES_HOME/bin" $XDG_LOCAL_HOME

path=($XDG_BIN_HOME $path)
export PATH
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##

