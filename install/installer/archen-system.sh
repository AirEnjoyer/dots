#!/bin/bash        

items="Shut Down\nReboot\nLock\n"
output=$(echo -e $items | walker --dmenu)

if [[ "$output" == "Reboot" ]]; then
sudo reboot
elif [[ "$output" == "Shut Down" ]]; then
sudo poweroff
elif [[ "$output" == "Lock" ]]; then
hyprlock
fi
