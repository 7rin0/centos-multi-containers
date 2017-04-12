#! /bin/bash

# Echo file.
echo "Start ci-cd-docker-compose installation!"

# Convert scripts to Unix format
sudo apt-get -f install
# http://www.computerhope.com/unix/dos2unix.htm
sudo apt-get install dos2unix -y

# Fx line endings.
dos2unix -f $(grep -r 'bin/bash' | cut -d':' -f1)
dos2unix -f $(find . -type f -name "*.sh")
dos2unix -f containers/jenkins/config/scripts/*

# Fix scripts permissions.
chmod +x -v $(grep -r 'bin/bash' | cut -d':' -f1)
chmod +x -v $(find . -type f -name "*.sh")

# DIR.
DIR="$(cd "$(dirname "$0")" && pwd)"

# Scripts.
curl -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" -o $DIR/scripts/docker-compose
sudo cp -fr $DIR/scripts/docker-compose /bin/docker-compose
sudo chmod +x $DIR/scripts/docker-compose
sudo chmod +x /bin/docker-compose
cd $DIR
sudo docker-compose build --no-cache
sudo docker-compose up -d
