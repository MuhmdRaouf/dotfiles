#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                  Zinit                                   """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
declare -A ZINIT  # initial Zinit's hash definition, if configuring before loading Zinit, and then:
ZINIT[HOME_DIR]="$XDG_CONFIG_HOME/zinit"
ZINIT[BIN_DIR]="${ZINIT[HOME_DIR]}/bin"
ZINIT[PLUGIN_DIR]="${ZINIT[HOME_DIR]}/plugin"
ZINIT[COMPLETIONS_DIR]="${ZINIT[HOME_DIR]}/completions"
ZINIT[SNIPPETS_DIR]="${ZINIT[HOME_DIR]}/snippets"
ZINIT[ZCOMPDUMP_PATH]="${ZINIT[HOME_DIR]}"
ZINIT[COMPINIT_OPTS]="-C"
# ZINIT[MUTE_WARNINGS]=1
ZINIT[OPTIMIZE_OUT_DISK_ACCESSES]=1
### Added by Zinit's installer
if [[ ! -f ${ZINIT[HOME_DIR]}/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p ${ZINIT[HOME_DIR]}
    command git clone https://github.com/zdharma/zinit ${ZINIT[HOME_DIR]}/bin && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi
source "${ZINIT[HOME_DIR]}/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit installer's chunk
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
