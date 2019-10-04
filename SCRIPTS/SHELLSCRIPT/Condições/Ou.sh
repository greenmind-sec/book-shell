#!/bin/bash

if [ "$1" == 80 -o "$1" == 443 ]
then
  echo "A porta [ $1 ] está aberta"
else
  echo "A porta [ 80 ] e a [ 443 ] não estão abertas"
fi
