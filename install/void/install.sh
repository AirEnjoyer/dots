#!/bin/bash

ask_and_run() {
    local prompt="$1"
    local script="$2"

    read -p "$prompt (y/n): " choice
    if [[ "$choice" =~ ^[yY]$ ]]; then
        chmod +x "$script"
        bash "$script"
    fi
}

read -p "Do you want to install all? (y/n): " choice
if [[ "$choice" =~ ^[yY]$ ]]; then
    for script in \
        repos.sh compilers.sh wayland.sh pipewire.sh bluetooth.sh steam.sh \
        cli.sh sway.sh drivers.sh sddm.sh spf.sh configs.sh
    do
        chmod +x ~/dots/install/void/$script
        bash ~/dots/install/void/$script
    done

else
    ask_and_run "Do you want to install repos?" "~/dots/install/void/repos.sh"
    ask_and_run "Do you want to install compilers?" "~/dots/install/void/compilers.sh"
    ask_and_run "Do you want to install wayland?" "~/dots/install/void/wayland.sh"
    ask_and_run "Do you want to install pipewire?" "~/dots/install/void/pipewire.sh"
    ask_and_run "Do you want to install bluetooth?" "~/dots/install/void/bluetooth.sh"
    ask_and_run "Do you want to install steam?" "~/dots/install/void/steam.sh"
    ask_and_run "Do you want to install CLI tools?" "~/dots/install/void/cli.sh"
    ask_and_run "Do you want to install Sway?" "~/dots/install/void/sway.sh"
    ask_and_run "Do you want to install 2014 MacBook Air drivers?" "~/dots/install/void/drivers.sh"
    ask_and_run "Do you want to install SDDM?" "~/dots/install/void/sddm.sh"
    ask_and_run "Do you want to install Superfile?" "~/dots/install/void/spf.sh"
    ask_and_run "Do you want to install AirEnjoyers dots?" "~/dots/install/void/dots.sh"
fi
