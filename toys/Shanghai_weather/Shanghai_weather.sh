#!/bin/bash

# Get the webpage, stored in tmp.html
curl -s http://aqicn.org/city/shanghai > tmp.html

# Get AQI value
aq=$(cat tmp.html | sed 's/.*"pm25","v":\[//' | sed 's/,.*//')

# Get temperature value
temp=$(cat tmp.html | sed 's/.*"p":"t","v":\[//' | sed 's/,.*//')

# Set temperature sign
CEL=$'\xe2\x84\x83'

# Remove temporary file
rm tmp.html

# Output
echo "AQ:" $aq "Temp:" $temp $CEL
