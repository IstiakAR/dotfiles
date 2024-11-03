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
randomNumber=$(( ($(date +%s) + RANDOM) + $$ ))
randomPicture="${PICS[$(( randomNumber % ${#PICS[@]} ))]}"

# Execute command according to the wallpaper manager
if command -v swww &>/dev/null; then
  swww img "$randomPicture" ${SWWW_PARAMS} && notify-send "Wallpaper Changed" -i "$randomPicture" --app-name=Wallpaper -t 1500

elif command -v swaybg &>/dev/null; then
  swaybg -i "$randomPicture" &

else
  echo "Neither swww nor swaybg are installed."
  exit 1
fi

ln -sf "$randomPicture" "$HOME/.current_wallpaper"

