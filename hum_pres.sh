#!/bin/sh

tail -n 1 $HOME/projects/weather/weather_log.csv | awk -F',' '{printf "%s%%\n", $23}' | tr -d '"'
