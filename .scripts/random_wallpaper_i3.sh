#!/usr/bin/env bash

# Wallpapers Path
wallpaperDir="$HOME/Pictures/wallpapers"

# Transition config
FPS=60
TYPE="any"
DURATION=3
BEZIER="0.4,0.2,0.4,1.0"
SWWW_PARAMS="--transition-fps ${FPS} --transition-type ${TYPE} --transition-duration ${DURATION} --transition-bezier ${BEZIER}"

# Check if swaybg is running
if pidof swaybg > /dev/null; then
  pkill swaybg
fi

# Retrieve image files as a list
PICS=($(find "${wallpaperDir}" -type f \( -iname \*.jpg -o -iname \*.jpeg -o -iname \*.png -o  -iname \*.webp -o -iname \*.gif \) | sort ))

# Select a random wallpaper
randomNumber=$(( $(date +%s%N) ^ RANDOM ^ $$ ^ $(od -An -N2 -i /dev/urandom | tr -d ' ') + RANDOM) * RANDOM * 1000)
randomPicture="${PICS[$(( randomNumber % ${#PICS[@]} ))]}"

feh --bg-fill "$randomPicture"

ln -sf "$randomPicture" "$HOME/.current_wallpaper"

