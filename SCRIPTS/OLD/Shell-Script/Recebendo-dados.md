# Recebendo dados
Já vimos como trabalhar com variáveis , que tal adicionar valor as variáveis ?

Podemos dar um exemplo que vamos usar em nosso pequeno projeto , **escolha a porta**.

```sh

#!/bin/bash
echo "Escolha a porta"
read porta
```

Recebemos uma porta do usuário , agora ela está guardada e podemos imprimir caso queira.

```sh

#!/bin/bash
echo "Escolha a porta"
read porta
echo "A porta escolhida é $porta"

```

Imagine um programa para receber um determinado **host** ou **IP** , e em seguida vamos receber a porta que queremos testar.

```sh

#!/bin/bash
echo "Digite o alvo:"
read ip
echo "Digite a porta que deseja verificar:"
read porta
#Imprimindo as variaveis ip e porta
echo "O alvo é $ip e a porta é $porta"

```
