#!/bin/bash
# Recebe parte dos nomes de
# músicas como parâmetro e
# lista os intérpretes. Se o
# nome for composto, deve
# ser passado entre aspas.
# ex. “Eu não sou cachorro não”
# “Churrasquinho de Mãe”
#
if  [ $# -eq 0 ]
then
    echo Uso: $0 musica1 [musica2] ... [musican]
    exit 1
fi
IFS=":"
for Musica
do
    echo $Musica
    Str=$(grep -i "$Musica" musicas.txt) ||
        {
        echo "Não encontrada"
        continue
        }
    for ArtMus in $(echo "$Str" | cut -f2 -d^)
    do
        echo "$ArtMus" | grep -i "$Musica" | cut -f1 -d~
    done
done
