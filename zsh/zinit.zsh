##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                   Zinit                                   ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
typeset -Ag ZINIT  
typeset -gx ZINIT[MUTE_WARNINGS]=1
typeset -gx ZINIT[COMPINIT_OPTS]="-C"
typeset -gx ZINIT[OPTIMIZE_OUT_DISK_ACCESSES]=1
typeset -gx ZINIT[HOME_DIR]="$XDG_DATA_HOME/zinit"
typeset -gx ZINIT[BIN_DIR]="${ZINIT[HOME_DIR]}/bin"
typeset -gx ZINIT[ZCOMPDUMP_PATH]="${ZINIT[HOME_DIR]}"
typeset -gx ZINIT[PLUGIN_DIR]="${ZINIT[HOME_DIR]}/plugin"
typeset -gx ZINIT[SNIPPETS_DIR]="${ZINIT[HOME_DIR]}/snippets"
typeset -gx ZINIT[COMPLETIONS_DIR]="${ZINIT[HOME_DIR]}/completions"

if [[ ! -f "${ZINIT[HOME_DIR]}/bin/zinit.zsh" ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "${ZINIT[HOME_DIR]}"
    command git clone --depth=1 https://github.com/zdharma-continuum/zinit "${ZINIT[HOME_DIR]}/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi

source "${ZINIT[HOME_DIR]}/bin/zinit.zsh"
autoload -Uz _zinit

if (( ${+_comps} )); then
  _comps[zinit]=_zinit
fi
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
