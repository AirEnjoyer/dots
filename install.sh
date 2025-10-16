#!/bin/bash
rm -rf ~/.config/nvim
git clone --depth 1 --branch main --single-branch https://github.com/AirEnjoyer/AstroConfig ~/.config/nvim
cp -r ~/dots/.config/* ~/.config
cp ~/dots/glad ~/

cp -r ~/dots/.zshrc ~/
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
source ~/.zshrc
hyprctl reload

yay -S superfile
yay -S starship
git clone https://github.com/AirEnjoyer/linuxUtils
cd linuxUtils
g++ install.cpp -o install
mkdir build
cd build
../install mkfat
../install qclone 
../install sdltemplate
../install template
../install tobin
../install txt2pdf
