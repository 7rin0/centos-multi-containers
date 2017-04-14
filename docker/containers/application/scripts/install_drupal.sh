#!/bin/bash

D8_PROJECT_PATH="/var/www/html/drupal8/sites/default/files"
SOURCE_URL="https://ftp.drupal.org/files/projects/drupal-8.3.0.tar.gz"

mkdir -p $D8_PROJECT_PATH
chmod 0777 $D8_PROJECT_PATH
wget -qO- $SOURCE_URL | tar xzv --strip-components 1 -C $D8_PROJECT_PATH
cp -fr "$D8_PROJECT_PATH/../default.settings.php" "$D8_PROJECT_PATH/../settings.php"
chmod 0777 "$D8_PROJECT_PATH/../default.settings.php" "$D8_PROJECT_PATH/../settings.php"
