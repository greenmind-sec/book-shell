# Argumentos

Basicamente os argumentos é para nos auxiliarem , imagine aquele programa que usamos referencia como **nmap** .

```sh
- Variáveis
nmap -p80 127.0.0.1

```

Seguindo esse exemplo podemos entender que o **nmap** é o **$0** pois é o nome do programa , **-p** seria o **$1** primeiro argumento , **80** é o **$2** segundo argumento e por fim o **127.0.0.1** é o **$3** terceiro argumento.

**$0**
Ele vai nos retornar o nome do nosso programa.

**$1**
O primeiro argumento.

**$2**
O segundo argumento e assim por diante.

```sh

#!/bin/bash
echo "Executando $0 , verificando o IP $1 e a porta $2"

```

Podemos testar usando o **nmap** , nesse caso vamos usar o primeiro e segundo parâmetro.

```sh

#!/bin/bash
nmap -p$2 $1

```

Lembrando que se não for passado nenhum dos argumentos vai dar um erro , para usar vamos usar o **./simples_nmap.sh 127.0.0.1 80**.

## Testando argumento vazio
```sh
#!/bin/bash
if [ "$1" == "" ]
then
echo "Menu principal"
echo "$0 192.168.0."
fi
```
