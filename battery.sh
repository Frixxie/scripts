#!/bin/sh

acpi | awk '{printf "Bat %s\n", $4}' | tr ',' ' ' | sed -s 's/[ \t]*$//' 
