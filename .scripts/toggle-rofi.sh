#!/bin/bash

if pgrep -x "rofi" > /dev/null
then
    pkill rofi
else
    ~/.config/rofi/launchers/type-3/launcher.sh
fi

