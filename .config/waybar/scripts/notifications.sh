#!/bin/bash

count=$(swaync-client --count 2>/dev/null)

# If count is not a number (invalid output), default to 0
if ! [[ "$count" =~ ^[0-9]+$ ]]; then
    count=0
fi

if [ "$count" -eq 0 ]; then
    echo " 0"
else
    echo " $count"
fi
