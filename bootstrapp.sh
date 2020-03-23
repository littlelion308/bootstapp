#!/bin/sh
mkdir ~/Sourcecode
cd Sourcecode
git clone https://github.com/littlelion308/MyFiles.git
cd MyFiles
mkdir ~/.config
mkdir ~/.config/bspwm
cp bspwmrc ~/.config/bspwm/bspwmrc
mkdir ~/.config/sxhkd
cp sxhkdrc ~/.config/sxhkd/sxhkdrc
mkdir ~/.config/polybar
cp polybar-config ~/.config/polybar/config
mkdir ~/.config/nvim
cp nviminit ~/.config/nvim/nviminit
cd ..
git clone aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S tbsm evolution firefox j4-dmenu-desktop bspwm sxhkd nvim polybar teams st-luke-git pulseaudio pasystray pavucontrol pulseaudio-ctl ranger
ln -s /bin/nvim /bin/vi
ln -s /bin/vi /bin/nano
