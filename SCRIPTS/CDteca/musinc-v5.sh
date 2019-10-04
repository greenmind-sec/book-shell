#!/bin/bash
# Cadastra CDs (versao 5)
#
Para=
until [ "$Para" ]
do
    clear
    read -p "Título do Álbum: " Tit
    if  [ ! "$Tit" ] # Se titulo vazio...
    then
        Para=1     # Liguei fl ag de saída
    else
        if grep "^$Tit\^" musicas > /dev/null
        then
            echo "Este álbum já está cadastrado"
            exit 1
        fi
        Reg="$Tit^"
        Cont=1
        oArt=
        while [ "$Tit" ]
        do
            echo Dados da trilha $Cont:
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
    fi
done
