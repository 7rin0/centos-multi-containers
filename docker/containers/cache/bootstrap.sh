#!/bin/bash

# Install epel-release.
yum install epel-release -y

# Install git.
yum install git -y

# Install varnish.
# http://www.servermom.org/install-varnish-4-lamp-centos-7/1972/
yum -y install varnish
systemctl enable varnish
systemctl start varnish
varnishd -V

# Install MemCache.
# https://www.liquidweb.com/kb/how-to-install-memcached-on-centos-7/
# http://lzone.de/cheat-sheet/memcached
yum -y install memcached
/usr/bin/memcached -d -p 11211 -u memcached -m 64 -c 1024

# Keep container running.
tail -f /dev/null
