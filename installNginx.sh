#!/bin/bash

# Update package information
sudo apt update

# Install Nginx
sudo apt install -y nginx

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Check Nginx status
sudo systemctl status nginx

echo "Nginx installation completed."
