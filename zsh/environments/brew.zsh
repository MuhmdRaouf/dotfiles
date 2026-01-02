##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                 Homebrew                                  ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export BREW_BIN_PATH="$(brew --prefix)/bin"
path=("$BREW_BIN_PATH" $path)

export CURL_BIN_PATH="$(brew --prefix curl)/bin"
path=("$CURL_BIN_PATH" $path)

export LIBPQ_BIN_PATH="$(brew --prefix libpq)/bin"
path=("$LIBPQ_BIN_PATH" $path)

export PATH
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
