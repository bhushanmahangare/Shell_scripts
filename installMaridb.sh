#!/bin/bash

# Update package information
sudo apt update

# Install MariaDB
sudo apt install -y mariadb-server

# Start and enable MariaDB
sudo systemctl start mariadb
sudo systemctl enable mariadb

# Secure MariaDB installation
sudo mysql_secure_installation

# Prompt for new user details
read -p "Enter a new username: " username
read -sp "Enter a password for the new user: " password
echo

# Create a new user and grant privileges
sudo mysql -e "CREATE USER '$username'@'localhost' IDENTIFIED BY '$password';"
sudo mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$username'@'localhost' WITH GRANT OPTION;"
sudo mysql -e "FLUSH PRIVILEGES;"

echo "New user '$username' created with all privileges."

# Restart MariaDB to apply changes
sudo systemctl restart mariadb

echo "MariaDB installation and user setup completed."