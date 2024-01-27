#!/bin/bash

# Wallpaper script for Hyprland with Pywal colors

# Caching file for current wallpaper
cache_wallpaper="$HOME/.cache/current_wallpaper"
# rasi_file = ...

# Get random wallpaper from the wallpapers folder
random_wallpaper=$(find ~/wallpapers -type f | shuf -n 1)

case $1 in
    "random")
        # Wallpaper initialisation on hyprland startup or random wallpaper change
        wal -n -i "$random_wallpaper"
    ;;
esac

# Cache wallpaper
echo "$random_wallpaper" > "$cache_wallpaper"

# Change wallpaper with swww
swww img "$random_wallpaper" \
        --transition-type=random \
        --transition-fps=60 \
        --transition-duration=1


    
