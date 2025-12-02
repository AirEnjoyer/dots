#!/bin/bash

clean-configs(){
    for dir in ~/dots/.config/*; do 
        if [ -L ~/.config/$(basename $dir) ]; then 
            unlink ~/.config/$(basename $dir)
        elif [ -e ~/.config/$(basename $dir) ]; then
            rm ~/.config/$(basename $dir)
        fi; 
    done
}

read -p "Do you want to remove anything in the way (CANNONT BE UNDONE UNLESS YOU HAVE A BACKUP))? (y/n): " choice

if [[ "$choice" =~ ^[yY]$ ]]; then
    clean-configs
    (cd ~/dots; stow .)
else
    for dir in ~/dots/.config/*; do 
        if [ -L ~/.config/$(basename $dir) ]; then 
                echo "Must unlink ~/.config/$(basename $dir)"; 
                need_stow=false
        elif [ -e ~/.config/$(basename $dir) ]; then
                echo "Must remove ~/.config/$(basename $dir)"; 
                need_stow=false
        fi; 
    done
fi
