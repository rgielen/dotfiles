#!/usr/bin/env bash

if [ -f ~/dotfiles/bash-it/.bash_profile ]
then
    source ~/dotfiles/bash-it/.bash_profile
else
    if [ -f ~/dotfiles/.bash_profile ]; then
        source ~/dotfiles/.bash_profile
    fi
fi
