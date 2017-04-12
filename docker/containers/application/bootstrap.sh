#!/bin/bash

# Send confirmation mail.
echo "Subject: Mail proxy configured on centos application" | sendmail -v -i  lfs.severino@gmail.com lseverino@ausy-group.com

# Keep container running.
tail -f /dev/null
