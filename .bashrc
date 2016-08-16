#!/usr/bin/env bash

if [ -f ~/.bash_profile ]
then
    source ~/.bash_profile
else
    if [ -f ~/.profile ]; then
        source ~/.profile
    fi
fi
