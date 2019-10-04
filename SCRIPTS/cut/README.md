A sintaxe do cut é:
```sh
cut -c PosIni-PosFim
```

[arquivo]
, onde PosIni  é a posição inicial, e PosFim a posição fi nal. Veja os exemplos:
```sh
$ cat numeros
1234567890
0987654321
1234554321
9876556789
```

```sh
$ cut -c1-5 numeros
12345
09876
12345
98765
```

```sh
$ cut -c-6 numeros
123456
098765
123455
987655
```

```sh
$ cut -c4- numeros
4567890
7654321
4554321
6556789
```

```sh
$ cut -c1,3,5,7,9 numeros
13579
08642
13542
97568
```

```sh
$ cut -c -3,5,8- numeros
1235890
0986321
1235321
9875789
```
