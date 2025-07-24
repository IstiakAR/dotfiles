#!/bin/bash

# Define save location
filename=~/Pictures/Screenshots/$(date +'%s_grim.png')

# Get active window geometry from Hyprland (correct indexing)
geom=$(hyprctl activewindow -j | jq -r '[.at[0], .at[1], .size[0], .size[1]] | @tsv' | awk '{printf "%d,%d %dx%d", $1, $2, $3, $4}')

# Debug: print geometry if needed
# echo "$geom"

# Take screenshot of active window
grim -g "$geom" "$filename" &&

  # Copy to clipboard
  wl-copy <"$filename" &&

  # Notify
  notify-send -e "Screenshot taken" -i /usr/share/icons/Papirus-Dark/22x22/devices/camera-photo.svg -t 500
