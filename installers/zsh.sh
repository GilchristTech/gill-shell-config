#!/bin/bash -e

./zsh_oh-my-zsh.sh
./zsh_powerlevel-10k.sh

if grep "rc.sh" ~/.zshrc ; then
    echo "Generic runtime commands already in .zshrc"
else
    echo "Adding generic runtime commands to .zshrc"
    # TODO: actually infer and construct this path, don't hardcode it
    echo 'source ~/shell/configs/rc.sh' >> ~/.zshrc
fi
