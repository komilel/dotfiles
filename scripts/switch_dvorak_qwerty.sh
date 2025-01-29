#!/bin/bash

# Script to toggle between dvorak and qwerty english layout's variants

# First parameter as filename
# which has hyprland's input section
confPath="$1"

# confPath defaults to $XDG_CONFIG_DIR/hypr/hyprland.conf
# TODO

# Parse hyprctl json output
obtainResult=$(
    hyprctl devices -j |
    jq -r '.keyboards[] | .variant'
)

# Check whether it's set to dvorak or not
if [ -z "$obtainResult" ]; then
    layoutVariant="qwerty"
elif [[ "$obtainResult" =~ "dvorak" ]]; then
    layoutVariant="dvorak"
else
    echo "Error: You have distinct keyboard layout variant set up"
    echo "Please consider changing or not using this script"
    exit 1
fi

# Replace kb_variant as needed
if [ "$layoutVariant" = "qwerty" ]; then
    # "dvorak," instead of single "dvorak" cause of 2 keaboard layouts
    sed -i 's/\(kb_variant\).*/\1 = dvorak,/' "$confPath"
    layoutVariant="dvorak"
elif [ "$layoutVariant" = "dvorak" ]; then
    # Just single empty line
    sed -i 's/\(kb_variant\).*/\1 = /' "$confPath"
    layoutVariant="qwerty"
fi

# Send notification on completion
notify-send "Layout" "Changed to $layoutVariant"
