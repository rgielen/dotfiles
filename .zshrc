[ -x "/opt/homebrew/bin/brew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

export SHELL=$(which zsh)

export CURL_SSL_BACKEND="secure-transport"

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi

[ -r "${HOME}/dotfiles/rc.d/1-path.bash" ] && source "${HOME}/dotfiles/rc.d/1-path.bash"
[ -r "${HOME}/dotfiles/rc.d/2-exports.bash" ] && source "${HOME}/dotfiles/rc.d/2-exports.bash"
[ -r "${HOME}/dotfiles/rc.d/3-aliases.bash" ] && source "${HOME}/dotfiles/rc.d/3-aliases.bash"
[ -r "${HOME}/dotfiles/rc.d/9-final.bash" ] && source "${HOME}/dotfiles/rc.d/9-final.bash"

# [ -x "$(brew --prefix)/bin/starship" ] && eval "$(starship init zsh)"
