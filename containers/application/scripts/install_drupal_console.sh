#!/bin/bash

php -r "readfile('https://drupalconsole.com/installer');" > drupal.phar
chmod +x drupal.phar
sudo mv drupal.phar /bin/drupal
