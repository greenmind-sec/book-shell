#!/bin/bash
# Executa e  monitora um
# processo em background
$1 &     # Coloca em backgroud
while ps | grep -q $!
do
    sleep 5
done
echo Fim do Processo $1
