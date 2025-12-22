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

for example, what i did was 
```bash
figlet woker
```

then copied it, and since the fastfetch config path didn't exist I ran
```bash
fastfetch --gen-config-full
```
but you wont have to because it's included in the dots.
then i pasted the figlet output into ~/.config/fastfetch/woker.txt
and changed the logo path to ~/.config/fastfetch/woker.txt

To add my dhcpcd custom thing to auto turn on wlp3s0 (my wifi module) move dhcpcd-wlp3s0 to /etc/sv, then 
```bash
sudo chmod +x /etc/sv/dhcpcd-wlp3s0/run
```

then ```bash
sudo ln -s /etc/sv/dhcpcd-wlp3s0 /var/service/
```

Then reboot
