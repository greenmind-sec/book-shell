#!/bin/bash
# Script meramente pedagógico
# cuja função é contar a
# quantidade de palavras de
# um arquivo. Supõe-se que as
# palavras estão separadas
# entre si por espaços, <TAB>
# ou <ENTER>.
if  [ $# -ne 1 ]
then
    echo uso: $0 /caminho/do/arquivo
    exit 2
fi
Cont=0
for Palavra in $(cat $1)
do
    Cont=$((Cont+1))
done
echo O arquivo $1 tem $Cont palavras.
