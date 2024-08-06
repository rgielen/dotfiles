[ -x "/opt/homebrew/bin/brew" ] && eval "$(/opt/homebrew/bin/brew shellenv)"

export SHELL=$(which zsh)

export CURL_SSL_BACKEND="secure-transport"
ulimit -n 65536 -f unlimited

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$(brew --prefix)/share/zsh/site-functions:$FPATH

    autoload -Uz compinit
    compinit
fi

[ -r "${HOME}/dotfiles/rc.d/1-path.bash" ] && source "${HOME}/dotfiles/rc.d/1-path.bash"
[ -r "${HOME}/dotfiles/rc.d/2-exports.bash" ] && source "${HOME}/dotfiles/rc.d/2-exports.bash"
[ -r "${HOME}/dotfiles/rc.d/3-aliases.bash" ] && source "${HOME}/dotfiles/rc.d/3-aliases.bash"
[ -r "${HOME}/dotfiles/rc.d/9-final.bash" ] && source "${HOME}/dotfiles/rc.d/9-final.bash"

[ -x "$(brew --prefix)/bin/starship" ] && eval "$(starship init zsh)"

# https://twitter.com/holly_cummins/status/1540330150205612032
# https://github.com/gbirke/oh-my-zsh-customizations/blob/b6e266078655d7c96846faaa7da7be18ea9e7a05/mkcd.zsh
mcd() {
    mkdir -p "$*"; cd "$*"
}
