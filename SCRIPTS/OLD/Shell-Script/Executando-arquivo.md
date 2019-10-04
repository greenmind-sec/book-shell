# Executando Arquivo
Após ter permitido a execução do arquivo podemos executar o mesmo.

```sh
./nome-do-programa.sh
```

Podemos também executar o arquivo sem o **.sh** no final , mais é recomendavel que você tenha na primeira linha o **Shebang** seguido pelo **interpretador** que você quer usar , por exemplo **#!/bin/bash**.

```sh
./nome-do-programa
```

Mais não esqueça de dar permissão para executar , outra coisa interessante é executar nosso código via linha de comando.

Mais como assim via linha de comando ? Já pensou em desenvolver um projeto e executar ele por um simples comando via terminal ?

Basicamente vamos enviar ele para a pasta **/bin/nome_do_programa** e em seguida vamos dar permissão de execução.

```sh
mv nome_do_programa.sh /bin/nome_do_programa
chmod +x /bin/nome_do_programa
```

Agora quando for executar só chamar com poderes de **root** , mais recomendo fortemente o uso do **sudo**.

## Conhecendo o sudo
Caso queira adicionar um usuário ao grupo **sudo** só precisamos instalar o **sudo** e depois adicionar o usuário.

```sh
apt-get install sudo
adduser nome_usuario sudo
```

Eu recomendado reiniciar a maquina.

### Outra forma
Ou podemos também adicionando nosso usuário ao grupo sudo inserindo no arquivo **/etc/sudoers**.

```sh
root            ALL=(ALL:ALL) ALL
nome_usuario    ALL=(ALL:ALL) ALL
```
