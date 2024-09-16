#!/bin/bash -e

pushd installers
./home-directory.sh
./zsh.sh
./vim.sh
popd
