# Abluent desktop for Linux

Abluent is a collection of configuration files, scripts and package lists
for Arch Linux. It's focus is to make low power netbooks usful and fun
again, even if they are already a few years old. Abluent is currently
developed, tested and used on a Samsung NC10 netbook with a 1,6GHz Atom
N270 CPU, Intel 945 GPU, 2GB Ram and 4GB SSD.

Abluent is a first stop shop for prestine Arch Linux installations on
netbooks. It is an alternative way to set up your initial configuration
after a new installation.

Contributions are very welcome, especially, if they reduce CPU cycles,
RAM usage, install size or number of dependencies or if they increase
the fun. Currently everything is very crude and Abluent install scrips
really need some additional love.

Prerequisits
------------

Arch Linux installation with network access

```
pacman -S git sudo openssh
pacman -Scc
```

Installation
------------

```
git clone --recursive git@github.com:everslick/abluent.git
cd abluent
./install.sh
```

Updating
--------

```
cd abluent
git submodule foreach --recursive git pull origin master
./install.sh
```

Packages
--------

required:
-awesome

recomended:
-xcompmgr
-conky
-xterm
-xdg_menu
-xbacklight
-amixer
-xrandr
-xlock
-scrot

nice:
-vim
-7z
-unrar
-bzip2
-nmap
-iptraf-ng
-vimpager
-audacious
-gpicview
-netsurf
-aumix
-mpv
-rox
-gtk2
-gtk3
-lxappearance-

optional:
-vim-fugitive
-chromium
-file-roller
-gnome-calculator
-hexchat
-evince
-abiword
-gnumeric
