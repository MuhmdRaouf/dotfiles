#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                 goenv                                    """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
export GOENV_ROOT="$XDG_CONFIG_HOME/goenv"
eval "$(goenv init -)"
[ -d "$GOPATH" ] || mkdir -p "$GOPATH"
[ -d "$GOPATH/src/github.com/MuhmdRaouf" ] || mkdir -p "$GOPATH/src/github.com/MuhmdRaouf"
[ ! -d "$GOPATH" ] || path=("$GOPATH/bin" $path) && export PATH
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
