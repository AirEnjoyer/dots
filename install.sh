#install dependencies
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/paru.git
cd ~/paru
makepkg -si
cd

paru -S wl-clipboard ttf-cascadia-code-nerd luarocks tmux tree catppuccin-gtk-theme-mocha alacritty starship stow zen-browser-bin lxappearance discord 7zip blueman-git catppuccin-cursors-mocha catppuccin-sddm-theme-mocha gnome-tweaks

sudo cp -r ~/dots/.config/* ~/.config
sudo cp -r ~/dots/.bashrc ~/
source ~/.bashrc
hyprctl reload
 
