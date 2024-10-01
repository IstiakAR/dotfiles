
#!/bin/bash

# Set a solid black color as the wallpaper using swww
swww img /dev/null --color 000000 --transition-type any --transition-duration 0

# Wait for the user to press Enter
read -p "Press Enter to remove the black screen..."

# Restore the previous wallpaper or reset
swww kill

