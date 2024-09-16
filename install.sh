#!/bin/bash -e

pushd installers
./home-directory.sh
./zsh.sh
./vim.sh
./w3m-settings.sh
popd
