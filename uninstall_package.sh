#!/bin/bash

# Prompt for the package name

read -p "Enter the name of the package to uninstall: " package_name


# Check if the package is installed 

if dpkg -l | grep $package_name; then
    
    # Uninstall the Package
    sudo apt remove --purge -y $package_name
    sudo apt autremove -y

    echo "Package '$package_name' has been uninstalled".
else
    echo "Package '$package_name' is not installed."
fi