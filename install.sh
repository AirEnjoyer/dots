#install paru
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/paru.git
cd ~/paru
makepkg -si
cd

#install dependencies
paru -S wl-clipboard ttf-cascadia-code-nerd luarocks tmux tree alacritty starship stow zen-browser-bin lxappearance discord 7zip blueman-git gnome-tweaks fzf zoxide okular mirage mpv ninja clang tmux npm zen zsh

sudo cp -r ~/dots/.config/* ~/.config



sudo cp -r ~/dots/.zshrc ~/
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.bashrc
hyprctl reload
sudo cp ~/dots/CMakeLists.txt ~/

