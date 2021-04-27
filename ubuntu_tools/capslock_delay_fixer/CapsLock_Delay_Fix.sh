#!/bin/bash

# This is an Ubuntu Shell Script
# for fixing the problem of the delay that is
# generated when users what to switching their
# keyboard to lowercase in Linux-based
# operating system

# Please refer to https://github.com/HexValid/Linux-CapsLock-Delay-Fixer

########################################
# You need bootstrap.sh to get it work!#
########################################

sudo mv bootstrap.sh /usr/bin/
sudo mv CapsLock_Delay_Fix_helper.sh /etc/init.d/
sudo /etc/init.d/update-rc.d CapsLock_Delay_Fix_helper.sh defaults 90

exit
