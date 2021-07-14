#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                 NVM                                      """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
export NVM_AUTO_USE=true
export NVM_SYMLINK_CURRENT=true
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
[[ -e "${NVM_DIR}/default-packages" ]] || cat >> "${NVM_DIR}/default-packages" << EOM
pm2
yarn
EOM

zinit light lukechilds/zsh-nvm
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
