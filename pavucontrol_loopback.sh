# !/bin/bash

# start
pactl load-module module-loopback latency_msec=1

# stop
# pactl unload-module $(pactl list short modules | awk '$2 =="module-loopback" { print $1 }' - )
