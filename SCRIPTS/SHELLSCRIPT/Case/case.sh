#!/bin/bash

function help() {
  echo "Help"
}

function versao() {
  echo "Versão"
}

function manual() {
  echo "Manual"
}

case $1 in
  -h )
    help
    ;;
  -V )
    versao
    ;;
  -m )
    manual
    ;;
esac

