##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                               Golang Configs                              ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
export ASDF_GOLANG_MOD_VERSION_ENABLED=true
export ASDF_GOLANG_DEFAULT_PACKAGES_FILE="$ASDF_CONFIG_HOME/default-golang-pkgs"
[[ -e "$ASDF_GOLANG_DEFAULT_PACKAGES_FILE" ]] || cat >> "$ASDF_GOLANG_DEFAULT_PACKAGES_FILE" << EOM
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
