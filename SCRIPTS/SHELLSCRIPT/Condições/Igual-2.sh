#!/bin/bash

# Podemos ver que só vai funcionar com números , agora se inserirmos o ** == ** ele vai reconhecer **letrar e números**.

if [[ "$1" == "" ]]
then
  echo "Não foi passado nenhum argumento"
else
  echo "O valor do argumento é $1"
fi
