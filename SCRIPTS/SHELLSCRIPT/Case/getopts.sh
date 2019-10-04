#!/bin/bash

while getopts ":a" opt; do
  case $opt in
    a)
      echo "Instalar Apache2!"
      ;;
    \?)
      echo "Opção invalida: -$OPTARG"
      ;;
  esac
done
