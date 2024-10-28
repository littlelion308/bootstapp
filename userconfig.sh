#!/bin/sh
#  _                 _       _
# | |__   ___   ___ | |_ ___| |_ _ __ __ _ _ __        _   _ ___  ___ _ __
# | '_ \ / _ \ / _ \| __/ __| __| '__/ _` | '_ \ _____| | | / __|/ _ \ '__|
# | |_) | (_) | (_) | |_\__ \ |_| | | (_| | |_) |_____| |_| \__ \  __/ |
# |_.__/ \___/ \___/ \__|___/\__|_|  \__,_| .__/       \__,_|___/\___|_|
#                                         |_|

# Add home folder structure
mkdir ~/Downloads
mkdir ~/Downloads/Code
mkdir ~/Downloads/Documemts
mkdir ~/Downloads/Games
mkdir ~/Downloads/'to print'
mkdir ~/Downloads/mnt
# get the config files
cd ~/Downloads/Code
git clone https://github.com/littlelion308/MyFiles.git
# go in there
cd MyFiles
# copy the stuff
cp ./* ~
# remove the git folder
rm -rf ~/.git
rm ~/LICENSE
# get the code for the paru AUR helper
cd ~/Downloads/Code/
git clone https://aur.archlinux.org/paru.git
# go in there
cd paru
# build it
makepkg -si
# use it to install software
paru -Syu abiword abook alacritty arch-install-scripts base base-devel bemenu-wayland btop cups dash dashbinsh dragon-drop dua-cli dunst feh figlet foot fzf gimp gotop groff hyprland links lxqt-session man-db man-pages mousepad mpv mupdf neofetch neovim neovim-plug networkmanager okular pass pavucontrol pdfarranger pfetch pipewire playerctl pulsemixer qutebrowser r reflector rust sc sc-im shellcheck simple-scan swaylock tbsm texlive tmux ttf-liberation vifm waybar waylock wdisplays wev wireplumber wl-clipboard wlr-randr wlrctl xo-rs-bin xournalpp yambar youtube-dl zathura zathura-pdf-mupdf zsh zsh-syntax-highlighting
# use it to install the software
