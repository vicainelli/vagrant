#!/usr/bin/env bash

sudo locale-gen pt_BR.UTF-8

echo "=================================================================== Updating Ubuntu"
sudo apt-get update

echo "==================================================================== Installing PHP"
sudo apt-get install -y php5 libapache2-mod-php5 php5-mcrypt

echo "================================================================= Restarting Apache"
sudo service apache2 restart

echo "==================================================================================="
echo ""
echo "====== PHP √"
echo ""
echo "==================================================================================="