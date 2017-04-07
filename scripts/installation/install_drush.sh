#!/bin/bash

sudo git clone https://github.com/drush-ops/drush.git --branch="8.x" /opt/drush
cd /opt/drush; sudo composer install
sudo ln -nsf /opt/drush/drush /bin/drush
