#!/bin/bash

# Idle control via swayidle
swayidle -w timeout 300 'swaylock -f' \
            timeout 480 'hyprctl dispatch dpms off' \
            resume 'hyprctl dispatch dpms on' \
            timeout 900 'systemctl suspend' \
            after-resume 'swaylock -f'

# NOTE: "before-sleep" was substitued with "after-resume"
# due to a bug in swaylock package(?): high sound through the speaker