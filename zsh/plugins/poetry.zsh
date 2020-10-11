#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                 Poetry                                   """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
export POETRY_HOME="$XDG_CONFIG_HOME/poetry"
[ -d "$POETRY_HOME" ] || sh -c "curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python"
path=("$POETRY_HOME/bin" $path)
export PATH
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
