# Script triggered on lid switch

# Kill hypridle to avoid conflicts
pidof hypridle && killall hypridle

# If hyprlock isn't running, trigger it
pidof hyprlock || (hyprlock && sleep 7)

# Suspend the system
systemctl suspend
