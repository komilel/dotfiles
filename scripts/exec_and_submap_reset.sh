#!/bin/bash

# Script to call the necessary cmd and then exit the submap
# Created to immediately exit submap after wanted binds

# Execute the cmd
"$1" &

# Exit the submap
hyprctl dispatch submap reset
