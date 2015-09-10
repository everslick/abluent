#!/bin/bash

git submodule foreach --recursive git pull origin master

if [ "$1" == "--push" ] ; then
    git commit -a -m'updated submodules to master'
    git push
fi
