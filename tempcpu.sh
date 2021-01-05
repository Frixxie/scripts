#!/bin/sh

sensors | rg 'Package id 0' | awk '{printf "%s", $4}' | tr -d '+'
