##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                 ZSH Settings                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
ZSH_CONFIGRATION_DIRECTORY="$XDG_CONFIG_HOME/zsh"
[ -d "$ZSH_CONFIGRATION_DIRECTORY" ] || mkdir -p "$ZSH_CONFIGRATION_DIRECTORY"

ZSH_HISTORY_DIRECTORY="$ZSH_CONFIGRATION_DIRECTORY/history"
[ -d "$ZSH_HISTORY_DIRECTORY" ] || mkdir -p "$ZSH_HISTORY_DIRECTORY"

HISTFILE="$ZSH_HISTORY_DIRECTORY/.zsh_history"
HISTSIZE=1000000
SAVEHIST=$HISTSIZE
COMPLETION_WAITING_DOTS=true

# Fix MacOS Locale issue
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# http://zsh.sourceforge.net/Doc/Release/Options.html
setopt AUTO_CD
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt PROMPT_SUBST
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES # fix "+[__NSPlaceholderDictionary initialize] may have been in progress in another thread when fork() was called" issue
path=("/usr/local/sbin" $path)
export PATH
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
