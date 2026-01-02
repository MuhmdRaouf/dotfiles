##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
#""                                   Shapa                                   ""#
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
alias shapadb="docker container start shapadb"
alias shapadb-stop="docker container stop shapadb"
alias shapadb-refresh="docker container rm -f shapadb; docker run --name shapadb --publish 5432:5432 --volume $HOME/.work/Shapa/shapa-server/tmp/database_backups/:/backups/ --env POSTGRES_PASSWORD=$DB_PASSWORD --detach postgres:17-alpine"
alias shapadb-shell="docker exec -it shapadb bash"
alias shapadb-db-shell="docker exec -it shapadb psql -U postgres"
##"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""##
