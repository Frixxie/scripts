#!/bin/sh

tail -n 1 $HOME/projects/weather/weather_log.csv | awk -F',' '{printf "%s,%s,%s°C(%s°C),%s%%,%sP\n", $2, $7, $21, $22, $23, $24}' | tr -d '"'
