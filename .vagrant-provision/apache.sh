#!/usr/bin/env bash

echo "=================================================================== Updating Ubuntu"
sudo apt-get update

echo "================================================================= Installing APACHE"
sudo apt-get install -y apache2

echo "===============================================================Enabling Mod_Rewrite"
sudo a2enmod rewrite

echo "=================================================================== Copy .conf files"
cd /etc/apache2/mods-enabled/
sudo mv dir.conf bkup-dir.conf
sudo cp /var/www/.mods-enabled/dir.conf .

cd /etc/apache2/sites-available/
sudo mv 000-default.conf bkup-000-default.conf
sudo cp /var/www/.sites-available/000-default.conf .

echo "================================================================= Restarting Apache"
sudo service apache2 restart

echo "==================================================================================="
echo ""
echo "====== Apache √"
echo ""
echo "==================================================================================="