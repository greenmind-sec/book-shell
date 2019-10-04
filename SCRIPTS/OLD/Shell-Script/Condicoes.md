# Condições
- -lt ( < )
- -gt ( > )
- -le ( <= )
- -ge ( >= )
- -eq ( = )
- -ne ( != )

## Menor
Nesse exemplo vamos receber uma variável **porta** e se a variável for **menor (<,-lt)** que 1 a porta é invalida. O nome **lt** vem de **less than**.

```sh

#!/bin/bash
echo "Digite uma porta"
read porta

#Se porta MENOR que 1 é 0
if [[ "$porta" -lt "1" ]]
then
  echo "Porta invalida"
else
  echo "Essa porta é MAIOR que 0"
fi

```

## Maior
Nesse exemplo vamos receber a variável **porta** , se a variável for **maior (>,-gt) que 666** então vai imprimir **Essa porta é MAIOR que a porta 666** senão se a variável for menor **Essa porta não é MAIOR que a porta 666**. O **lt** vem de **greater than**.

```sh

#!/bin/bash
echo "Digite uma porta"
read porta

#Se variável porta MAIOR que 666
if [[ "$porta" -gt "666" ]]
then
  echo "Essa porta é MAIOR que a porta 666"
else
  echo "Essa porta não é MAIOR que a porta 666"
fi

```


## Menor Igual
Imagine nós testando uma rede , poderíamos testar ** se a variável é menor ou igual a 995** ela vai mostrar a mensagem **Essa porta é MENOR ou IGUAL a porta 995** , agora ** senão Essa porta não é MENOR ou IGUAL a porta 995** .
O **le** vem de **less or equal**.

```sh

#!/bin/bash
echo "Digite uma porta"
read porta
#Se variavel porta for menor ou igual que 995
if [[ "$porta" -le "995" ]]
then
  echo "Essa porta é MENOR ou IGUAL a porta 995"
else
  echo "Essa porta não é MENOR ou IGUAL a porta 995"
fi
```

## Maior Igual
Vamos fazer um exemplo simple trabalhando com idade.
```sh
#!/bin/bash
echo "Qual a sua idade"
read idade
if [ "$idade" -ge "18" ]
then
echo "Voce pode dirigir"
else
echo "Voce nao pode dirigir"
fi
```

### Outro exemplo
Podemos testar nossa variável **porta** e ver se ela é **maior ou igual a 995** , se for vai imprimir a mensagem **Essa porta é MAIOR ou IGUAL a porta 995** senão vamos imprimir a mensagem **Essa porta não é MAIOR ou IGUAL a porta 995** . O **ge** vem de **greater or equal**.


```sh
#!/bin/bash
echo "Digite uma porta"
read porta
#Se variavel porta for Maior ou igual que 995
if [[ "$porta" -ge "995" ]]
then
  echo "Essa porta é MAIOR ou IGUAL a porta 995"
else
  echo "Essa porta não é MAIOR ou IGUAL a porta 995"
fi
```


## Igual
Se for passado o primeiro argumento ele será imprimido , senão será mostrado uma mensagem com o valor do primeiro argumento.
O **eq** vem de **equal**.

```sh
#!/bin/bash

if [[ $1 -eq "" ]]
then
  echo "Não foi passado nenhum argumento"
else
  echo "O valor do argumento é $1"
fi

```

> **Note:** Podemos notar que só funciona com **numero**, letras não reconhece.


Podemos ver que só vai funcionar com números , agora se inserirmos o ** == ** ele vai reconhecer **letrar e números**.

```sh

#!/bin/bash

if [[ "$1" == "" ]]
then
  echo "Não foi passado nenhum argumento"
else
  echo "O valor do argumento é $1"
fi


```


## Diferente
Agora imagine uma situação a qual você precise testar uma variável para ver se ela é **diferente** , vamos testar a variável porta e ver se ela é **diferente da porta 80**. O **ne** vem de **not equal**.

```sh

#!/bin/bash

echo "Digite uma porta"
read porta

if [[ "$porta" -ne "80" ]]
then
  echo "Não é a porta 80"
else
  echo "É a porta 80"
fi


```

## Ou
Podemos melhorar o código acima usando o **ou** e usando **argumentos**.

```sh

#!/bin/bash

if [ "$1" == 80 -o "$1" == 443 ]
then
  echo "A porta [ $1 ] está aberta"
else
  echo "A porta [ 80 ] e a [ 443 ] não estão abertas"
fi

```

## and
Podemos usar o **and (&&)** para nossa condição e **testar dois argumentos**.

```sh

#!/bin/bash

if [[ "$1" == "192.168.0.1" && "$2" == "88" ]]
then
  echo "O roteador está em [ $1 ] com a porta [ $2 ] aberta"
else
  echo "Roteador não foi encontrado"
fi


```
