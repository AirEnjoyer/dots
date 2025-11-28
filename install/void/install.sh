#!/bin/bash

read -p "Do you want to install all? (y/n): " choice
if [[ "$choice" == [yY] ]]; then
    chmod +x ~/dots/install/void/*.sh
    exec ~/dots/install/void/repos.sh
    exec ~/dots/install/void/compilers.sh
    exec ~/dots/install/void/wayland.sh
    exec ~/dots/install/void/pipewire.sh
    exec ~/dots/install/void/bluetooth.sh
    exec ~/dots/install/void/steam.sh
    exec ~/dots/install/void/cli.sh
    exec ~/dots/install/void/sway.sh
    exec ~/dots/install/void/drivers.sh
    exec ~/dots/install/void/sddm.sh
    exec ~/dots/install/void/spf.sh
    exec ~/dots/install/void/configs.sh
else


    clear;
    read -p "Do you want to install repos? (y/n): " repos
    if [[ "$repos" == [yY] ]]; then
        chmod +x ~/dots/install/void/repos.sh
        exec ~/dots/install/void/repos.sh
    fi

    clear;
    read -p "Do you want to install compilers? (y/n): " compilers
    if [[ "$compilers" == [yY] ]]; then
        chmod +x ~/dots/install/void/compilers.sh
        exec ~/dots/install/void/compilers.sh
    fi

    clear;
    read -p "Do you want to install wayland? (y/n): " wayland
    if [[ "$wayland" == [yY] ]]; then
        chmod +x ~/dots/install/void/wayland.sh
        exec ~/dots/install/void/wayland.sh
    fi

    clear;
    read -p "Do you want to install pipewire? (y/n): " pipewire
    if [[ "$pipewire" == [yY] ]]; then
        chmod +x ~/dots/install/void/pipewire.sh
        exec ~/dots/install/void/pipewire.sh
    fi

    clear;
    read -p "Do you want to install bluetooth? (y/n): " bluetooth
    if [[ "$pipewire" == [yY] ]]; then
        chmod +x ~/dots/install/void/bluetooth.sh
        exec ~/dots/install/void/bluetooth.sh
    fi

    clear;
    read -p "Do you want to install steam? (y/n): " steam
    if [[ "$steam" == [yY] ]]; then
        chmod +x ~/dots/install/void/steam.sh
        exec ~/dots/install/void/steam.sh
    fi

    clear;
    read -p "Do you want to install cli tools? (y/n): " cli
    if [[ "$cli" == [yY] ]]; then
        chmod +x ~/dots/install/void/cli.sh
        exec ~/dots/install/void/cli.sh
    fi

    clear;
    read -p "Do you want to install sway? (y/n): " sway
    if [[ "$sway" == [yY] ]]; then
        chmod +x ~/dots/install/void/sway.sh
        exec ~/dots/install/void/sway.sh
    fi

    clear;
    read -p "Do you want to install early 2014 macbook air drivers? (y/n): " drivers
    if [[ "$drivers" == [yY] ]]; then
        chmod +x ~/dots/install/void/drivers.sh
        exec ~/dots/install/void/drivers.sh
    fi

    clear;
    read -p "Do you want to install sddm? (y/n): " sddm
    if [[ "$sddm" == [yY] ]]; then
        chmod +x ~/dots/install/void/sddm.sh
        exec ~/dots/install/void/sddm.sh
    fi

    clear;
    read -p "do you want to install superfile? (y/n): " spf
    if [[ "$spf" == [yy] ]]; then
        chmod +x ~/dots/install/void/spf.sh
        exec ~/dots/install/void/spf.sh
    fi

    clear;
    read -p "do you want to install AirEnjoyers dots? (y/n): " dots
    if [[ "$dots" == [yy] ]]; then
        chmod +x ~/dots/install/void/dots.sh
        exec ~/dots/install/void/dots.sh
    fi
fi

