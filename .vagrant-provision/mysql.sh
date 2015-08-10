#!/usr/bin/env bash

echo "================================================================== Define user/pass"
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

echo "=================================================================== Updating Ubuntu"
sudo apt-get update


echo "================================================================== Installing MySQL"
sudo apt-get -y install mysql-server
sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf

mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION; FLUSH PRIVILEGES;"

echo "================================================================== Restarting MySQL"
sudo /etc/init.d/mysql restart

echo "==================================================================================="
echo ""
echo "====== MySQL √"
echo ""
echo "==================================================================================="