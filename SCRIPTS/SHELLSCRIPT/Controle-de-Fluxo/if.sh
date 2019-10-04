#!/bin/bash

echo "Digite uma porta"
read porta

if [[ "$porta" == "80" ]]
then
  echo "É a porta [ 80 ] "
else
  echo "Não é a porta [ 80 ]"
fi
