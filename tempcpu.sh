#!/bin/sh

sensors | rg 'Package id 0' | awk '{printf "%sC", $4}' | tr -d '+'
