#!/bin/bash

sudo apt-get install php5-dev
sudo apt-get install php5-xdebug
sudo cat <<EOT >> /etc/php5/conf.d/xdebug.ini

xdebug.remote_enable = 1
xdebug.idekey = "PHPSTORM"
xdebug.remote_autostart = 0
xdebug.remote_connect_back = 1
xdebug.remote_port = 9000
xdebug.remote_handler = dbgp

EOT

