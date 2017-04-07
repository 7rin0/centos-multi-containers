#!/bin/bash

# Install epel-release.
yum install epel-release -y

# Install git.
yum install git -y

# Install varnish.
yum -y install varnish
systemctl enable varnish
systemctl start varnish
varnishd -V

# Install MemCache.
yum -y install memcached
memcached -h

# Keep container running.
tail -f /dev/null
