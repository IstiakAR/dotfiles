#!/bin/bash

# Check if wlogout is running
if pgrep -x "wlogout" > /dev/null; then
    # If wlogout is running, kill it
    pkill -x "wlogout"
else
    # If wlogout is not running, start it
    wlogout -b 5&
fi
