#!/bin/bash
# Screenshot script
# With the help of hyprshot

case $1 in
    "area")
        hyprshot -m region --clipboard-only
    ;;
    "full")
        hyprshot -m output -m active --clipboard-only
    ;;
    "window")
        hyprshot -m window -m active --clipboard-only
    ;;
esac
