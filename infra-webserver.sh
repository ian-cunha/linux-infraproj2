#! /bin/bash

echo "Criando servidor WEB..."

echo "Atualizando o servidor..."
apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Baixando e copiando arquivos da aplicação"
cd /tmp
wget https://github.com/ian-cunha/mochila-de-viagem/archive/refs/heads/main.zip
unzip main.zip
cd mochila-de-viagem-main
cp -R * /var/www/html/

echo "Servidor conluido!"
