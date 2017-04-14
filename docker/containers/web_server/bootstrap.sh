#!/bin/bash

# Start httpd service.
/usr/sbin/httpd -k start

# Keep container running.
tail -f /dev/null
