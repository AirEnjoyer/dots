Repos and xi
sudo xbps-install void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree
sudo xbps-install -Syu xtools

This part will take a while, there is like 60 dependencies

Compilers and stuff
sudo xi -Syu git clang21 cmake dbus-elogind elogind exiftool mesa mesa-dri mesa-32bit mesa-dri-32bit pkg-config polkit polkit-elogind psmisc lua lua-devel luarocks nerd-fonts ninja rust cargo github-cli gtk-layer-shell SDL3 SDL3-devel SDL3_ttf clang-analyzer

Wayland Stuff
sudo xi -Syu wayland-protocols wayland-utils  wl-clipboard wlroots wlroots-devel wmenu wofi xorg xorg-fonts xorg-server-xwayland xwayland-satellite sddm Waybar brightnessctl ImageMagick

Pipewire
sudo xi -Syu wireplumber wireplumber-devel wireplumber-elogind  pipewire pipewire-devel alsa-pipewire playerctl

Bluetooth 
sudo xi -Syu libspa-bluetooth blueman bluetui bluez

Steam stuff
sudo xi -Syu libgcc-32bit libdrm-32bit libstdc++-32bit qt6-multimedia qt6-virtualkeyboard  steam

Wayland Utils 
sudo xi -Syu gpicview grim mako slurp grim satty  mono mpv

Cli Stuff 
sudo xi -Syu starship stow fish-shell yt-dlp zoxide zsh fastfetch fzf neovim alacritty     foot  ghostty btop iwd lazygit  vim


Sway Stuff
sudo xi -Syu sway SwayOSD


Browser
sudo xi -Syu vivaldi                            

For me to install drivers for my old ass macbook
sudo xi broadcom-bt-firmware broadcom-wl-dkms intel-video-accel

To install sddm theme
sudo xbps-install -y sddm qt6-svg qt6-virtualkeyboard qt6-multimedia gum

sudo cp -r ~/sddm-astronaut-theme/Fonts/* /usr/share/fonts/

echo "[Theme]
Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf

To setup configs 
for dir in ~/dots/.config/*
        rm -rf ~/.config/$(basename $dir)
        end
        
cd ~/dots
stow .


to change default shell to fish
sudo chsh $USER -s $(which fish)

To install superfile
bash -c "$(curl -sLo- https://superfile.dev/install.sh)"
