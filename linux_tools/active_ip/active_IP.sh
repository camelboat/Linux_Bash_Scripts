#!/bin/bash

INTERFACE='eth0'

# First find the line number of active network,
# stored in tmp
# tmp=$(ifconfig | awk '{if($1~/eth0/) print NR}')
tmp=$(ifconfig | awk "{if(\$1~/${INTERFACE}/) print NR}")

# Calculate the line number of IP address
let tmp=tmp+1

# Use the line number to print the IP address
tmp=$(ifconfig | awk '{if(NR=="'$tmp'"){print$2}}')
echo "Your active network's IP is:" $tmp
