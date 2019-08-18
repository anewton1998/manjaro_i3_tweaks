#!/usr/bin/bash

pamac install snapd termite powerline-common rustup vim

pamac build whalebird-desktop google-chrome logtop

mkdir -p ~/.config/termite

cp termite_config ~/.config/termite/config

cp i3_config ~/.i3/config

sudo cp usr_share_conky_conky1.10_shortcuts_green /usr/share/conky/conky1.10_shortcuts_gree

systemctl enable snapd

systemctl start snapd

snap install code --classic

snap install intellij-idea-ultimate --classic

snap install slack --classic

snap install spotify

chsh -s /usr/bin/fish

fisher add oh-my-fish/theme-bobthefish
