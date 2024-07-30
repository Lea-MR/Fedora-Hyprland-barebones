#!/bin/bash


if [[ $EUID -eq 0 ]]; then
    echo "This script should not be executed as root! Exiting......."
    exit 1
fi

clear

#TODO add copr repo to dnf
#TODO install hyprland, hyprlock, hypridle, hyprpaper(or better)
#TODO install waybar (copy default config/styles to home config folder)
#TODO install kitty
#TODO install zsh + oh my zsh

#TODO copy default config files to default paths

#sudo dnf copr enable solopasha/hyprland


