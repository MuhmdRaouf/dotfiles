# zmodload zsh/zprof
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

#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                               ZSH Settings                               """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $XDG_CONFIG_HOME/zsh/settings.zsh
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                              ZSH Plugins                                 """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $XDG_CONFIG_HOME/zsh/plugins/main.zsh
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                Theme                                     """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $XDG_CONFIG_HOME/zsh/themes/spaceship.zsh
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                               Android                                    """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $XDG_CONFIG_HOME/zsh/environments/main.zsh
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                Aliases                                   """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $XDG_CONFIG_HOME/zsh/aliases/main.zsh
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
# zprof