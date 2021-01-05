#!/bin/sh

setxkbmap -query | awk 'END{print $2}'
