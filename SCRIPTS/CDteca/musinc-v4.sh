#!/bin/bash
# Cadastra CDs (versao 4)
#
clear
read -p "Título do Álbum: " Tit
[ "$Tit" ] || exit 1 # Fim da execução se título vazio
if grep "^$Tit\^" musicas > /dev/null
then
    echo "Este álbum já está cadastrado"
    exit 1
fi
Reg="$Tit^"
Cont=1
oArt=
while true
do
    echo "Dados da trilha $Cont:"
    read -p "Música: " Mus
    [ "$Mus" ] || break       # Sai se vazio
    read -p "Artista: $oArt // " Art
    [ "$Art" ] && oArt="$Art" # Se vazio Art anterior
    Reg="$Reg$oArt~$Mus:"     # Montando registro
    Cont=$((Cont + 1))
    # A linha anterior tb poderia ser ((Cont++))
done
echo "$Reg" >> musicas
sort musicas -o musicas
