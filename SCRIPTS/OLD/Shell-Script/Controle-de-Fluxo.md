# Controle de Fluxo

## if
O **if** é bem simples e nos ajuda a controlar o fluxo do nosso projeto.

Se a porta for a 80 ele vai mostrar a mensagem ** é a porta 80 ** senão vai imprimir **não é a porta 80**.

```sh

#!/bin/bash

echo "Digite uma porta"
read porta

if [[ "$porta" == "80" ]]
then
  echo "É a porta [ 80 ] "
else
  echo "Não é a porta [ 80 ]"
fi

```

## elif
Agora imagine a situação em que vamos realizar mais de um teste , essa pode ser uma situação para usar o **elif**.

```sh

#!/bin/bash

echo "Digite uma porta"
read porta

if [[ "$porta" == "80" ]]
then
  echo "A porta [ 80 ] está aberta"
elif [[ "$porta" == "443" ]]
then
  echo "A porta [ 443 ] está aberta"
else
  echo "A porta [ 80 ] e a [ 443 ] não estão abertas"
fi

```

Já sabemos o básico de controle de fluxo agora vamos ver sobre **condições**.
