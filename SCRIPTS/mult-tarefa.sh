
# Podemos usar apenas ;
echo "Usando ;"
pwd ; cd /etc; pwd ;cd -;pwd

# Podemos usar chaves e ;
echo "Usando () e ;"
(pwd ; cd /etc ; pwd)

# Ou podemos usar
echo "Usando &&"
pwd && cd /etc && pwd
