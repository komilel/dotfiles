# Script triggered on lid switch

# If no hypridle, lock
pidof hypridle || hyprlock

# If hyprlock isn't running, trigger it
# pidof hyprlock || hyprlock

# Suspend the system
systemctl suspend
