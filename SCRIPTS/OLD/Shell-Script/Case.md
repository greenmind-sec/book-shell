# Case
Imagine você fazendo um menu , pensou ter que usar o **if** e **elif ?**. Agora imagine como ia ficar nosso código , para resolver isso temos o **case** que nos ajuda e muito a resolver esse pequeno problema.

Nesse exemplo vamos criar um menu simples com **help , versao e manual**.

```sh

#!/bin/bash

function help() {
  echo "Help"
}

function versao() {
  echo "Versão"
}

function manual() {
  echo "Manual"
}

case $1 in
  -h )
    help
    ;;
  -V )
    versao
    ;;
  -m )
    manual
    ;;
esac

```

Mais se não passar nenhum argumento ? Não vai apresentar nada! Poderíamos jogar um **help** após o **esac** mais vamos melhorar esse código.

```sh

#!/bin/bash

function help() {
  echo "Help"
}

function versao() {
  echo "Versão"
}

function manual() {
  echo "Manual"
}

case $1 in
  -h )
    help
    ;;
  -V )
    versao
    ;;
  -m )
    manual
    ;;
  *)
    echo Opção inválida: $1
    exit 0
    ;;
esac

```

Resolvemos o problema! Usando o simples

```sh

  *)
    echo Opção inválida: $1
    exit 0
  ;;

```

Um menu mais profissional podemos usar **getopts**.

```sh

#!/bin/bash

while getopts ":a" opt; do
  case $opt in
    a)
      echo "Instalar Apache2!"
      ;;
    \?)
      echo "Opção invalida: -$OPTARG"
      ;;
  esac
done

```
