#!/bin/sh

free -h | sed -n 2p | awk '{printf "mem %s\n", $3}'
