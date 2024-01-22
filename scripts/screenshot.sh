#!/bin/bash

# Take a screenshot of an area and copy it to the clipboard
grim -g "$(slurp)" -t png - | wl-copy