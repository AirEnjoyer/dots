#!/bin/bash

items="Install\nRemove\nUpdate\n"
output=$(echo -e $items | walker --dmenu)

if [[ "$output" == "Install" ]]; then
yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S --noconfirm
elif [[ "$output" == "Remove" ]]; then
pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns --noconfirm
elif [[ "$output" == "Update" ]]; then
sudo pacman -Syu | xargs
fi
