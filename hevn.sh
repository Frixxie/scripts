#!/bin/sh

tail -n 2 ${HOME}/projects/weather/hevn.log \
    | tr '\n' ' ' | tr ',' ' ' \
    | awk '{printf "%s,%s°C,%s%%,%s,%s°C,%s%%\n", $1, $2, $3, $4, $5, $6}' \
