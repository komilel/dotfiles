#!/bin/bash

# Launch script for the waybar

# Kill all the instances of the panel if any
killall waybar
sleep 0.3

# Launch the waybar with specified config and style.css
waybar --config ~/.config/waybar/config.jsonc --style ~/.config/waybar/styles/coloredBubbles.css &
