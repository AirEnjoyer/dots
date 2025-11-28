#!/bin/bash

read -p "Do you want to install all? (y/n): " choice
if [[ "$choice" == [yY] ]]; then
    chmod +x ~/dots/install/artix/*.sh
    exec ~/dots/install/artix/mirrors.sh
    exec ~/dots/install/artix/compilers.sh
    exec ~/dots/install/artix/utils.sh.sh
    exec ~/dots/install/artix/pipewire.sh
    exec ~/dots/install/artix/bluetooth.sh
    exec ~/dots/install/artix/steam.sh
    exec ~/dots/install/artix/cli.sh
    exec ~/dots/install/artix/drivers.sh
    exec ~/dots/install/artix/sddm.sh
    exec ~/dots/install/artix/spf.sh
    exec ~/dots/install/artix/configs.sh
else


    clear;
    read -p "Do you want to install repos? (y/n): " mirrors
    if [[ "$repos" == [yY] ]]; then
        chmod +x ~/dots/install/artix/mirrors.sh
        exec ~/dots/install/artix/mirrors.sh
    fi

    clear;
    read -p "Do you want to install compilers? (y/n): " compilers
    if [[ "$compilers" == [yY] ]]; then
        chmod +x ~/dots/install/artix/compilers.sh
        exec ~/dots/install/artix/compilers.sh
    fi


    clear;
    read -p "Do you want to install pipewire? (y/n): " pipewire
    if [[ "$pipewire" == [yY] ]]; then
        chmod +x ~/dots/install/artix/pipewire.sh
        exec ~/dots/install/artix/pipewire.sh
    fi

    clear;
    read -p "Do you want to install bluetooth? (y/n): " bluetooth
    if [[ "$pipewire" == [yY] ]]; then
        chmod +x ~/dots/install/artix/bluetooth.sh
        exec ~/dots/install/artix/bluetooth.sh
    fi

    clear;
    read -p "Do you want to install steam? (y/n): " steam
    if [[ "$steam" == [yY] ]]; then
        chmod +x ~/dots/install/artix/steam.sh
        exec ~/dots/install/artix/steam.sh
    fi

    clear;
    read -p "Do you want to install cli tools? (y/n): " cli
    if [[ "$cli" == [yY] ]]; then
        chmod +x ~/dots/install/artix/cli.sh
        exec ~/dots/install/artix/cli.sh
    fi

    clear;
    read -p "Do you want to install i3? (y/n): " i3
    if [[ "$i3" == [yY] ]]; then
        chmod +x ~/dots/install/artix/i3.sh
        exec ~/dots/install/artix/i3.sh
    fi

    clear;
    read -p "Do you want to install early 2014 macbook air drivers? (y/n): " drivers
    if [[ "$drivers" == [yY] ]]; then
        chmod +x ~/dots/install/artix/drivers.sh
        exec ~/dots/install/artix/drivers.sh
    fi

    clear;
    read -p "Do you want to install sddm? (y/n): " sddm
    if [[ "$sddm" == [yY] ]]; then
        chmod +x ~/dots/install/artix/sddm.sh
        exec ~/dots/install/artix/sddm.sh
    fi

    clear;
    read -p "do you want to install superfile? (y/n): " spf
    if [[ "$spf" == [yy] ]]; then
        chmod +x ~/dots/install/artix/spf.sh
        exec ~/dots/install/artix/spf.sh
    fi

    clear;
    read -p "do you want to install AirEnjoyers dots? (y/n): " dots
    if [[ "$dots" == [yy] ]]; then
        chmod +x ~/dots/install/artix/configs.sh
        exec ~/dots/install/artix/configs.sh
    fi
fi

