#!/bin/bash
echo "Digite uma porta"
read porta
#Se variavel porta for menor ou igual que 995
if [[ "$porta" -le "995" ]]
then
  echo "Essa porta é MENOR ou IGUAL a porta 995"
else
  echo "Essa porta não é MENOR ou IGUAL a porta 995"
fi
