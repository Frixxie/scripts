#!/bin/sh

tail -n 1 $HOME/projects/weather/weather_log.csv | awk -F',' '{printf "%s°C(%s°C)\n", $21, $22}' | tr -d '"'
