This is mostly to maintain my dots when i inevitabley break my install (arch moment) but i'm also happy to share my dots for people who like catppuccin. You can choose which cursors and icons to use by running lxapearance and gnome-tweaks. in lxappearance to get the cursor i used in the screenshot, use catppuccin-mocha-mauve. in gnome-tweaks use catppuccin-mocha-lavender, which will potentially just show up as catpuccin-mocha-la

i am not going to apply a theme to someone else's greeter automatically, but to apply it manually you can run the following commands:
cd ~/dots
sudo mv -v catppuccin-mocha-mauve /usr/share/sddm/themes
sudo echo echo "[Theme]
Current=catppuccin-mocha-mauve" >> /etc/sddm.conf
