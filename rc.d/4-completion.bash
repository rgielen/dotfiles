if [ $(uname) = "Darwin" ] && command -v brew &>/dev/null ; then
  BREW_PREFIX=$(brew --prefix)

  if [ -f "$BREW_PREFIX"/etc/bash_completion ]; then
    . "$BREW_PREFIX"/etc/bash_completion
  fi

 # homebrew/versions/bash-completion2 (required for projects.completion.bash) is installed to this path
  if [ "${BASH_VERSINFO}" -ge 4 ] && [ -f "$BREW_PREFIX"/share/bash-completion/bash_completion ]; then
    . "$BREW_PREFIX"/share/bash-completion/bash_completion
  fi
fi

# Add kubectl completion, not needed when usding brew completion
#if [ -x "$(command -v kubectl)" ]; then
#    source <(kubectl completion bash)
#fi
