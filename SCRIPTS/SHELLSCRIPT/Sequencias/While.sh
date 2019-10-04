#!/bin/bash
porta=1
while [[ $porta -le 254 ]]
do
    echo "Scanning host  [ 192.168.0.$porta ]"
    (( porta++ ))
done
