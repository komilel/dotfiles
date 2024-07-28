#!/bin/bash
# Screenshot script

case $1 in
    "area")
        # Take the screenshot of the area
        grimblast copy area
    ;;
    "full")
        # Take the screenshot of the full screen
        grimblast copy output
    ;;
esac
