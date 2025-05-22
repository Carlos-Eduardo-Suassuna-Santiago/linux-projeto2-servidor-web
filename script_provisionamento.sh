#!/bin/bash

echo "Atualizando o servidor..."
apt update && apt upgrade -y

echo "Instalando o Apache..."
apt install apache2 -y

echo "Instalando o unzip..."
apt install unzip -y

echo "Baixando e copiando os arquivos da aplicação web..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Provisionamento concluído com sucesso!"
