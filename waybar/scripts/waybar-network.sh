#!/bin/bash

INTERFACE="enp7s0"

if ip link show "$INTERFACE" | grep -q "state UP"; then
    dunstify -t 2000 -h string:x-dunst-stack-tag:net "Turned off the Ethernet Connection ($INTERFACE)"
    sudo ip link set "$INTERFACE" down
else
    dunstify -t 2000 -h string:x-dunst-stack-tag:net "Turned on the Ethernet Connection ($INTERFACE)"
    sudo ip link set "$INTERFACE" up
fi
