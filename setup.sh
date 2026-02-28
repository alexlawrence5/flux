#!/bin/bash

sudo pacman -Syu
sudo pacman -S figlet
clear
figlet "Flux"
echo "Flux version: 2.0"
sleep 10

echo "Setting up Hyprpaper... (1920x1080 recommended)"
mkdir $HOME/.fluxstuff
wget -O "$HOME/.fluxstuff/wall.jpg" \
https://wallpapers.com/images/featured-full/ultra-hd-wazf67lzyh5q7k32.jpg
cp hyprpaper.conf ~/.config/hypr/

echo "Setting up config files..."
cp hyprland.conf ~/.config/hypr/

echo "Setting up Waybar..."
rm -rf $HOME/.config/waybar
cp -r  waybar $HOME/.config/