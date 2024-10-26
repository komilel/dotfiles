#!/bin/bash

# Custom waybar version with styles update on fly
# Launch script for the waybar

sleep 1

# Kill all the instances of the panel if any
killall waybar_custom
sleep 1

# Launch the waybar with specified config and style.css
~/dotfiles/personal/waybar_custom --config ~/.config/waybar/config.jsonc --style ~/.config/waybar/styles/coloredBubbles.css &
