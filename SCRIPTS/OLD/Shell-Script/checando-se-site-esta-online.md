# Checando se site está online
Podemos usar o curl para pegar o resultado da requisição.

Isso vai funcionar para sites que tem HTTP e HTTPS.
```sh
curl -sL -w "%{http_code}\\n" "http://www.google.com/" -o /dev/null
```