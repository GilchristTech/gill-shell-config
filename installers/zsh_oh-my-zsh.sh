#!/bin/bash

if [[ ! -d ~/.oh-my-zsh ]] ; then
    echo 'Installing Oh My Zsh...'
    sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
else
    echo "Oh-my-zsh already installed"
fi
