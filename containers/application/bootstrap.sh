#!/bin/bash

# Send confirmation mail.
echo "Subject: Mail proxy configured on centos application" | sendmail -v -i  lfs.severino@gmail.com lseverino@ausy-group.com

# Install application.
bash /var/application/scripts/install_drupal.sh

# Keep container running.
tail -f /dev/null
