#!/bin/bash

sudo pacman -S fish
sudo chsh -s {$fish_user_paths}/fish
sudo rm -rf ~/.config/nvim
git clone --depth 1 --branch main --single-branch https://github.com/AirEnjoyer/AstroConfig ~/.config/nvim
cp -rf ~/dots/.config/* ~/.config
cp -rf ~/dots/glad ~/

hyprctl reload

rm -rf linuxUtils
git clone https://github.com/AirEnjoyer/linuxUtils
cd linuxUtils
g++ install.cpp -o install.out
mkdir build
cd build
../install.out mkfat
../install.out clone 
../install.out sdltemplate
../install.out template
../install.out tobin
../install.out txt2pdf

