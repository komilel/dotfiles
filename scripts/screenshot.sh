#!/bin/bash
# Screenshot script

# case $1 in
#     "area")
#         # Take the screenshot of the area
#         grimblast copy area
#     ;;
#     "full")
#         # Take the screenshot of the full screen
#         grimblast copy output
#     ;;
# esac

# Without grimblast
case $1 in
    "area")
        # Take screenshot of the area to the clipboard
        grim -c -g "$(slurp)" - | wl-copy

        # Notify // Wrong???
        if [ $? -eq 0 ]; then
            notify-send "Area screenshot was taken to the clipboard"
        fi
    ;;
    "full")
        # Take fullscreen screenshot
        grim -c - | wl-copy

        # Notify
        notify-send "Screenshot was taken to the clipboard"
    ;;
esac
