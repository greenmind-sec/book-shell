#!/bin/bash
echo "Digite uma porta"
read porta

#Se variável porta MAIOR que 666
if [[ "$porta" -gt "666" ]]
then
  echo "Essa porta é MAIOR que a porta 666"
else
  echo "Essa porta não é MAIOR que a porta 666"
fi
