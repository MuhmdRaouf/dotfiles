#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                Plugins                                   """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
zinit ice wait blockf atpull'zinit creinstall -q .' lucid
zinit light zsh-users/zsh-completions

zinit ice wait atinit"zpcompinit; zpcdreplay" lucid
zinit light zdharma/fast-syntax-highlighting

zinit ice wait atload"_zsh_autosuggest_start" lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait"1" lucid
zinit light zdharma/history-search-multi-word

zinit ice wait"1" lucid
zinit light zsh-users/zsh-history-substring-search
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
