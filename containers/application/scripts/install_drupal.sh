#!/bin/bash

D8_PROJECT_PATH="/var/www/html/drupal8"
D8_PROJECT_FILES_PATH="$D8_PROJECT_PATH/sites/default/files"
SOURCE_URL="https://ftp.drupal.org/files/projects/drupal-8.3.1.tar.gz"

mkdir -p $D8_PROJECT_FILES_PATH
chmod 0777 $D8_PROJECT_FILES_PATH
wget -qO- $SOURCE_URL | tar xzv --strip-components 1 -C $D8_PROJECT_PATH
cp -fr "$D8_PROJECT_FILES_PATH/../default.settings.php" "$D8_PROJECT_FILES_PATH/../settings.php"
chmod 0777 "$D8_PROJECT_FILES_PATH/../settings.php"

# Install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /bin/composer
sudo chmod +x /bin/composer

cd $D8_PROJECT_PATH
composer require --prefer-dist --no-interaction drush/drush:~8.0
composer require --prefer-dist --no-interaction drupal/memcache
composer require --prefer-dist --no-interaction drupal/search_api_solr

vendor/bin/drush si standard -y --db-url=mysql://root:root@centos_setup_database:3306/drupal8 \
--site-mail="drupal8@centos_setup.core" --site-name="Drupal 8" \ --account-name=admin --account-pass=admin \ --account-mail=drupal8@centos_setup.core

vendor/bin/drush en memcache -y
vendor/bin/drush en search_api_solr -y
