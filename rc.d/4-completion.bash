if type brew &>/dev/null; then
  HOMEBREW_PREFIX=$(brew --prefix)

  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
      source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
  	for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
    	[[ -r "$COMPLETION" ]] && source "$COMPLETION"
    done
  fi
	
  # GCloud SDK @ Homebrew - brew cask install google-cloud-sdk
  if [ -f "$HOMEBREW_PREFIX"/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc ]; then
    . "$HOMEBREW_PREFIX"/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
  fi
fi

# Add kubectl completion, not needed when usding brew completion
#if [ -x "$(command -v kubectl)" ]; then
#    source <(kubectl completion bash)
#fi
