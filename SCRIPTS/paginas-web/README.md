
Filtrando apenas por links que tenham href
```sh
fgrep href index.html | cut -d \" -f 2 | grep http
```

Pegando apenas os links
```sh
fgrep href index.html | cut -d \" -f 2
```

Filtrando apenas por links http
```sh
fgrep href index.html | cut -d \" -f 2 | grep http
```
