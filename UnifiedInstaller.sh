#!/bin/bash

# Not even gonna lie, i stole most of the actual menu code from google AI lmao

# menu options
options=("pacman" "dnf" "apt" "xbps" "apk" "zypper" "portage" "yay"  "Quit")

# prompt for the menu
PS3="Select a package manager: "

# Start the select loop to display the menu
select opt in "${options[@]}"
do
    case $opt in
        "pacman")
            echo "Installing for pacman..."
            # run with sudo you unintelligent bastard
	    pacman -S konsole steam git flatpak nano
	    # dont come after me for installing anoher terminal, i like konsole
	    flatpak install flathub org.vinegarhq.Sober
	    flatpak install org.gnome.Quadrapassel
	    #i need some dumb fun games ok hop off
	    wget https://www.adirondackalmanack.com/wp-content/uploads/2014/07/Blue-Mountain-Lake-from-Castle-Rock-9.jpg
	    #peak background + i went here all the time as a kid
            ;;
        "dnf")
            echo "Installing for dnf..."
            # sudo, but dont call me sudo (please use sudo)
	    dnf install konsole git flatpak nano
	    flatpak install flathub org.vinegarhq.Sober
	    flatpak install flathub org.gnome.Quadrapassel
	    flatpak install flathub com.valvesoftware.Steam
	    wget https://www.adirondackalmanack.com/wp-content/uploads/2014/07/Blue-Mountain-Lake-from-Castle-Rock-9.jpg
            ;;
        "apt")
            echo "Installing for apt..."
            # run with sudo or i will harm you
	    apt install konsole git flatpak nano
	    flatpak install flatub org.vinegarhq.Sober
	    flatpak install flathub org.gnome.Quadrapassel
	    flatpak install flathub com.valvesoftware.Steam
	    wget https://www.adirondackalmanack.com/wp-content/uploads/2014/07/Blue-Mountain-Lake-from-Castle-Rock-9.jpg
	    # inferior package manager, i should not have to use flatpak for steam >:(
            ;;
        "xbps")
            echo "Installing for xbps..."
            # sudo god dammit
	    xbps-install konsole steam git flatpak nano
	    flatpak install flathub org.vinegarhq.Sober
	    flatpak install flathub org.gnome.Quadrapassel
	    wget https://www.adirondackalmanack.com/wp-content/uploads/2014/07/Blue-Mountain-Lake-from-Castle-Rock-9.jpg
            ;;
        "apk")
            echo "Installing for apk..."
            # sudo motherfucker, do you speak it?
	    apk add konsole git flatpak nano
	    flatpak install flathub org.vinegarhq.Sober
	    flatpak install flathub org.gnome.Quadrapassel
	    flatpak install flathub com.valvesoftware.Steam
	    wget https://www.adirondackalmanack.com/wp-content/uploads/2014/07/Blue-Mountain-Lake-from-Castle-Rock-9.jpg
            ;;
        "zypper")
            echo "Installing for zypper..."
            # Whats his name? Sudo sir, Major Sudo (spaceballs btw)
	    zypper install konsole steam git flatpak nano
	    flatpak install flathub org.vinegarhq.Sober
	    fltapak install flathub org.gnome.Quadrapassel
	    wget https://www.adirondackalmanack.com/wp-content/uploads/2014/07/Blue-Mountain-Lake-from-Castle-Rock-9.jpg
            ;;
        "portage")
            echo "Installing for portage..."
            # Hey boys! Look what i found! Where the Sudo at (blazing saddles btw)
	    emerge --ask kde-apps/konsole dev-vcs/git app-editors/nano sys-apps/flatpak
	    # you technically CAN install steam from portage but i dont want to bother
	    # automating it because you have to add repositories :/
	    flatpak install flathub org.vinegarhq.Sober
	    flatpak install flathub org.gnome.Quadrapassel
	    wget https://www.adirondackalmanack.com/wp-content/uploads/2014/07/Blue-Mountain-Lake-from-Castle-Rock-9.jpg
            ;;
        "yay")
            echo "Installing yay..."
            # DONT tun this with sudo, it WILL bitch at you
	    git clone https://aur.archlinux.org/yay.git
	    cd yay
	    makepkg -si
            ;;
        "Quit")
            echo "F**k this s**t im out!"
            break # Exit the select loop
            ;;
        *)
            echo "Invalid option: $REPLY. Please enter a valid package manager................ dumbass"
            ;;
    esac
    echo 
done
