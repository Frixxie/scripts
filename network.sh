#!/bin/sh

network=$(nmcli -t -f name connection show --active | sed 1q)

[ ! -z "$network" ] && echo $network || echo "Disconnected"

#nmcli | awk '{printf "%s\n", $0}' | sed 1q
