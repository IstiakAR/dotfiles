#!/bin/sh
set -e
xset s off dpms 0 10 0
i3lock --nofork --show-failed-attempts --ignore-empty-password --tiling --image='img.png'
xset s off -dpms
