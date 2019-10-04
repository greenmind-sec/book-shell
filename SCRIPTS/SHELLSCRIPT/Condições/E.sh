#!/bin/bash

if [[ "$1" == "192.168.0.1" && "$2" == "88" ]]
then
  echo "O roteador está em [ $1 ] com a porta [ $2 ] aberta"
else
  echo "Roteador não foi encontrado"
fi
