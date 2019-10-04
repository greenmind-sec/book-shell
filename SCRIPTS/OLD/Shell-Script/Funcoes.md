# Funções
Funções nada mais é que um trecho de código , imagine um código que você usa diversas vezes , repetir fica feio e nada profissional e ai usamos a função.

Veja o arquivo logo.sh
```sh

#!/bin/bash

function logo() {
  echo "Olá"
}

logo

```

Simples trabalhar com funções né ? Vamos criar uma função para atualizar nosso sistema.

```sh

#!/bin/bash

function atualiza() {
  echo "Atualizando sistema"
  apt-get update
}

atualiza

```
