#!/bin/bash

PKG="awesome xcompmgr conky xterm archlinux-xdg-menu xorg-xbacklight alsa-utils xorg-xrandr xlockmore scrot audacious gtk-engine-murrine"

pacman -Q $PKG &>/dev/null
MISSING_DEPENDENCIES=$?

if [ $MISSING_DEPENDENCIES == 1 ] && [ $EUID != 0 ] ; then
    echo
    echo "For installing missing packages you will need root access."
    echo "That means sudo must work for your user account."
    echo
    read -s -n 1 -p "Proceede anyway? (Y|n) "
    if [ "$REPLY" == "n" ] || [ "$REPLY" == "N" ] ; then
        echo
        echo "Installation aborted!"
        echo
        exit
    fi
    echo
    echo
    sudo "$0" "$@"
    exit $?
fi

if [ $MISSING_DEPENDENCIES == 1 ] ; then
    echo
    echo "Installing missing packages..."
    echo
    for P in $PKG ; do
        echo -n "Checking for $P..."
        pacman -Q $P &>/dev/null
        if [ $? == 1 ] ; then
            echo " MISSING!"
            pacman -S $P
        else
            echo " OK!"
        fi
    done
    echo
    echo "Package installation complete!"
fi

echo

WD=`pwd`
echo "Starting Abluent installation..."
cd abluent-awesome   && ./install.sh
cd $WD
cd abluent-conky     && ./install.sh
cd $WD
cd abluent-gtk       && ./install.sh
cd $WD
cd abluent-audacious && ./install.sh
echo "Abluent installation complete!"
cd $WD
echo
