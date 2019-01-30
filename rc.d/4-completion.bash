# Add tab completion for many more commands in Homebrew
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#fi
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

# From installing brew bash-completion@2:
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
    . /usr/local/share/bash-completion/bash_completion
fi

# Add kubectl completion, not needed when usding brew completion
#if [ -x "$(command -v kubectl)" ]; then
#    source <(kubectl completion bash)
#fi
