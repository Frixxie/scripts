#!/bin/sh

mpstat | sed -n 4p | awk '{printf "CPU %.2f%%\n", (100-$13)}'
