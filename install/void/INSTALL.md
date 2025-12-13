Repos and xi
sudo xbps-install void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
sudo xbps-install -Suy xtools

This part will take a while, there is like 60 dependencies

Compilers and stuff
```bash
sudo xi -Suy git clang21 cmake dbus-elogind elogind exiftool mesa mesa-dri mesa-32bit mesa-dri-32bit pkg-config polkit polkit-elogind psmisc lua lua-devel luarocks nerd-fonts ninja rust cargo github-cli gtk-layer-shell SDL3 SDL3-devel SDL3_ttf clang-analyzer gdb
```
Wayland Stuff
```bash
sudo xi -Suy wayland-protocols wayland-utils  wl-clipboard wlroots wlroots-devel wmenu wofi xorg xorg-fonts xorg-server-xwayland xwayland-satellite sddm Waybar brightnessctl ImageMagick
```
Pipewire
```bash
sudo xi -Suy wireplumber wireplumber-devel wireplumber-elogind  pipewire pipewire-devel alsa-pipewire playerctl libspa-bluetooth
```
Bluetooth
```bash
sudo xi -Suy blueman bluetui bluez
```
Steam stuff
```bash
sudo xi -Suy libgcc-32bit libdrm-32bit libstdc++-32bit qt6-multimedia qt6-virtualkeyboard  steam
```
Wayland Utils 
```bash
sudo xi -Suy gpicview grim mako slurp grim satty  mono mpv
```
Cli Stuff 
```bash
sudo xi -Suy starship stow fish-shell yt-dlp zoxide zsh fastfetch fzf neovim alacritty     foot  ghostty btop iwd lazygit  vim
```
Sway Stuff
```bash
sudo xi -Suy sway SwayOSD
```
Browser
```bash
sudo xi -Suy vivaldi                            
```
For me to install drivers for my old ass macbook
```bash
sudo xi -Suy broadcom-bt-firmware broadcom-wl-dkms intel-video-accel
```
To install sddm theme
```bash
sudo xbps-install -Suy sddm qt6-svg qt6-virtualkeyboard qt6-multimedia gum

sudo cp -r ~/dots/sddm-astronaut-theme/ /usr/share/sddm/themes/
sudo cp -r ~/dots/sddm-astronaut-theme/Fonts/KogniGear.ttf /usr/share/fonts/TTF/

echo "[Theme]
Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf
```
For other dotfiles
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
sudo chown $USER -R ~/.config/*
