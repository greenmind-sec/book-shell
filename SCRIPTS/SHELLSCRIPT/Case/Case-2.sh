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
  *)
    echo Opção inválida: $1
    exit 0
    ;;
esac
