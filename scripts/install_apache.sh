#!/usr/bin/env bash

echo "Iniciando a instalação do Apache Web Server"
sudo dnf install httpd -y

echo "Iniciando o Apache Web Server"
sudo systemctl start httpd

echo "Habilitando o Apache Web Server no Boot"
sudo systemctl enable httpd

echo "Instalando o módulo do PHP no Apache Web Server"
sudo dnf install php php-common -y


echo "Instalando a página inicial"
wget https://raw.githubusercontent.com/msmagnanijr/infnet-linux-first-steps/main/scripts/index.html -O /var/www/html/index.html
