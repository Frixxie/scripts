#!/bin/sh

sensors | rg 'Package id 0' | awk '{print $4}' | tr -d '+'
