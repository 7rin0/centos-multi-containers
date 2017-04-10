#!/bin/bash

SQLFILENAME=ixarm_recette_database_$(date +"%d%m%Y_%H%M").sql
cd /var/www/html/ixarm_recette/backup/;
mysqldump -uroot -pIxarm2017! ixarm_recette > $SQLFILENAME;
tar -czvf $SQLFILENAME.tar.gz $SQLFILENAME;
