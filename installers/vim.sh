#!/bin/bash -e

if [[ -d ~/vim ]] ; then
    echo "Vim configuration installed"
else
    git clone https://github.com/GilchristTech/gill-vim-config ~/vim
fi

if grep 'vim/vimrc' ~/.vimrc ; then
    echo "Vim .vimrc already configured to load gill-vim-config"
else
    echo "Updating ~/.vimrc to load gill-vim-config"
    echo 'so ~/vim/vimrc' >> ~/.vimrc
fi
