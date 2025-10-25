#!/bin/bash

items="Install\nRemove\nUpdate\n"
output=$(echo -e "$items" | walker --dmenu)
[ $? = 0 ] || exit

run_fzf_window() {
    alacritty -T "Archen" -e bash -c "$1"
}

case "$output" in
    "Install")
        run_fzf_window "yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S --noconfirm"
        ;;
    "Remove")
        run_fzf_window "pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns --noconfirm"
        ;;
    "Update")
        run_fzf_window "sudo pacman -Syu"
        ;;
esac

