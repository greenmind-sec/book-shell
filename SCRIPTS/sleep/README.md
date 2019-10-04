Agora quero montar um script que receba o nome (e eventuais parâmetros) de um programa que será executado em background e que me informe do seu término. Mas, para você entender este exemplo, primeiro tenho de mostrar uma nova variável do sistema.


Veja estes comandos executados diretamente no prompt:
```sh
$ sleep 10&
[1] 16317
```

```sh
$ echo $!
16317
[1]+  Done             sleep 10
```

```sh
$ echo $!
16317
```

Isto é, criei um processo em background que dorme por 10 segundos,
somente para mostrar que a variável $!
guarda o PID (Process ID) do último processo em background. Mas observe a listagem e repare, após a linha do Done , que a variável reteve o valor mesmo
após o término desse processo.

Bem, sabendo isso, já fi ca mais fácil monitorar qualquer processo em background. Veja só como:
