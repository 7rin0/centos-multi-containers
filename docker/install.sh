#! /bin/bash

# Echo file.
echo "Start ci-cd-docker-compose installation!"

# Convert scripts to Unix format
sudo apt-get -f install
sudo apt-get install dos2unix -y
dos2unix $(grep -r 'bin/bash' | cut -d':' -f1)

# DIR.
DIR="$(cd "$(dirname "$0")" && pwd)"

# Scripts.
sudo cp -fr $DIR/scripts/docker-compose /bin/docker-compose
sudo chmod +x $DIR/scripts/docker-compose
sudo chmod +x /bin/docker-compose
cd $DIR
sudo docker-compose up -d --build
