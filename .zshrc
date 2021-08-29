[ -x "/opt/homebrew/bin/brew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

[ -r "${HOME}/dotfiles/rc.d/1-path.bash" ] && source "${HOME}/dotfiles/rc.d/1-path.bash"
[ -r "${HOME}/dotfiles/rc.d/2-exports.bash" ] && source "${HOME}/dotfiles/rc.d/2-exports.bash"

[ -x "$(brew --prefix)/bin/starship" ] && eval "$(starship init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
# [[ -s "/Users/rene/.gvm/bin/gvm-init.sh" ]] && source "/Users/rene/.gvm/bin/gvm-init.sh"
