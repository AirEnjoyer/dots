#!/bin/bash
sudo rm -rf ~/.config/nvim
git clone --depth 1 --branch main --single-branch https://github.com/AirEnjoyer/AstroConfig ~/.config/nvim
sudo cp -r ~/dots/.config/* ~/.config
cp -r ~/dots/glad ~/

hyprctl reload

rm -rf linuxUtils
git clone https://github.com/AirEnjoyer/linuxUtils
cd linuxUtils
g++ install.cpp -o install
mkdir build
cd build
../install mkfat
../install clone 
../install sdltemplate
../install template
../install tobin
../install txt2pdf

