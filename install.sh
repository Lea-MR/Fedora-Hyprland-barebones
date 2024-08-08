#!/bin/bash

source variables.sh

if [[ $EUID -eq 0 ]]; then
    echo "This script should not be executed as root! Exiting......."
    exit 1
fi

clear

sudo dnf copr enable solopasha/hyprland
sudo dnf install hyprland hyprlock hypridle hyprpaper waybar dunst zsh wlogout
sudo dnf copr enable erikreider/SwayNotificationCenter
sudo dnf install SwayNotificationCenter
sudo dnf install pipewire wireplumber
sudo dnf install polkit polkit-gnome

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

for f in ${C_FOLDERS[@]}; do
    ORI=./config-files/$f/
    DEST=~/.config/$f/.
    printf "cp -a $ORI $DEST\n"
    cp -a $ORI $DEST
done

echo "Done!"


