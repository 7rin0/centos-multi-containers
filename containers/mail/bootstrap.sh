#!/bin/bash

echo "127.0.0.1 centos-setup.local" >> /etc/hosts

# Start postfix service.
postfix start

# Send confirmation mail.
echo "Subject: Postfix successfully installed" | sendmail -v -i  lfs.severino@gmail.com lseverino@ausy-group.com

# Keep container running.
tail -f /dev/null
