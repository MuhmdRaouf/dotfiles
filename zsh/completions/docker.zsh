##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                  Docker                                   ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
zinit as"null" \
      id-as"docker-completions" \
      atpull="%atclone" run-atpull \
      atclone"docker completion zsh > _docker" \
      light-mode wait blockf lucid completions for zdharma-continuum/null
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
