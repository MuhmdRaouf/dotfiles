##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                  Docker                                   ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
zinit as"null" \
      id-as"copilot-completions" \
      atpull="%atclone" run-atpull \
      atclone"copilot completion zsh > _copilot" \
      light-mode wait blockf lucid completions for zdharma-continuum/null
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
