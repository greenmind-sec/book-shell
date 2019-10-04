# Comentarios e controle de qualidade
Vocês desenvolvem programas ou scripts ? Costumam comentar seus Códigos ? Costumam reusar seus códigos ?

Os comentários são essenciais para nos ajudar em nossos projetos , comentar onde precisa de melhorias , comentar alguma função que vai ser usada futuramente.

Os comentários não serão vistos quando nosso programa for executado , eu vou usar comentários toda hora em nosso projeto para mostrar onde fica cada função , onde serão as mensagens e onde podemos melhorar.

```sh
#!/bin/bash
#Sou um comentario e não sou visto
echo "Eu uso Debian e você?"
```

Com poucas linhas não é necessário comentar né ? Errado! Pois alguém iniciante ou que não conhece aquela função pode ser ajudado com essa linha de comentário.

Agora imagine aquele projeto com diversas linhas de código , acredito que comentários não vai deixar seu código feio ou pesado.

Podemos começar com o nosso topo do código , o cabeçalho.

```sh
#!/bin/bash
#
# nome_do_programa.sh - Uma pequena descrição do seu projeto.
#
# Autor   : Nome do Autor
#
# ----------------------------------------------------------------------
# A descrição completa do seu projeto , essa é a hora de mencionar
#possíveis requisitos para a instalação.
#
#
#   Exemplos:
#      $ ./nome_do_programa.sh argumento1
#      Retorno do projeto
#      $ ./nome_do_programa.sh argumento1 argumento2
#      Retorno do projeto
#
#
#   Histórico:
#
#    v1.0 01-01-2015, fulano primeiro:
#       - Versão inicial desenvolvida por fulano
#    v1.1 03-01-2015, fulano primeiro:
#       - Adicionada menu principal
#       - Corrigido bug
#    v1.2 10-01-2015, ciclano:
#       - Adiciona função ranger
#       - Corrigido bug
#    v1.3 25-01-2015, fulano primeiro:
#       - Adiciona função power ranger
#       - Corrigido bug corrigidos
#    v1.4 25-10-2016, fulano primeiro:
#       - Programa reescrito do zero
#    v2.0 25-10-2017, fulano primeiro:
#       - Adicionado este comentário para comemorar 1 anos sem
#         alterações :)
echo "está me vendo ?"
```

Você acha que ficou ruim ? Eu acredito que não! Executando podemos ver que só vai ser executado o **echo** com a mensagem , **está me vendo ?** .

Você ainda pode estar achando que todo esse código é ruim , mais todo esse código não vai ser mostrado pelo interpretador pois são apenas comentários.

Outra coisa que podemos fazer é usar **TODO** , **FIXME** e **XXX** , assim como os comentários **TODO** , **FIXME** e **XXX** não aparecem mais são conhecidos em todas as linguagem para lembrar ou alertar os programadores que aquele trecho de código precisa de uma determinada atenção.

> - **TODO** Lembra uma tarefa a ser feita ou algum problema não resolvido.
> - **FIXME** Lembra um bug não resolvido que precisa ser arrumado.
> - **XXX** Lembra algo importante a ser feito , chama atenção.

```sh

#!/bin/bash
#TODO Melhorar o topo
#FIXME O menu precisa ser arrumado
#XXX Precisamos limpar a saída

```

Podemos ver que nesse cabeçalho somos informados dos requisitos , das versões e das features que temos no projeto.

```sh
#!/bin/bash

# easy-server.sh
#
#
# Versão 1(GreenMind 11 Dezembro 2016)
# - Criado instalador (install.sh)
# -- Instalação de pré requisitos para o projeto
# --- TAR
# --- GIT
# - Criado função para instalar servidor LAMP
# -- Apache2
# -- PHP5
# -- Mysql
# -- Modulo do PHP para o Mysql
#
#
# Versão 2(GreenMind 24 Janeiro 2017)
# - Instala o projeto Mediawiki para a criação de Wiki.
# --Instala requisitos do Mediawiki
# --- Atualiza sistema
# --- Função instala LAMP (Linux,Apache,Mysql e PHP)
# --- Função instala o Mediawiki
# --- Função instala o ImageMagick
# --- Função instala o Inkscape
# --- Função que baixa e instala o Mediawiki
# - Instala o projeto Wordpress para a criação de Blog
# -- Função instala o LAMP (Linux,Apache,Mysql e PHP)
# -- Função responsável por baixar e instala o Wordpress

```

Poderia ficar ainda melhor , mais com o passar do tempo e as novas versões tudo vai se encaixando e evoluindo naturalmente.

Por isso repito , desenvolva programas e não scripts.
