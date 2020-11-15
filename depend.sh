#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install apache2
sudo a2enmod rewrite
sudo service apache2 restart
cd /etc/apache2/sites-available/
sudo rm 000-default.conf
sudo wget https://raw.githubusercontent.com/SezonDev/panel/main/panel.conf
sudo service apache2 restart
sudo apt-get -y install php7.0-mcrypt php7.0-mbstring memcached php-memcache mysql-server php php-mysql php-pear nodejs libapache2-mod-php php-curl php-imagick php-sqlite3 && pear channel-discover pear.phing.info && pear install -Z phing/phing
sudo apt-get -y install software-properties-common
add-apt-repository ppa:jonathonf/ffmpeg-4

apt-get update
apt-get -y install ffmpeg
cd /usr/src/
sudo  mkdir loader
cd loader
sudo wget http://www.sourceguardian.com/loaders/download/loaders.linux-x86_64.tar.gz
sudo tar vxf loaders.linux-x86_64.tar.gz
sudo cp ixed.7.0.lin /usr/lib/php/20151012
cd /etc/php/7.0/mods-available/
sudo rm sourceguardian.ini
sudo wget http://in2iptv.com/sourceguardian.ini
sudo phpenmod sourceguardian
sudo /etc/init.d/apache2 restart
