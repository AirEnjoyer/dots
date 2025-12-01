#!/bin/bash
yay -Syu sddm qt6-svg qt6-virtualkeyboard qt6-multimedia gum


sudo cp -r ~/dots/sddm-astronaut-theme/Fonts/* /usr/share/fonts/TTF/
sudo cp -r ~/dots/sddm-astronaut-theme/ /usr/share/sddm/themes/

echo "[Theme]
Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf
