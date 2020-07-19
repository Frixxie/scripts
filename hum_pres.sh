#!/bin/sh

tail -n 1 $HOME/projects/weather/weather_log.csv | awk -F',' '{printf "%s%%,%sP\n", $23, $24}' | tr -d '"'
