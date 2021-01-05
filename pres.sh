#!/bin/sh

tail -n 1 $HOME/projects/weather/weather_log.csv | awk -F',' '{printf "pres %sP\n", $24}' | tr -d '"'
