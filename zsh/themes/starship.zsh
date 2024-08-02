##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                   mise                                    ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

if [[ ! -f $XDG_BIN_HOME/starship ]]; then
  print -P "%F{33}▓▒░ %F{220}Installing starship The minimal, blazing-fast, and infinitely customizable prompt for any shell!…%f"
  command curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir $XDG_BIN_HOME --yes > /dev/null && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
    print -P "%F{160}▓▒░ The clone has failed.%f"
fi

eval "$(starship init zsh)"
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
