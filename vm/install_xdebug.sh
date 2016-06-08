#!/bin/bash

# install required packages
sudo apt-get install -y php5-dev
sudo apt-get install -y php5-xdebug

# setup xdebug remote connection
echo <<EOT >> /etc/php5/apache2/conf.d/20-xdebug.ini

xdebug.remote_enable = 1
xdebug.idekey = "PHPSTORM"
xdebug.remote_autostart = 0
xdebug.remote_connect_back = 1
xdebug.remote_port = 9000
xdebug.remote_handler = dbgp

EOT

# restart apache
sudo apachectl restart
