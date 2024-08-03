##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                   mise                                    ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export MISE_DATA_DIR="$XDG_DATA_HOME/mise"
export MISE_CACHE_DIR="$XDG_CACHE_HOME/mise"
export MISE_STATE_DIR="$XDG_STATE_HOME/mise"
export MISE_CONFIG_DIR="$XDG_CONFIG_HOME/mise"

if [[ ! -f $XDG_BIN_HOME/mise ]]; then
  print -P "%F{33}▓▒░ %F{220}Installing mise-en-place: The front-end to your dev env (jdx/mise)…%f"
  command curl https://mise.run | sh && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
    print -P "%F{160}▓▒░ The clone has failed.%f"
fi

eval "$(mise activate zsh)"
eval "$(mise hook-env -s zsh)"
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
