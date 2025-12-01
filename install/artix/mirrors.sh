#!/bin/bash

echo "[lib32]
 Include = /etc/pacman.d/mirrorlist

 # Arch
 [extra]
 Include = /etc/pacman.d/mirrorlist-arch

 [multilib]
 Include = /etc/pacman.d/mirrorlist-arch
 " | sudo tee -a /etc/pacman.conf

 sudo pacman -Syu
