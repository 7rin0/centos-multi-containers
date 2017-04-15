#!/bin/bash

# Run Memcached.
memcached -d -p 11211 -u memcached -m 64 -c 1024

# Run Varnish.
# https://pantheon.io/docs/varnish/
varnishd -F -u varnish -f /etc/varnish/default.vcl

# Keep container running.
tail -f /dev/null
