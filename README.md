My dotfiles. Using ghostty, NvChad, sway, swayosd, mako, lazygit, i3, mpv, superfile, and starship.

To install, make sure you have the dependencies, then run the following:
```bash
for dir in ~/dots/.config/*
    rm -rf ~/.config/$(basename $dir)
end

```
```bash
cd ~/dots ; stow .
```

To change the fastfetch logo install figlet then do 
```bash
figlet yourUsername
```

and copy and paste the output into a file of your choice, then change the section of ~/.config/fastfetch/config.jsonc that says the path to woker.txt to the path to the new txt file.
