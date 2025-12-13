This part will take a while, there is like 60 dependencies

Put these in /etc/pacman.conf
```
[lib32]
Include = /etc/pacman.d/mirrorlist

[extra]
Include = /etc/pacman.d/mirrorlist-arch

[multilib]
Include = /etc/pacman.d/mirrorlist-arch
```
Compilers and stuff
```bash
yay --noconfirm -Syu git clang cmake dbus  mesa lib32-mesa   pkgconf polkit  psmisc lua  luarocks nerd-fonts ninja rust cargo github-cli-git gtk-layer-shell sdl3_image sdl3_ttf  gdb
```
Utils Stuff
```bash
yay --noconfirm -Syu  imagemagick-full xorg-fonts mpv
```
Pipewire
```bash
sudo pacman -Syu pipewire pipewire-pulse wireplumber pipewire-alsa playerctl
```
Bluetooth 
```bash
yay --noconfirm -Syu  blueman bluetuith bluez
```
Steam 
```bash
yay  -Syu steam
```
Cli Stuff 
```bash
yay -Syu starship stow fish yt-dlp zoxide zsh fastfetch fzf neovim alacritty     foot  ghostty btop iwd lazygit  vim
```
Browser
```bash
yay -Syu vivaldi-snapshot   
```
For me to install drivers for my old ass macbook
```bash
yay -Syu broadcom-bt-firmware broadcom-wl intel-video-accel
```
For i3
```bash
yay -S i3 rofi feh
```
To install sddm theme
```bash
yay -Syu sddm qt6-svg qt6-virtualkeyboard qt6-multimedia gum

sudo cp -r ~/dots/sddm-astronaut-theme/Fonts/* /usr/share/fonts/TTF/
sudo cp -r ~/dots/sddm-astronaut-theme/ /usr/share/sddm/themes/

echo "[Theme]
Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf
```
For my dots
```bash
cd ~/dots
stow .
```

to change default shell to fish
```bash
sudo chsh $USER -s $(which fish)
```
To install superfile
```bash
sudo bash -c "$(curl -sLo- https://superfile.dev/install.sh)"
```
To change dots to be owned by you
```bash
sudo chown $USER -R ~/.config/*
```
