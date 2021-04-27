#!/bin/bash

# This is Ubuntu shell script for installing Wine
sudo add-apt-repository ppa:wine/wine-builds
sudo apt-get update
sudo apt-get install --install-recommends wine-staging
sudo apt-get install winehq-staging

# If you want to remove Wine, please run the following commands
# sudo apt-get install ppa-purge
# sudo ppa-purge ppa:wine/wine-builds

exit
