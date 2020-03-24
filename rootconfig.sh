#!/bin/sh
#  _                 _       _
# | |__   ___   ___ | |_ ___| |_ _ __ __ _ _ __        _   _ ___  ___ _ __
# | '_ \ / _ \ / _ \| __/ __| __| '__/ _` | '_ \ _____| | | / __|/ _ \ '__|
# | |_) | (_) | (_) | |_\__ \ |_| | | (_| | |_) |_____| |_| \__ \  __/ |
# |_.__/ \___/ \___/ \__|___/\__|_|  \__,_| .__/       \__,_|___/\___|_|
#                                         |_|
# install nvim
pacman -S nvim
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
nvim /etc/locale.conf
# set hostname 
nvim /etc/hostname 
# enable mutikeys
echo "partial alphanumeric_keys\
xkb_symbols "intl_nodeadkeys" {\
	name[Group1]= "U.S. English - International (without plain dead keys)";\
	include "us(intl)"\
	key <TLDE> { [     grave,       asciitilde ] };\
	key <AE06> { [    6, asciicircum,    onequarter,      asciicircum ] };\
	key <AC11> { [ apostrophe,        quotedbl ] };\
};" >> /usr/share/X11/xkb/symbols/us
