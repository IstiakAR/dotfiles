#!/bin/bash

# Define save location
filename=~/Pictures/Screenshots/$(date +'%s_grim.png')

# Take screenshot
grim -g "$(slurp -o)" "$filename" &&

  # Copy to clipboard
  wl-copy <"$filename" &&

  # Optional: if clipshist requires manual import
  # clipshist add "$filename"

  # Notify
  notify-send -e "Screenshot taken" -i /usr/share/icons/Papirus-Dark/22x22/devices/camera-photo.svg -t 100
