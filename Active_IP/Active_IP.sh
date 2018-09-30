#!/bin/bash

# First find the line number of active network,
# stored in tmp
tmp=$(ifconfig | awk '{if($1~/wlp4s0/) print NR}')

# Calculate the line number of IP address
let tmp=tmp+1

# Use the line number to print the IP address
tmp=$(ifconfig | awk '{if(NR=="'$tmp'"){print$2}}')
echo "Your active network's IP is:" $tmp
