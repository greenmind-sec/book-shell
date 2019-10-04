#!/bin/bash
echo "Digite uma porta"
read porta
#Se variavel porta for Maior ou igual que 995
if [[ "$porta" -ge "995" ]]
then
  echo "Essa porta é MAIOR ou IGUAL a porta 995"
else
  echo "Essa porta não é MAIOR ou IGUAL a porta 995"
fi
