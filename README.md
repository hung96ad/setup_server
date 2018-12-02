# Setup server ubuntu 18.04 for Machine learning deployment with PHP, docker, apache2, MySQL
## Install package
```
chmod +x setup.sh
./setup.sh
```
## Config apache 
### Change Apache's root directory, run:
```
sudo nano /etc/apache2/sites-available/000-default.conf
```
### Config apache2 for php
```
sudo nano /etc/apache2/mods-enabled/dir.conf
```
You will see:
```
<IfModule mod_dir.c>
    DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm
</IfModule>
```
Change to:
```
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>
```
### Change default root folder
```
sudo nano /etc/apache2/apache2.conf
```
Use **Ctrl+W** and search for Directory (It should be in line 153)

It should look like this
```
<Directory />
    Options Indexes FollowSymLinks
    AllowOverride All
    Require all denied
</Directory>
```
Change to
```
<Directory />
    Options Indexes FollowSymLinks Includes ExecCGI
    AllowOverride All
    Require all granted
</Directory>
```

sudo service apache2 restart
### Install MySQL
```
sudo apt install mysql-server -y
sudo mysql_secure_installation
```