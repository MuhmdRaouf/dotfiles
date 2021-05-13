#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                phpenv                                    """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
export PHPBREW_ROOT="$XDG_CONFIG_HOME/phpbrew"
export PHPBREW_HOME="$XDG_CONFIG_HOME/phpbrew"
PHPBREW_EXECUTABLE="$XDG_BIN_HOME/phpbrew"
PHPBREW_BASHRC="$PHPBREW_HOME/bashrc"

if [[ ! -f "$PHPBREW_EXECUTABLE" ]]; then
    curl -L -o $PHPBREW_EXECUTABLE https://github.com/phpbrew/phpbrew/raw/master/phpbrew
    chmod +x $PHPBREW_EXECUTABLE
    phpbrew init
fi

[[ ! -f "$PHPBREW_BASHRC" ]] && phpbrew init
[[ -e "$PHPBREW_BASHRC" ]] && source "$PHPBREW_BASHRC"
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
