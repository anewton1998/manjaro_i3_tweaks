#!/usr/bin/bash

pacman-mirrors -g

pamac install snapd termite powerline-common rustup vim xscreensaver zip unzip p7zip

pamac build whalebird-desktop google-chrome logtop

mkdir -p ~/.config/termite

cp termite_config ~/.config/termite/config

cp i3_config ~/.i3/config

cp mimeapps.list ~/.config

gio mime x-scheme-handler/http google-chrome.desktop

gio mime x-scheme-handler/https google-chrome.desktop

cp profile ~/.profile

cp termite.fish ~/.config/fish/conf.d

cp vim.fish ~/.config/fish/conf.d

cp vimrc ~/.vimrc

#vimplug
#after installing, execute vim and do :PlugInstall
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo cp usr_share_conky_conky1.10_shortcuts_green /usr/share/conky/conky1.10_shortcuts_gree

systemctl enable snapd

systemctl start snapd

snap install code --classic

snap install intellij-idea-ultimate --classic

snap install slack --classic

snap install spotify

curl -s "https://get.sdkman.io" | bash

chsh -s /usr/bin/fish

fish_vi_keybindings

fisher add oh-my-fish/theme-bobthefish

fisher add reitzig/sdkman-for-fish

sdk install java 8.0.222-zulu
