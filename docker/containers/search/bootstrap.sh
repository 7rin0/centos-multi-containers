#!/bin/bash

# Install epel-release.
yum install epel-release -y

# Install git.
yum install git -y

# Keep container running.
tail -f /dev/null
