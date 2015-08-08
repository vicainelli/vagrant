#!/usr/bin/env bash

echo "=================================================================== Updating Ubuntu"
sudo apt-get update

echo "================================================================= Installing APACHE"
sudo apt-get install -y apache2

echo "================================================================= Enabling Mod_Rewrite "
sudo a2enmod rewrite

echo "================================================================= Restartinh Apache"
sudo service apache2 restart

echo "==================================================================================="
echo ""
echo "====== Apache √"
echo ""
echo "==================================================================================="