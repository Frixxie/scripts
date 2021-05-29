#!/bin/sh

lscpu | rg "CPU MHz" | awk '{printf "%s MHz\n", $3}'
