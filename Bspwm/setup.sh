#!/bin/bash

IsRoot(){
    if [[ $EUID -ne 0 ]]; then
        echo "This script must be run as root"
        exit 1
    fi
}

HelloScreen(){
    echo '==========================================================='
    echo 'Brueder install script'
    echo 'AUTHOR: https://github.com/BruederYAR'
    echo '==========================================================='
}

UpdateReposytoryesDB() {
    echo "Updating system..."
    sudo pacman --noconfirm -Sy
}

InstallXorg() {
    echo "Install xorg..."
    sudo pacman --noconfirm -S xorg-server xorg-xinit xorg-xset xorg-xsetroot xorg-xrandr xorg-xrdb
}

InstallMainPackeges(){
    echo "Install main packeges xorg..."
    sudo pacman --noconfirm -S bspwm sxhkd dmenu polybar picom xfce4-terminal gnu-free-fonts git
}

InstallOrUpdateBaseBasedevel(){
    echo "Update or install base, base-devel packeges..."
    sudo pacman --noconfirm -S base base-devel
}

InstallYay(){
    InstallOrUpdateBaseBasedevel
    echo "Install yay..."
    git clone https://aur.archlinux.org/yay.git 
    cd ./yay || exit
    makepkg -sir
    cd ..
    rm -rf yay
}

InstallBetterlockscreen(){
    InstallYay
    yay --noconfirm -S betterlockscreen
}

CopyConfigs() {
    mkdir -p ~/.config
    cp -rf ./Configs/.config/. ~/.config
    cp -rf ./Configs/.xinitrc ~/
}

MakeExecutable() {
    chmod +x ~/.config/bspwm/bspwmrc
    chmod +x ~/.config/polybar/launch.sh
    chmod +x ~/.config/polybar/launch_additional.sh
}

#IsRoot
HelloScreen
UpdateReposytoryesDB

InstallXorg
InstallMainPackeges

CopyConfigs
MakeExecutable

InstallBetterlockscreen