#!/bin/bash
# Checks if there's a composer.json, and if so, installs/runs composer.

set -euo pipefail

cd /opt/app

if [ -f /opt/app/composer.json ] ; then
    if [ ! -f composer.phar ] ; then
        curl -sS https://getcomposer.org/installer | php
    fi
    php composer.phar install
fi

sudo apt-get install -y php5-mcrypt

#echo "CREATE DATABASE IF NOT EXISTS invp;" | mysql -uroot

# /usr/bin/mysqladmin -u root password 'password1'
# /usr/bin/mysqladmin -u root -h sandbox password 'password1'
