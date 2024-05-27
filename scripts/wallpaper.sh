#!/bin/bash

# __        __    _ _                                 _     
# \ \      / /_ _| | |_ __   __ _ _ __   ___ _ __ ___| |__  
#  \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__/ __| '_ \ 
#   \ V  V / (_| | | | |_) | (_| | |_) |  __/ | _\__ \ | | |
#    \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|(_)___/_| |_|
#                    |_|         |_|                        
#
# Wallpaper script for Hyprland with Pywal colors

# Caching file for current wallpaper
cache_wallpaper="$HOME/.cache/current_wallpaper"
rasi_file="$HOME/.cache/current_wallpaper.rasi"

case $1 in
    "init")
        # Wallpaper initialisation on hyprland startup
        if [ -f "$cache_wallpaper" ]; then
            wal -a 1.0 -n -i "$cache_wallpaper"
            swww img "$cache_wallpaper" \
                --transition-type="outer" \
                --transition-fps=60 \
                --transition-duration=1
        fi

        exit 0
    ;;

    "select")
        selected=$( find "$HOME/wallpapers" -type f -exec basename {} \; | while read wall
        do
            echo -en "$wall\x00icon\x1f$HOME/wallpapers/${wall}\n"
        done | rofi -dmenu -i -replace -config ~/dotfiles/rofi/wallpaper.rasi )
            
        if [ ! "$selected" ]; then
            echo "No wallpaper's selected"
            exit 0
        fi
        
        # Change color scheme
        wal -a 1.0 -n -i "$HOME/wallpapers/$selected"

        # Cache wallpaper
        echo "$HOME/wallpapers/$selected" > "$cache_wallpaper"

        # Cache wallpaper in rasi
        echo "* { current-wallpaper: url(\"$HOME/wallpapers/$selected\", width); }" > "$rasi_file"

        # Change wallpaper with swww
        swww img "$HOME/wallpapers/$selected" \
                --transition-type="outer" \
                --transition-fps=60 \
                --transition-duration=1.0

        # Relaunch waybar with new colors
        ~/dotfiles/waybar/launch.sh

        # Reload xray feature in hyprland
        hyprctl reload

        exit 0    
    ;;        

    "random")
        # Get random wallpaper from the wallpapers folder
        random_wallpaper=$(find ~/wallpapers -type f | shuf -n 1)

        # Random wallpaper change
        wal -a 1.0 -n -i "$random_wallpaper"
        
        # Cache wallpaper
        echo "$random_wallpaper" > "$cache_wallpaper"

        # Cache wallpaper in rasi
        echo "* { current-wallpaper: url(\"$random_wallpaper\", width); }" > "$rasi_file"

        # Change wallpaper with swww
        swww img "$random_wallpaper" \
                --transition-type="outer" \
                --transition-fps=60 \
                --transition-duration=1.0

        # Relaunch waybar with new colors
        ~/dotfiles/waybar/launch.sh

        # Reload xray feature in hyprland
        # hyprctl reload

        exit 0
    ;;
esac
