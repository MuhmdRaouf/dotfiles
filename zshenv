#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                            XDG conventions                               """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
### A tidy $HOME is a tidy mind
# Obey XDG conventions;
# These are the defaults, but some applications are buggy when these lack
# explicit values.
export XDG_CONFIG_HOME="$HOME/.config";
export XDG_CACHE_HOME="$HOME/.cache";
export XDG_DATA_HOME="$HOME/.local/share";
export XDG_BIN_HOME="$HOME/.local/bin";
path=($XDG_BIN_HOME $path)
export PATH
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

