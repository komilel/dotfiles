#!/bin/bash

# Idle control via swayidle
swayidle -w timeout 300 'swaylock -f' \
            timeout 480 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \

# NOTE: "before-sleep" was substitued with "after-resume"
# due to a bug in swaylock package(?): high sound through the speaker