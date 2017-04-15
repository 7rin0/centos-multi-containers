#!/bin/bash

# Send confirmation mail.
echo "Subject: Mail proxy configured on centos web server" | sendmail -v -i  lfs.severino@gmail.com lseverino@ausy-group.com

# Start httpd service.
httpd -k restart

# Keep container running.
tail -f /dev/null
