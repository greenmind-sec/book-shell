# Fixação 1 - Criando Ping Sweep
Vamos criar um ping sweep , nesse caso vamos usar o comando
```sh
ping -c 1
```

Ele vai enviar apenas 1 pacote ,porem a saída ficou muito bagunçada e ilegível.

Se pingarmos um host que responde podemos ver que nos é retornado 64 bytes e quando não responde não é retornado.

Com isso podemos dar uma filtrada no nosso script.

### Criar um script para descobrir hosts ativos, usando o ping.

Objetivo: Informar o range da rede. O script deve retornar os hosts que responde ao ping.

```sh
#!/bin/bash
if [ "$1" == "" ]
then
echo "Menu principal"
echo " Como usar : $0 192.168.0"
else
for host in {1..254};do
# temos duas foras de fazer isso
# Veja as duas a baixo
#ping -c1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'
ping -c1 $1.$host | grep "64 bytes" | cut -d ":" -f1 | cut -d " " -f4
done
fi
```

### Usando Sequencia

```sh
#!/bin/bash
if [ "$1" == "" ]
then
echo "Script Pentester"
echo "$0 192.168.0"
else
for ip in $(seq 1 254); do
ping -c 1 $1.$ip
done
fi
```

**Script melhorado agora apenas trazendo sites ativos**

```sh
#!/bin/bash
if [ "$1" == "" ]
then
echo "Script Pentester"
echo "$0 192.168.0"
else
for ip in $(seq 1 254); do
ping -c 1 $1.$ip | grep "64 bytes"
done
fi
```
**Script melhorado agora apenas trazendo sites ativos , agora só com as saídas de IP.**
```sh
#!/bin/bash
if [ "$1" == "" ]
then
echo "Script Pentester"
echo "$0 192.168.0"
else
for ip in 'seq 1 254'; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'
done
fi
```

### Usando argumento
```sh
#!/bin/bash
if [ "$1" == "" ]
then
echo "Script Pentester"
echo "Exemplo de uso:$0 192.168.0"
else
for ip in {1..254}; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d ":" -f1 | cut -d " " -f4
done
fi
```
