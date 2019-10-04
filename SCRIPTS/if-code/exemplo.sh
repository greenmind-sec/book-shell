opc=$1
if [[ $opc -eq 1 ]]
then
    inclusao
elif [[ $opc -eq 2 ]]
then
    exclusao
elif [[ $opc -eq 3 ]]
then
    alteracao
elif [[ $opc -eq 4 ]]
then
    exit
else
    echo Digite uma opção entre 1 e 4
fi
