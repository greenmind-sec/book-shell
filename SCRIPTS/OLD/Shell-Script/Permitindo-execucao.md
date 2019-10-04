# Permitindo a execução
Vamos permitir a execução do nosso arquivo , para isso é necessário usar o **chmod** para dar a permissão.

O **chmod** está presente nos Unix e Linux e é usado para alterar a permissão de arquivos e diretórios.

Em seguida vamos usar **+x** para dar permissão seguido pelo nome do arquivo.

Veja com fazer
```sh
chmod +x teste.sh
```

Em seguida vai ser possível executar nosso projeto.

Mais lembre-se que se nós não darmos permissão não vai ser possível executar nem com usuário **root** .

Se for com um usuário normal vai aparecer algo como

```sh
./teste.sh: comando não encontrado
```

Se for com usuário **root** vai aparecer algo como

```sh
bash: ./teste.sh: Permissão negada
```

Então não se esqueça de dar **permissão** para execução do arquivo.
