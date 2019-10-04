# Sequencias

## Trabalhando com sequencias
Podemos criar sequencias de forma simples usando o **seq**.

Podemos fazer um exemplo de **0** a **254**.

```sh

#!/bin/bash
seq 0 254

```

Agora , também podemos usar o **echo** com o **{}**.

```sh

#!/bin/bash
echo {0..10}

```

Podemos fazer diversos tipos de sequencia , e até letras.

```sh

#!/bin/bash
echo {a..z}

```

## FOR
Outro tipo de **loop** é o **for (para)** , vamos fazer um exemplo

```sh

#!/bin/bash
for ip in {1..10}
do
  echo "192.168.0.$ip"
done

```

Outra forma de usar o **for** é .

```sh

#!/bin/bash
for ip in $(seq 1 254)
do
  echo "192.168.0.$ip"
done

```

### INLine
E por fim tambem podemos usar em uma unica linha.

```sh
for ip in {1..254};do echo 192.168.0.$ip;done
```

E ainda dar comandos , só precisamos inserir o **$** na frente.

Podemos dar comandos dessa forma.
```sh
for ip in $(seq 1 254);do echo 192.168.0.$ip;done
```


## While

Entre os repetidores mais conhecidos temos o **while (enquanto)** , que é muito usado veja o exemplo

```sh

#!/bin/bash
porta=1
while [[ $porta -le 254 ]]
do
    echo "Scanning host  [ 192.168.0.$porta ]"
    (( porta++ ))
done

```
