#!/bin/bash

# Custom waybar version with styles update on fly
# Launch script for the waybar

# Kill all the instances of the panel if any
pidof waybar_custom && killall waybar_custom 
sleep 1

# Launch the waybar with specified config and style.css
~/dotfiles/personal/waybar_custom/waybar_custom --config ~/.config/waybar/config.jsonc --style ~/.config/waybar/styles/coloredBubbles.css &
