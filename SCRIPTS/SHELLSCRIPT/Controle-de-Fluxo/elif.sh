#!/bin/bash

echo "Digite uma porta"
read porta

if [[ "$porta" == "80" ]]
then
  echo "A porta [ 80 ] está aberta"
elif [[ "$porta" == "443" ]]
then
  echo "A porta [ 443 ] está aberta"
else
  echo "A porta [ 80 ] e a [ 443 ] não estão abertas"
fi
