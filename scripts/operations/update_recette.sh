#!/bin/bash

cd /var/www/html/ixarm_recette/web/
git reset --hard
git pull origin master
drush cr; drush cim -y; drush updb -y; drush entup -y;
compass compile /var/www/html/ixarm_recette/web/themes/dga --force
compass compile /var/www/html/ixarm_recette/web/themes/dga_bo --force
compass compile /var/www/html/ixarm_recette/web/themes/dga_achats --force
