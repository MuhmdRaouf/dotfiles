##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                 Plugins                                   ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
zinit ice wait blockf atpull'zinit creinstall -q .' nocd silent
zinit light zsh-users/zsh-completions

zinit ice wait atinit"zpcompinit; zpcdreplay" nocd silent
zinit light zdharma-continuum/fast-syntax-highlighting

zinit ice wait atload"_zsh_autosuggest_start" nocd silent
zinit light zsh-users/zsh-autosuggestions

zinit ice wait nocd silent
zinit light zdharma-continuum/history-search-multi-word

zinit ice wait nocd silent
zinit light zsh-users/zsh-history-substring-search

zinit ice wait nocd silent
zinit light zdharma-continuum/zbrowse

zinit ice wait nocd silent
zinit light zdharma-continuum/zui
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
