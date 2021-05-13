#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                 NVM                                      """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
export NVM_AUTO_USE=true
export NVM_LAZY_LOAD=true
export NVM_SYMLINK_CURRENT=true
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
export NVM_LAZY_LOAD_EXTRA_COMMANDS=("cd" "vim")

zinit ice atload"_zsh-auto-lazy-nvm" nocd silent 
zinit light lukechilds/zsh-nvm
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
