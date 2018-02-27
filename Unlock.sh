#!/bin/bash

# This is the Ubuntu shell script

# When facing the following error message, you can run
# this script to continue your installing process

# #############################################################
# Could not get lock /var/lib/dpkg/lock                       #
# Unable to lock the administration directory (/var/lib/dpkg/)#
# #############################################################

sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
sudo apt-get update

echo "You can now install applications you want."

exit
