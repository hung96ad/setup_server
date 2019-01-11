#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
# unzip
sudo apt-get install unzip -y
# python3.6
# sudo add-apt-repository ppa:jonathonf/python-3.6 -y
# sudo apt-get update
# sudo apt-get install python3.6 -y
# sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
# sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2
# sudo update-alternatives --config python3
# lib python
sudo apt-get install python3-pip -y
sudo apt-get install python3-dev libpython3-dev -y
sudo apt-get install python3-mysqldb -y
# curl
sudo apt-get install curl -y
# php
sudo apt-get install libpng-dev -y
sudo apt-get install php libapache2-mod-php php-mysql -y
sudo apt-get install php-curl -y
# apache
sudo apt-get install apache2 -y
sudo ufw app list
sudo ufw status
sudo ufw app info "Apache Full"
sudo ufw allow in "Apache Full"
# use .htaccess
sudo a2enmod rewrite
# docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo groupadd docker
sudo usermod -aG docker $USER
# install package python
pip3 install -r requirements.txt
# clean
sudo apt-get autoremove -y
sudo apt-get autoclean -y
# get source from git
git clone https://github.com/hung96ad/emotion_recognition
git clone https://github.com/hung96ad/predict_price_cryptocurrencies
git clone https://github.com/hung96ad/landipage
cd landipage
git clone https://github.com/hung96ad/Admin-Panel-User-Management-using-CodeIgniter admin
cd ..
cd emotion_recognition
docker-compose up -d
# install mysql
sudo apt-get install mysql-server -y
sudo mysql_secure_installation # https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04
# change info database
# landipage/admin/application/config/database.php
# predict_price_cryptocurrencies/config_db.py