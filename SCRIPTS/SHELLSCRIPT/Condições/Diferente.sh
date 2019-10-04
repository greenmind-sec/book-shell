#!/bin/bash

echo "Digite uma porta"
read porta

if [[ "$porta" -ne "80" ]]
then
  echo "Não é a porta 80"
else
  echo "É a porta 80"
fi
