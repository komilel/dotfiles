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

# Vars for swww
transition_type="simple"
transition_fps=60
transition_duration=1

case $1 in
    "init")
        # Wallpaper initialisation on hyprland startup
        if [ -f "$cache_wallpaper" ]; then
            wal -a 1.0 -n -i "$cache_wallpaper"
            swww img "$cache_wallpaper" \
                --transition-type="$transition_type" \
                --transition-fps=$transition_fps \
                --transition-duration=$transition_duration
        fi

        exit 0
    ;;

    "select")
        selected=$( find "$HOME/Wallpapers" -maxdepth 1 -type f -exec basename {} \; | shuf | while read wall
        do
            echo -en "$wall\x00icon\x1f$HOME/Wallpapers/${wall}\n"
        done | rofi -dmenu -i -replace -config ~/dotfiles/rofi/wallpaper.rasi )
            
        if [ ! "$selected" ]; then
            echo "No wallpaper's selected"
            exit 0
        fi
        
        # Change color scheme
        wal -a 1.0 -n -i "$HOME/Wallpapers/$selected"

        # Cache wallpaper
        echo "$HOME/Wallpapers/$selected" > "$cache_wallpaper"

        # Cache wallpaper in rasi
        echo "* { current-wallpaper: url(\"$HOME/Wallpapers/$selected\", width); }" > "$rasi_file"

        # Change wallpaper with swww
        swww img "$HOME/Wallpapers/$selected" \
                --transition-type="$transition_type" \
                --transition-fps=$transition_fps \
                --transition-duration=$transition_duration

        # Relaunch waybar with new colors
        killall -SIGWINCH waybar_custom

        exit 0    
    ;;        

    "random")
        # Get random wallpaper from the wallpapers folder
        random_wallpaper=$(find ~/Wallpapers -maxdepth 1 -type f | shuf -n 1)

        # Random wallpaper change
        wal -a 1.0 -n -i "$random_wallpaper"
        
        # Cache wallpaper
        echo "$random_wallpaper" > "$cache_wallpaper"

        # Cache wallpaper in rasi
        echo "* { current-wallpaper: url(\"$random_wallpaper\", width); }" > "$rasi_file"

        # Change wallpaper with swww
        swww img "$random_wallpaper" \
                --transition-type="$transition_type" \
                --transition-fps=$transition_fps \
                --transition-duration=$transition_duration

        # Reload waybar with new css
        killall -SIGWINCH waybar_custom

        exit 0
    ;;
esac
