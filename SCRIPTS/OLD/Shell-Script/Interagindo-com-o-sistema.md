# Interagindo com o sistema
Podemos tambem interagir com o nosso sistema.

```sh
echo "Data e hora do sistema"
date
echo "Quem eu sou?"
whoami
echo "Qual o meu sistema"
uname -s -r
```

## Interagindo com o sistema e usando recebendo dados usando read
```sh
#!/bin/bash
echo "Digite sua interface de rede"
read int
ifconfig $int
```

## Interagindo com o Ping
```sh
#!/bin/bash
echo "Digite o IP"
read ip
ping -c 1 $ip
```
