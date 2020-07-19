#!/bin/sh

free -h | sed -n 2p | awk '{printf "Mem %s\n", $3}'
