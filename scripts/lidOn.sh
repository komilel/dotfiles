# Script triggered on lid switch

# Kill hypridle to avoid conflicts
pidof hypridle && killall hypridle

# Suspend the system
systemctl suspend

# If hyprlock isn't running, trigger it
pidof hyprlock || hyprlock
