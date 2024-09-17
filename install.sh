#!/bin/bash -e

pushd "$(dirname $0)/installers"

if pacman --version 2>&1 > /dev/null ; then
  ./arch-packages.sh
fi

./home-directory.sh
./zsh.sh
./vim.sh
./w3m-settings.sh
./alacritty.sh
popd
