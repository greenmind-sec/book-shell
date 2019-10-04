#!/bin/bash
# Pesquisa se uma pessoa está
# logada ou não (versão 2)
if who | grep $1 > /dev/null
then
    echo $1 está logado
else
    echo $1 não está no pedaço
fi 
