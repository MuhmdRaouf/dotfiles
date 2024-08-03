##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               Golang Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export MISE_GO_DEFAULT_PACKAGES_FILE="$MISE_CONFIG_DIR/default-golang-pkgs"
[[ -e "$MISE_GO_DEFAULT_PACKAGES_FILE" ]] || cat >> "$MISE_GO_DEFAULT_PACKAGES_FILE" << EOM
github.com/cweill/gotests/gotests@latest
github.com/fatih/gomodifytags@latest
github.com/jessfraz/dockfmt@latest
github.com/sqls-server/sqls@latest
github.com/x-motemen/gore/cmd/gore@latest
golang.org/x/tools/cmd/guru@latest
golang.org/x/tools/gopls@latest
mvdan.cc/sh/v3/cmd/shfmt@latest
EOM
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
