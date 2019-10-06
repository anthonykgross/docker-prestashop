#!/bin/bash
set -e

source ~/.bash_profile

install() {
  echo 'Install'
#    gosu docker composer install
#    gosu docker gulp
#    gosu docker php bin/console cache:warmup
}

tests() {
    gosu docker php ./vendor/bin/simple-phpunit
}

run() {
    supervisord
}

permission() {
    chown -Rf docker:docker .
}

case "$1" in
"install")
    echo "Install"
    install
    ;;
"tests")
    echo "Tests"
    tests
    ;;
"run")
    echo "Run"
    run
    ;;
"permission")
    echo "Permission"
    permission
    ;;
*)
    echo "Custom command : $@"
    exec "$@"
    ;;
esac
