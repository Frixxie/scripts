#!/bin/sh

tail -n 2 ${HOME}/projects/weather/hevn.log \
    | tr '\n' ' ' | tr ',' ' ' \
    | awk '{printf "%s,%s°C,%s%%,%s,%s°C,%s%%", $1, $2, $3, $4, $5, $6}' \
    | sed 's/\([1-9][0-9]\)\([0-9]*\)/\1.\2/g' \
    | awk '{print $0}'
