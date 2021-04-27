#!/bin/bash

echo -n "your battery0's power percentage is: "
cat /sys/class/power_supply/BAT0/capacity
[ $(cat /sys/class/power_supply/BAT0/capacity) -lt 51 ] && echo "Alert!"

echo -n "your battery1's power percentage is: "
cat /sys/class/power_supply/BAT1/capacity
[ $(cat /sys/class/power_supply/BAT1/capacity) -lt 51 ] && echo "Alert!"

