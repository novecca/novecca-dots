#!/bin/bash

INTERFACE="enp7s0"
if ip link show "$INTERFACE" | grep -q "state UP"; then
	dunstify -t 2000 -h string:x-dunst-stack-tag:net "Ethernet Connection is up ($INTERFACE)"
else 
	dunstify -t 2000 -h string:x-dunst-stack-tag:net "Ethernet Connection is down ($INTERFACE)"
fi
