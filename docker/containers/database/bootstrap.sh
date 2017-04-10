#!/bin/bash

# Install epel-release.
yum install epel-release -y

# Install basics.
yum install vi vim -y

# Install MySQL/MariaDB.
# https://www.liquidweb.com/kb/how-to-install-mysql-mariadb-on-centos-7/
yum -y install mariadb-server mariadb
systemctl enable mariadb

# Keep container running.
tail -f /dev/null
