#!/bin/bash
#
# Salvando cópia de um arquivo antes de removê-lo
# Tem de ter um ou mais arquivos a remover
if  [ $# -eq 0 ]
then
    echo "Erro -> Uso: erreeme arq [arq] ... [arq]"
    echo "O uso de metacaracteres e’ permitido. Ex.erreeme arq*"
    exit 1
fi
# Variável do sistema que contém o nome do usuário.
MeuDir="/tmp/$LOGNAME"
# Se não existir o meu diretório sob o /tmp...
if  [ ! -d $MeuDir ]
then
    mkdir $MeuDir      # Vou criá-lo
fi
# Se não posso gravar no diretório...
if  [ ! -w $MeuDir ]
then
    echo "Impossivel salvar arquivos em $MeuDir.Mude as permissões..."
    exit 2
fi
# Variável que indica o cod. de retorno do programa
Erro=0
# Um for sem o in recebe os parametros passados
for Arq
do
# Se este arquivo não existir...
    if  [ ! -f $Arq ]
    then
        echo "$Arq nao existe."
        Erro=3
        continue       # Volta para o comando for
    fi
# Cmd. dirname informa nome do dir de $Arq
    DirOrig=`dirname $Arq`
# Verifi ca permissão de gravacao no diretório
    if  [ ! -w $DirOrig ]
    then
        echo "Sem permissão no diretorio de $Arq"
        Erro=4
        continue         # Volta para o comando for
    fi
# Se estou "esvaziando a lixeira"...
    if  [ "$DirOrig" = "$MeuDir" ]
    then
        echo "$Arq fi cara sem copia de seguranca"
        rm -i $Arq      # Pergunta antes de remover
        # Será que o usuário removeu?
        [ -f $Arq ] || echo "$Arquivo removido"
        continue
    fi
# Guardo no fi m do arquivo o seu diretório original para usá-lo em um script de undelete
    cd $DirOrig
    pwd >> $Arq
    mv $Arq $MeuDir  # Salvo e removo
    echo "$Arq removido"
done
# Passo eventual número do erro para o código
# de retorno
exit $Erro
