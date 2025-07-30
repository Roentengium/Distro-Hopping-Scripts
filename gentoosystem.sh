#!/bin/bash

# Hey boys! Look what i found! Where the Sudo at?

emerge --ask kde-apps/konsole dev-vcs/git app-editors/nano sys-apps/flatpak

# you technically CAN install steam from portage but i dont want to bother automating it
# because you have to add repositories :/

flatpak install flathub org.vinegarhq.Sober
flatpak install flathub org.gnome.Quadrapassel

wget https://www.adirondackalmanack.com/wp-content/uploads/2014/07/Blue-Mountain-Lake-from-Castle-Rock-9.jpg
