#!/bin/bash

# Update package information
sudo apt update

# Install PHP and common extensions
sudo apt install -y php php-cli php-fpm php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc

# Check PHP version
php -v

echo "PHP installation completed."
