#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#"""                                 Docker                                   """
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
# Auto completion plugins
zinit wait lucid for as"completion" \
    OMZP::docker/_docker \
    OMZP::docker-compose/_docker-compose

# postgres env
export DB_HOSTNAME="localhost"
export DB_USERNAME="postgres"
export DB_PASSWORD="password"
#""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
