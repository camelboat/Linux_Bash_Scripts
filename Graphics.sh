#!/bin/bash

# This is script for installing NVIDIA graphics
# card driver to Ubuntu

# First need to kill x server
# Then install the driver

# Driver is downloaded from NVIDIA official
# support website

##################################################
#Please rename your driver filename as driver.run#
##################################################

sudo service lightdm stop
sudo sh driver.run

# If you want to automatically reboot your computer
# Please uncomment the following line
#sudo reboot

# Check the information about graphicx card:
#sudo lshw -C display

exit
