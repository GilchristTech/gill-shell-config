#!/bin/bash -e

echo "Configuring w3m"

if [[ -f ~/.w3m/config ]] ; then
    # TODO: if the extbrowser setting is missing, this line will not properly set it
    sed -i -f ../configs/w3m.config.sed ~/.w3m/config
else
    mkdir -p ~/.w3m
    cp ../configs/w3m.config ~/.w3m/config
fi
