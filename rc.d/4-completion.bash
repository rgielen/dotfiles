if [ $(uname) = "Darwin" ] && command -v brew &>/dev/null ; then
  BREW_PREFIX=$(brew --prefix)

  if [ -f "$BREW_PREFIX"/etc/bash_completion ]; then
    . "$BREW_PREFIX"/etc/bash_completion
  fi

 # homebrew/versions/bash-completion2 (required for projects.completion.bash) is installed to this path
  if [ "${BASH_VERSINFO}" -ge 4 ] && [ -f "$BREW_PREFIX"/share/bash-completion/bash_completion ]; then
    . "$BREW_PREFIX"/share/bash-completion/bash_completion
  fi

  # GCloud SDK @ Homebrew - brew cask install google-cloud-sdk
  if [ -f "$BREW_PREFIX"/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc ]; then
    . "$BREW_PREFIX"/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
  fi
fi

# Add kubectl completion, not needed when usding brew completion
#if [ -x "$(command -v kubectl)" ]; then
#    source <(kubectl completion bash)
#fi

if [ -x "$(command -v kubectl)" ]; then
    kubectl argo rollouts version &> /dev/null && source <(kubectl argo rollouts completion bash)
fi

if [ -f "$BREW_PREFIX"/bin/limactl ]; then
  source <("$BREW_PREFIX"/bin/limactl completion bash)
fi

if command -v chezmoi &> /dev/null; then
    source <(chezmoi completion ${SHELL_TYPE})
fi
