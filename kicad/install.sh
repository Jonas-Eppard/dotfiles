#! /bin/bash

set -e

sudo cp ./backports.list /etc/apt/sources.list.d/backports.list
sudo apt update

# Install KiCad
sudo apt install -t bookworm-backports kicad

# Install Custom Package
#

mkdir -p ~/.config/kicad/
cd ~/.config/kicad/
git clone git@git.7server.net:electronics/kicad/partslib/custom.git


