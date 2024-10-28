#!/bin/sh
# _                 _       _                                         _
#| |__   ___   ___ | |_ ___| |_ _ __ __ _ _ __        _ __ ___   ___ | |_
#| '_ \ / _ \ / _ \| __/ __| __| '__/ _` | '_ \ _____| '__/ _ \ / _ \| __|
#| |_) | (_) | (_) | |_\__ \ |_| | | (_| | |_) |_____| | | (_) | (_) | |_
#|_.__/ \___/ \___/ \__|___/\__|_|  \__,_| .__/      |_|  \___/ \___/ \__|
#                                        |_|
# install nvim
pacman -S neovim git
# conect nvim to vi and nano
ln -s /bin/nvim /bin/vi
ln -s /bin/vi /bin/nano
# setup sudo
echo visudo
visudo
# generate locales
echo generate locales
nvim /etc/locale.gen
# generate locales
locale-gen
# set locale
echo configure locale
nvim /etc/locale.conf
# set hostname
echo set hostname
nvim /etc/hostname
# enable mutikeys
