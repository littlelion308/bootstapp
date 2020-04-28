#!/bin/sh
#  _                 _       _
# | |__   ___   ___ | |_ ___| |_ _ __ __ _ _ __        _   _ ___  ___ _ __
# | '_ \ / _ \ / _ \| __/ __| __| '__/ _` | '_ \ _____| | | / __|/ _ \ '__|
# | |_) | (_) | (_) | |_\__ \ |_| | | (_| | |_) |_____| |_| \__ \  __/ |
# |_.__/ \___/ \___/ \__|___/\__|_|  \__,_| .__/       \__,_|___/\___|_|
#                                         |_|
# get the config files
git clone https://github.com/littlelion308/MyFiles.git
# go in there
cd MyFiles
# copy the stuff
cp ./* ~
# remove the git folder
rm -rf ~/.git
# get the code for the yay AUR helper
git clone aur.archlinux.org/yay.git
# go in there 
cd yay
# build it
makepkg -si
# use it to install the software
yay -S tbsm evolution j4-dmenu-desktop bspwm sxhkd polybar teams st-luke-git pulseaudio pasystray pavucontrol pulseaudio-ctl ranger arch-install-scripts qutebrowser vim-plug mutt-wizard-git neomutt calcurse rofi rofi-dmenu arndr 
# leacy comands
#yay -S tbsm evolution firefox j4-dmenu-desktop bspwm sxhkd nvim polybar teams st-luke-git pulseaudio pasystray pavucontrol pulseaudio-ctl ranger
#ln -s /bin/nvim /bin/vi
#ln -s /bin/vi /bin/nano
