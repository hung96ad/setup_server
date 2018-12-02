#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove 
sudo apt-get autoclean
# unzip
sudo apt-get install unzip -y
# python3.6
sudo add-apt-repository ppa:jonathonf/python-3.6 -y
sudo apt-get update
sudo apt-get install python3.6 -y
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2
sudo update-alternatives --config python3
# lib python
sudo apt-get install python3-pip -y
sudo apt-get install python3-dev libpython3-dev -y
sudo apt-get install python3-mysqldb
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
sudo apt-get install apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER
# install package python
sudo pip3 install python-binance
pip3 install -r requirements.txt
