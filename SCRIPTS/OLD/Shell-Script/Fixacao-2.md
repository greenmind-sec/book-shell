# Fixação 2 - Indentificando SubDominios
Criar um script para identifica possiveis hosts em um dominio.
Objetivo: Informar o dominio .
Se o site tiver subdominios na pagina , ele deve retornar o **IP** dos subdominios encontrados.

### Usando o WGET
Vamos transformar uma simples olhada no código fonte de um site em algo mais interessante...

O Vamos baixar a index do nosso alvo
```sh
wget www.grandbusiness.com.br
```

Analisando codigo fonte
```sh
grep href="" index.html
grep "href=" index.html | cut -d "/" -f 3
grep "href=" index.html | cut -d "/" -f 3 | grep "\." ##Colocamos a contrabarra para forçar o uso do . , isso é expressões regulares.
grep "href=" index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | sort -u
grep "href=" index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<li"
grep "href=" index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<li"  > lista.txt
```

Vendo a lista
```sh
cat lista.txt
```

Agora podemos resolver o nome com o comando **host**.
```sh
host intranet.grandbusiness.com.br
```

Quando conseguir uma saída limpa gere uma lista com os subdomínios

Lembra do for? Vamos usa-lo para ler nossa lista e resolver os nomes de domínio em endereços de IP.

```sh
for url in $(cat lista.txt); do host $url; done
```

Vamos melhorar a saída pegando apenas os que foi possível resolver

```sh
for url in $(cat lista.txt); do host $url; done | grep "has address"
for url in $(cat lista.txt); do host $url; done | grep "has address" | cut -d " " -f 4 | sort -u
```

### Mão na massa
O Tá pensando que é moleza? No No No.. Bora colocar a cabeça pra pensar e ver se absorveu o conteúdo.

Vamos criar um script para identificar possíveis hosts em um domínio.

O objetivo é informar o domínio e se o site tiver subdomínios na pagina , ele vai retornar o IP dos subdomínios encontrados.

O Lição de casa O Criar um script para “filtro de index” o script terá de fazer exatamente o que foi ensinado no slide anterior de forma automatizada, ao executar ele pede o site e após digitar o site ele resolve os subdomínios.

```sh
https://github.com/greenmind-sec/SimpleSub
```
