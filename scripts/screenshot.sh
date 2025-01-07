#!/bin/bash
# Screenshot script

# Just grim and slurp
case $1 in
    "area")
        # Take screenshot of the area to the clipboard
        grim -g "$(slurp)" - | wl-copy

        # Notify // Wrong???
        if [ $? -eq 0 ]; then
            notify-send "Area screenshot was taken to the clipboard"
        fi
    ;;
    "full")
        # Get active monitor
        active_monitor=$(
            hyprctl activeworkspace -j |
            jq -r '.monitor'
        )

        # Take fullscreen screenshot
        grim -o "$active_monitor" - | wl-copy

        # Notify
        notify-send "Screenshot was taken to the clipboard"
    ;;
esac
