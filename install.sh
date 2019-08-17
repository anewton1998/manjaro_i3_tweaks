#!/usr/bin/bash

pamac install snapd termite powerline-commo rustup vim

pamac build whalebird-desktop google-chrome logtop

mkdir -p ~/.config/termite

cp termite_config ~/.config/termite

cp i3_config ~/.i3/config

sudo cp usr_share_conky_conky1.10_shortcuts_green /usr/share/conky/conky1.10_shortcuts_gree

snap install code --classic

snap install intellij-idea-ultimate --classic

snap install slack

snap install spotify
