#!bin/bash

echo "Atualização do sistema e serviços"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando a Aplicação"
cd /tmp
wget https://github.com/GabrielJ0shua/GabrielJ0shua.github.io/archive/refs/heads/master.zip
unzip GabrielJ0shua.github.io-master.zip
cd GabrielJ0shua.github.io-master
cp -R * /var/www/html/
