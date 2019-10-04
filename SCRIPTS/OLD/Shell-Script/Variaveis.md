# Variáveis
Vamos imaginar as variáveis como potes , esses potes podem guardar o que nós precisamos , resumindo dados.

Vamos imaginar nosso projeto , ele vai precisar de um **logo** e para não ficar digitando toda hora e deixando o código grande e feio vamos adicionar ele a uma variável.

```sh

#!/bin/bash
logo="
Menu Principal
"
echo $logo

```

Futuramente vocês vão adicionar uma **logo** no projeto de vocês.

Podemos também receber números , vamos fazer um exemplo com o **IP** do meu roteador.

```sh

#!/bin/bash
ip=192.168.0.1
echo $ip

```

Podemos receber mais de um tipo de dado , como o **IP** e a **porta**.

```sh

#!/bin/bash
ip=192.168.0.1
porta=80
echo "Testando o $ip na porta $porta"

```
