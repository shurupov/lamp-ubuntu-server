#!/bin/bash

#Variables
DBPASSWD=12345


#first preparing
sudo mkdir /opt/sites
sudo apt-get update -q

#install mysql
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password $DBPASSWD"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $DBPASSWD"
sudo apt-get install -y mysql-server
sudo apt-get install -y apache2 php5 libapache2-mod-php5 php5-mysql php5-curl php5-mcrypt php5-gd
echo "Loading phpmyadmin from http://downloads.sourceforge.net/project/phpmyadmin/phpMyAdmin/4.3.0/phpMyAdmin-4.3.0-all-languages.tar.gz"
echo "This may take a few minutes..."
wget -q http://downloads.sourceforge.net/project/phpmyadmin/phpMyAdmin/4.3.0/phpMyAdmin-4.3.0-all-languages.tar.gz
echo "Loading phpmyadmin completed"
sudo tar -xf phpMyAdmin-4.3.0-all-languages.tar.gz -C /opt/sites
rm phpMyAdmin-4.3.0-all-languages.tar.gz
sudo mv /opt/sites/phpMyAdmin-4.3.0-all-languages /opt/sites/pma
sudo mkdir /opt/sites/pma/logs
sudo cp pma /etc/apache2/sites-available
sudo ln -s /etc/apache2/sites-available/pma /etc/apache2/sites-enabled
sudo service apache2 restart


sudo apt-get install -y mc python-software-properties

# End
echo "LAMP Ubuntu server successfully installed!"
echo "Gongratulations!"
