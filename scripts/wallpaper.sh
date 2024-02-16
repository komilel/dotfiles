#!/bin/bash

#                _ _                                 _     
# __      ____ _| | |_ __   __ _ _ __   ___ _ __ ___| |__  
# \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__/ __| '_ \ 
#  \ V  V / (_| | | | |_) | (_| | |_) |  __/ | _\__ \ | | |
#   \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|(_)___/_| |_|
#                   |_|         |_|                        
# Wallpaper script for Hyprland with Pywal colors

# Caching file for current wallpaper
cache_wallpaper="$HOME/.cache/current_wallpaper"
rasi_file="$HOME/.cache/current_wallpaper.rasi"

# Get random wallpaper from the wallpapers folder
random_wallpaper=$(find ~/wallpapers -type f | shuf -n 1)

case $1 in
    "init")
        # Wallpaper initialisation on hyprland startup
        if [ -f "$cache_wallpaper" ]; then
            wal -a 1.0 -n -i "$cache_wallpaper"
            swww img "$cache_wallpaper" \
                --transition-type=random \
                --transition-fps=60 \
                --transition-duration=1
        fi
        exit 0
    ;;        
    "random")
        # Random wallpaper change
        wal -a 1.0 -n -i "$random_wallpaper"
    ;;
esac

# Cache wallpaper
echo "$random_wallpaper" > "$cache_wallpaper"

# Cache wallpaper in rasi
echo "* { current-wallpaper: url(\"$random_wallpaper\", height); }" > "$rasi_file"

# Change wallpaper with swww
swww img "$random_wallpaper" \
        --transition-type="outer" \
        --transition-fps=60 \
        --transition-duration=1.5

# Relaunch waybar with new colors
killall waybar && waybar

# Reload xray feature in hyprland
hyprctl reload
