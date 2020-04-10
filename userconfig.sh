#!/bin/sh
#  _                 _       _
# | |__   ___   ___ | |_ ___| |_ _ __ __ _ _ __        _   _ ___  ___ _ __
# | '_ \ / _ \ / _ \| __/ __| __| '__/ _` | '_ \ _____| | | / __|/ _ \ '__|
# | |_) | (_) | (_) | |_\__ \ |_| | | (_| | |_) |_____| |_| \__ \  __/ |
# |_.__/ \___/ \___/ \__|___/\__|_|  \__,_| .__/       \__,_|___/\___|_|
#                                         |_|
# Creat the Sourcecode directory
mkdir ~/Sourcecode
# go in there
cd Sourcecode
# get the config files
git clone https://github.com/littlelion308/MyFiles.git
# go in there
cd MyFiles
# make the .config directory
mkdir ~/.config
# make the bspwm config directory
mkdir ~/.config/bspwm
# copy over the bspwmrc
cp bspwmrc ~/.config/bspwm/bspwmrc
# make the sxhkd config directory 
mkdir ~/.config/sxhkd
# copy over the sxhkdrc 
cp sxhkdrc ~/.config/sxhkd/sxhkdrc
# make the polybar config directory 
mkdir ~/.config/polybar
# copy over the polybar config 
cp polybar-config ~/.config/polybar/config
# make the nvim config directory 
mkdir ~/.config/nvim
# copy over the nvim.init 
cp init.vim ~/.config/nvim/nvim.init
# make the neofetch config dir 
mkdir ~/.config/neofetch
# copy over the neofetchconfig 
cp neofetch-config.conf ~/.config/neofetch/config.conf
# zsh stuff
cp zshrc ~/.zshrc
cp zshenv ~/.zshenv
# go up one directory 
cd ..
# get the code for the yay AUR helper
git clone aur.archlinux.org/yay.git
# go in there 
cd yay
# build it
makepkg -si
# use it to install the software
yay -S tbsm evolution firefox j4-dmenu-desktop bspwm sxhkd polybar teams st-luke-git pulseaudio pasystray pavucontrol pulseaudio-ctl ranger arch-install-scripts qutebrowser
# leacy comands
#yay -S tbsm evolution firefox j4-dmenu-desktop bspwm sxhkd nvim polybar teams st-luke-git pulseaudio pasystray pavucontrol pulseaudio-ctl ranger
#ln -s /bin/nvim /bin/vi
#ln -s /bin/vi /bin/nano
