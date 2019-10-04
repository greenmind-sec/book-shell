# Vetores ou arrays
Imagine você precisando adicionar diversos dados , se fosse usar variáveis ia ser muitas variáveis e ficaria algo feio e não muito profissional.

Os Vetores e matrizes (arrays) são estruturas de dados simples que usamos quando temos muitas variáveis.

Veja o código vetor.sh
```sh

#!/bin/bash
vetor=(zero 1 dois 3 quatro)

echo "Imprimindo a casa zero: ${vetor[0]} "
echo "Imprimindo a casa um: ${vetor[1]} "
echo "Imprimindo a casa dois: ${vetor[2]} "
echo "Imprimindo a casa três: ${vetor[3]} "
echo "Imprimindo a casa quatro: ${vetor[4]} "

```
