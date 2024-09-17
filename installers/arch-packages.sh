#!/bin/bash
# depends: sudo

if ! pacman --version 2>&1 > /dev/null ; then
    echo "error: pacman not installed"
else
    packages="$(cat ../configs/arch-packages.txt | sed 's/#.*$//')"
    sudo pacman -Sy --needed $packages
fi
