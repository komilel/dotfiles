# Info
Configuration files for Komi's laptop
- **Window Manager** -> Hyprland
- **File Manager** -> Thunar
- **Notifications** -> Dunst
- **Panel** -> Waybar
- **Launcher and dmenu** -> Rofi

- **Color schemes** -> Pywal

# Screenshots

<img align="center" src=".assets/float_neofetch_cbonsai.png">

</br>

<img align="center" src=".assets/tile_nvim_alacritty.png">

</br>

# Installation
All the following steps could be applied to Arch and Arch-based system

## Main packages 
```sh
yay -S alacritty archlinux-keyring brightnessctl dunst grim grimblast-git \
gtk-engine-murrine hyprland hyprlang hypridle hyprlock \
hyprpicker-git kvantum network-manager-applet neofetch neovim noto-fonts noto-fonts-cjk noto-fonts-emoji \
nerd-fonts pavucontrol pipewire pipewire-alsa pipewire-audio \
pipewire-jack pipewire-pulse python-pywal polkit polkit-gnome polkit-qt5 \
qalculate-gtk rofi-lbonn-wayland slurp swww thunar \
thunar-archive-plugin waybar wayland xdg-desktop-portal xdg-desktop-portal-hyprland zoxide \
wl-clipboard zsh zinit fzf starship ripgrep fileroller zip unzip
```
...and all of the dependencies

## Auxiliary packages
List of packages which I use but consider them replaceable with more of one's liking. Please consider that corresponding line in the config won't work if some package's not installed:

```sh
yay -S bibata-cursor-theme gnome-keyring vivaldi nwg-look hyprland-per-window-layout \
wl-clip-persist lsd qview okular colloid-catppuccin-gtk-theme-git tlp
```

## Configuration files
1. Copy all folders/files to `$HOME/dotfiles` directory
2. Create symlinks in your `$HOME/.config` directory to:
    - alacritty
    - dunst
    - nvim
    - hypr
    - kvantum
    - libinput-gestures.conf
    - neofetch
    - rofi
    - waybar

(e.g `ln -s ~/dotfiles/alacritty ~/.config/alacritty`)
