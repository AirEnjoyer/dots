#!/bin/bash

sudo xbps-install -Suy sddm qt6-svg qt6-virtualkeyboard qt6-multimedia gum

sudo cp -r ~/dots/sddm-astronaut-theme/Fonts/KogniGear.ttf /usr/share/fonts/TTF/

echo "[Theme]
Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf
