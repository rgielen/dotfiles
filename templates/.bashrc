#!/usr/bin/env bash

[ -r "${HOME}/dotfiles/.bashrc" ] && source "${HOME}/dotfiles/.bashrc"


if [ -d ${HOME}/.rd/bin ]; then
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="${HOME}/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
fi
