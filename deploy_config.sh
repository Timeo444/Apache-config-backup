#!/bin/bash

*/10 * * * *

# Pull latest config changes from GitHub
cd ~/Git-Managed-Configuration/apache_config_backup
git pull origin main

# Copy updated config to Apache directory
cp ~/Git-Managed-Configuration/apache_config_backup/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf

# Restart Apache to apply changes
sudo systemctl restart apache2

echo "Apache configuration updated successfully!"

