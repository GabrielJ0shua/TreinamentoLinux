#!bin/bash

echo "Atualização do sistema e serviços"

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando a Aplicação"
cd /tmp
wget https://github.com/GabrielJ0shua/GabrielJ0shua.github.io/archive/refs/heads/master.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/