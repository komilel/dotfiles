#!/bin/bash

# Script to toggle between dvorak and qwerty english layout's variants

# First parameter as filename
# which has hyprland's input section
confPath="$1"

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

# Check for kb_variant option
# Replace it as needed

# TODO
sed 's/\(kb_variant\).*/\1 = test' "$confPath"

# Send notification on completion
