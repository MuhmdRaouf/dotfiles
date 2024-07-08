##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               Gnu Tools                                   ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export BREW_GNU_INDENT_PATH="/opt/homebrew/opt/gnu-indent/libexec/gnubin"
export BREW_GNU_SED_PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin"
export BREW_GNU_TAR_PATH="/opt/homebrew/opt/gnu-tar/libexec/gnubin"
export BREW_GNU_TIME_PATH="/opt/homebrew/opt/gnu-time/libexec/gnubin"
export BREW_GNU_WHICH_PATH="/opt/homebrew/opt/gnu-which/libexec/gnubin"
export BREW_GREP_PATH="/opt/homebrew/opt/grep/libexec/gnubin"
path=("$BREW_GNU_INDENT_PATH" "$BREW_GNU_SED_PATH" "$BREW_GNU_TAR_PATH" "$BREW_GNU_TIME_PATH" "$BREW_GNU_WHICH_PATH" "$BREW_GREP_PATH" $path)
export PATH
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
