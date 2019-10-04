#!/bin/bash
echo "Digite uma porta"
read porta

#Se porta MENOR que 1 é 0
if [[ "$porta" -lt "1" ]]
then
  echo "Porta invalida"
else
  echo "Essa porta é MAIOR que 0"
fi
