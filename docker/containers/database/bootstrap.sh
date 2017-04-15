#!/bin/bash

mysql_install_db --user=mysql
mysqladmin -u root password root
screen -d -m mysqld_safe

# Keep container running.
tail -f /dev/null
