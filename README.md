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
