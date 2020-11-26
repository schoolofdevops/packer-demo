#!/bin/bash

echo "I: Installing Apache Web Server "

sudo apt-get update
sudo apt install apache2 -yq

sudo apt install php libapache2-mod-php php-mysql -yq
cd ~/

sudo rm /var/www/html/index.html

sudo git clone https://github.com/devopsdemoapps/devops-demo.git
cd devops-demo/

#mysql -u root -ppassword  devopsdb < devops-demo.sql

sudo tar -xzf devops-demo.tar.gz  -C /var/www/html/

exit 0

