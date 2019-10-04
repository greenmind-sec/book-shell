# Criando o primeiro Script
Podemos usar o nosso editor de preferencia , tem aqueles que preferem o próprio terminal , alguns a sua IDE favorita e até o clássico bloco de notas.

Eu basicamente uso no dia a dia o **Atom** e quando uso linha de comando gosto muito do **Nano**.

## Criando arquivo

Para criar usando o **nano** vamos fazer  

```sh
nano hello-world.sh
```

Vamos criar o clássico **Hello World** , em seguida vamos iniciar já criando nosso **logo**.

Não esqueça de sempre salvar como o final **.sh**

Veja o codigo hello-world.sh
```sh
#!/bin/bash
echo "Hello World"
```

Vou adicionar esse script no **/bin** só para clarear a mente de vocês.

```sh
cp hello-world.sh /bin/hello-world
chmod +x /bin/hello-world
```

Podemos ver que para copiar o arquivo precisamos de **poderes de administrador** com o **sudo** ou o **root** senão vai mostrar a mensagem de erro.

```sh
cp: não foi possível criar arquivo comum “/bin/hello-world”: Permissão negada
```

Não podemos esquecer de dar poder de execução para nosso projeto.

Depois podemos executar nosso script via linha de comando usando apenas o **hello-world**.

```sh
hello-world
```
