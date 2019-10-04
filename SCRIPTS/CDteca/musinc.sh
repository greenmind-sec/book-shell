#!/bin/bash
# Cadastra CDs (versao 3)
#

# USE: ./musinc.sh "album 4^Artista7~Musica7:Artista8~Musica8"
if  grep "^$1$" musicas > /dev/null
then
     echo Este álbum já está cadastrado
else
    echo $1 >> musicas
    sort musicas -o musicas
fi
