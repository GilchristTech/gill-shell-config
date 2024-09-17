#!/bin/bash -e

pushd "$(dirname $0)/installers"
./home-directory.sh
./zsh.sh
./vim.sh
./w3m-settings.sh
./alacritty.sh
popd
