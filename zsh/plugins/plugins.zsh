##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                 Plugins                                   ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
zinit ice wait id-as'zsh-completions' blockf atpull'zinit creinstall -q .' nocd silent
zinit light zsh-users/zsh-completions

zinit ice wait id-as'fast-syntax-highlighting' atpull"fast-theme XDG:catppuccin-mocha" atinit"zpcompinit; zpcdreplay" nocd silent
zinit light zdharma-continuum/fast-syntax-highlighting

zinit ice wait id-as'zsh-autosuggestions' atload"_zsh_autosuggest_start" nocd silent
zinit light zsh-users/zsh-autosuggestions

zinit ice wait id-as'history-search-multi-word' nocd silent
zinit light zdharma-continuum/history-search-multi-word

zinit ice wait id-as'zsh-history-substring-search' nocd silent
zinit light zsh-users/zsh-history-substring-search

zinit ice wait id-as'zbrowse' trackbinds bindmap"^B -> ^Z^B" lucid
zinit light zdharma-continuum/zbrowse

zinit ice wait id-as'zui' nocd silent
zinit light zdharma-continuum/zui
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
