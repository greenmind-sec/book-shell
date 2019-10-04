# Fixação 3 - Trabalhando com Logs
O Vamos dar uma olhada em um arquivo de log grande.

Vamos usar o **-c** para continuar caso caia a conexão.

```sh
wget -c http://grandbusiness.com.br/access.log
```

Podemos ler o arquivo com o cat.
```sh
cat access.log
```

Podemos ver as duas primeiras linhas     
```sh
head -n 2 access.log ##ver apenas as 2 primeiras linhas
```

Podemos ver todos os IPS da seguinte forma
```sh
cat access.log | cut -d " " -f 1
```

Podemos ver todos os IPS sem repetir usando o **-u**.
```sh
cat access.log | cut -d " " -f 1 | sort -u ##ver ips
```

Podemos ver o **numero de ocorrencias** usando o **uniq -c** podemos usar o **sort -n** de numérico , **unic -u** para unicos e podemos usar o **sort -r** para reverse.
```sh
cat access.log | cut -d " " -f 1 | sort | uniq -c | sort -urn
```

## Vendo as requisições do IP suspeito

Podemos usar para ver as requisições.
```sh
cat access.log | grep "177.138.28.7" | cut -d '"' f2 | sort -u
```

Ou usar **unic -c** para ver o numero de requisições.
```sh
cat access.log | grep "127.0.0.1" | cut -d '"' -f 2 | uniq -c
```

Mostra as requisições desse ip.

Podemos buscar por **nessus**.
```sh
cat access.log | grep "177.138.28.7" | grep "nessus"
```

Podemos buscar por **nikto**.
```sh
cat access.log | grep "177.138.28.7" | grep "nikto"
```

Podemos buscar pelo diretório **Restrito**.
```sh
cat access.log | grep "177.138.28.7" | grep "Restrito"
```

Podemos buscar requisições pelo arquivo **/robots.txt**.
```sh
cat access.log | grep "177.138.28.7" | grep "/robots.txt"
```

**Busca req. para diretório admin**
```sh
cat access.log | grep ‘127.0.0.1 | grep '/admin' | sort -u
```

Podemos buscar as requisições que falharam usando **grep -v** por erros **404**.
```sh

cat access.log | grep '127.0.0.1' | grep 'GET /admin' | sort -u | grep -v "404"
```

O comando acima busca requisição admin e remove 404 que significa tentativas invalidas.

Arquivo que pode ser usado de exemplo
```sh
wget http://grandbusiness.com.br/access.log
```
