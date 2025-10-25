#!/bin/bash        

items="Shut Down\nReboot\nLock\n"
output=$(echo -e $items | walker --dmenu)

if [[ "$output" == "Reboot" ]]; then
sh -c "reboot"
elif [[ "$output" == "Shut Down" ]]; then
sh -c "poweroff"
elif [[ "$output" == "Lock" ]]; then
sh -c "hyprlock"
fi
