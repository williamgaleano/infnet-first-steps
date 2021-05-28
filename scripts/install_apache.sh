#!/usr/bin/env bash

echo "Iniciando a instalação do Apache Web Server"
sudo dnf install httpd -y

echo "Iniciando o Apache Web Server"
sudo systemctl start httpd

echo "Habilitando o Apache Web Server no Boot"
sudo systemctl enable httpd

echo "Instalando o módulo do PHP no Apache Web Server"
sudo dnf install php php-common -y
sudo dnf install php-gd php-zip php-mcrypt php-json php-xml php-gettext php-curl php-intl 

echo "Instalando a Página Inicial"
sudo dnf install wget -y
wget https://raw.githubusercontent.com/msmagnanijr/infnet-linux-first-steps/main/scripts/index.php -O /var/www/html/index.php

echo "Reiniciando o Apache Web Server"
sudo systemctl restart httpd
