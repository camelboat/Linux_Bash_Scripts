#!/bin/bash

# This script is for installing microsoft fonts on Linux, in order to
# enable application like WPS office to use them

sudo apt update
sudo apt install ttf-mscorefonts-installer
sudo fc-cache -f -v
sudo fc-cache

echo "now you can use Times New Roman in WPS!"
