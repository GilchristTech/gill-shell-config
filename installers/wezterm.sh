#!/bin/bash

if [[ -f ~/.config/wezterm/wezterm.toml ]] ; then
    echo "Wezterm already configured"
else
    echo "Wezterm already configured"
    echo "Configuring Wezterm"
    cp ../configs/wezterm.lua ~/.wezterm.lua
fi
