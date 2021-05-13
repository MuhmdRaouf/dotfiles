#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                               Oh My Zsh                                  """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
export ZSH_DOTENV_PROMPT=false

# Libs
zinit light-mode wait nocd silent for \
    OMZL::compfix.zsh \
    OMZL::completion.zsh \
    OMZL::spectrum.zsh \
    OMZL::termsupport.zsh

# Plugins
zinit snippet OMZP::vi-mode/vi-mode.plugin.zsh 
zinit light-mode wait nocd silent for \
    OMZP::colored-man-pages/colored-man-pages.plugin.zsh \
    OMZP::command-not-found/command-not-found.plugin.zsh \
    OMZP::dotenv/dotenv.plugin.zsh \
    OMZP::git/git.plugin.zsh \
    OMZP::git-auto-fetch/git-auto-fetch.plugin.zsh \
    OMZP::minikube/minikube.plugin.zsh
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
