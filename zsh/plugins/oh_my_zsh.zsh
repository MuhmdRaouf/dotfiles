##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                Oh My Zsh                                  ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export ZSH_DOTENV_PROMPT=false

# Libs
zinit light-mode wait nocd silent for \
    OMZL::clipboard.zsh \
    OMZL::compfix.zsh \
    OMZL::completion.zsh \
    OMZL::functions.zsh \
    OMZL::git.zsh \
    OMZL::spectrum.zsh \
    OMZL::termsupport.zsh

# Plugins
zinit snippet OMZP::brew/brew.plugin.zsh 
zinit snippet OMZP::vi-mode/vi-mode.plugin.zsh 
zinit light-mode wait nocd silent for \
    OMZP::colored-man-pages/colored-man-pages.plugin.zsh \
    OMZP::command-not-found/command-not-found.plugin.zsh \
    OMZP::composer/composer.plugin.zsh \
    OMZP::git/git.plugin.zsh \
    OMZP::git-auto-fetch/git-auto-fetch.plugin.zsh \
    OMZP::gnu-utils/gnu-utils.plugin.zsh \
    OMZP::gpg-agent/gpg-agent.plugin.zsh \
    OMZP::gradle/gradle.plugin.zsh \
    OMZP::history-substring-search/history-substring-search.plugin.zsh \
    OMZP::kubectl/kubectl.plugin.zsh \
    OMZP::lol/lol.plugin.zsh \
    OMZP::minikube/minikube.plugin.zsh \
    OMZP::npm/npm.plugin.zsh \
    OMZP::poetry/poetry.plugin.zsh \
    OMZP::rails/rails.plugin.zsh \
    OMZP::terraform/terraform.plugin.zsh \
    OMZP::xcode/xcode.plugin.zsh \
    OMZP::zsh-interactive-cd/zsh-interactive-cd.plugin.zsh
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
