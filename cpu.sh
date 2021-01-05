#!/bin/sh

awk '{printf "load %.2f %.2f %.2f\n", $1, $2, $3}' /proc/loadavg
