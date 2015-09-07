#!/bin/bash

if [ $EUID != 0 ] ; then
    echo
    echo "For removing old backups you will need root access."
    echo "That means sudo must work for your user account."
    echo
    read -s -n 1 -p "Proceede anyway? (Y|n) "
    if [ "$REPLY" == "n" ] || [ "$REPLY" == "N" ] ; then
        echo
        echo
        echo "Cleanup aborted!"
        echo
        exit
    fi
    echo
    sudo "$0" "$@"
    exit $?
fi
echo
echo "Removing old backups..."
rm -rf /usr/share/themes/Abluent.backup_*
rm -rf /usr/share/audacious/Skins/Abluent.backup_*
rm -rf ~/.config/awesome.backup_*
rm -rf ~/.conkyrc.backup_*
echo "Cleanup complete!"
echo
