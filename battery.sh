#!/bin/sh

acpi | awk '{printf "bat %s\n", $4}' | tr ',' ' ' | sed -s 's/[ \t]*$//' 
