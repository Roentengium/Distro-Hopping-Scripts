#!/bin/bash

#DONT run this with sudo, it WILL bitch at you

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
