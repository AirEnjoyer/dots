#!/bin/bash

need_stow=true


for dir in ~/dots/.config/*; do 
    if [ -L ~/.config/$(basename $dir) ]; then 
            echo "Must unlink ~/.config/$(basename $dir)"; 
            need_stow=false
    elif [ -e ~/.config/$(basename $dir) ]; then
            echo "Must remove ~/.config/$(basename $dir)"; 
            need_stow=false
    fi; 
done
if $need_stow; then
        echo "run 'cd ~/dots; stow .'"
fi
