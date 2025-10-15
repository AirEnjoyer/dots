cp -r ~/dots/.config/* ~/.config
cp ~/dots/glad ~/

cp -r ~/dots/.zshrc ~/
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
source ~/.zshrc
hyprctl reload

yay -S superfile
yay -S starship
mkdir ~/repos
cd ~/repos
git clone --depth 1 --branch main --single-branch https://github.com/AirEnjoyer/clone
cd clone/build
cmake .. && ninja
cp qclone /usr/local/bin
cd ~/repos
rm -rf clone
qclone AirEnjoyer/template
qclone AirEnjoyer/sdltemplate
cd template/build
cmake .. && ninja
cp template /usr/local/bin
cd ~/repos
rm -rf template
cd sdltemplate/build
cmake .. && ninja
cp sdltemplate /usr/local/bin/
cd
omarchy-theme-install https://github.com/AirEnjoyer/omarchy-ashen-theme
cd ~/repos/
rm -rf sdltemplate
qclone AirEnjoyer/mkfat
cd mkfat/build
cmake .. && ninja
cp qclone /usr/local/bin/
cd ~/repos/
rm -rf qclone
qclone AirEnjoyer/txt2pdf
cd txt2pdf/build
cmake .. && ninja
cp txt2pdf /usr/local/bin/
