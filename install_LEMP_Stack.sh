#!/bin/bash

# Update package information
sudo apt update

# Install Nginx
sudo apt install -y nginx

# Install MariaDB and secure installation
sudo apt install -y mariadb-server
sudo mysql_secure_installation

# Install PHP and common extensions
sudo apt install -y php php-cli php-fpm php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc

# Start and enable services
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl start php7.4-fpm
sudo systemctl enable php7.4-fpm
sudo systemctl start mariadb
sudo systemctl enable mariadb

echo "LEMP stack installation completed."
