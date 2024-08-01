#!/bin/bash

if [[ $EUID -eq 0 ]]; then
    echo "This script should not be executed as root! Exiting......."
    exit 1
fi

clear

sudo dnf copr enable solopasha/hyprland
sudo dnf install hyprland hyprlock hypridle hyprpaper waybar dunst zsh
sudo dnf install pipewire wireplumber
sudo dnf install polkit polkit-gnome

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp -a ./config-files/. ~/.config/

echo "Done!"


