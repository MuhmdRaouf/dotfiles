#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                            XDG conventions                               """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
### A tidy $HOME is a tidy mind
# Obey XDG conventions;
# These are the defaults, but some applications are buggy when these lack
# explicit values.
export XDG_CONFIG_HOME="$HOME/.config";
[ -d "$XDG_CONFIG_HOME" ] || mkdir -p "$XDG_CONFIG_HOME"

export XDG_CACHE_HOME="$HOME/.cache";
[ -d "$XDG_CACHE_HOME" ] || mkdir -p "$XDG_CACHE_HOME"

export XDG_DATA_HOME="$HOME/.local/share";
[ -d "$XDG_DATA_HOME" ] || mkdir -p "$XDG_DATA_HOME"

export XDG_BIN_HOME="$HOME/.local/bin";
[ -d "$XDG_BIN_HOME" ] || mkdir -p "$XDG_BIN_HOME"

path=($XDG_BIN_HOME $path)
export PATH
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

