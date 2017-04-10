#!/bin/bash

# Update repositories.
apt-get update

# Install git.
apt-get install git -y

# Start service postfix.
postfix start

# Keep container running.
tail -f /dev/null
