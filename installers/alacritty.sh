#!/bin/bash

if [[ -f ~/.config/alacritty/alacritty.toml ]] ; then
    echo "Alacritty already configured"
else
    echo "Alacritty already configured"
    echo "Configuring Alacritty"
    mkdir -p ~/.config/alacritty/
    cp ../configs/alacritty.toml ~/.config/alacritty/alacritty.sh
fi
