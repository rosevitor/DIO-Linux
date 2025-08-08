#!/bin/bash

echo "Iniciando infraestrutura Apache"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp
echo "Baixando arquivos"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/
echo "Infraestrutura criada com sucesso!"