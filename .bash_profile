# Load ~/.bash_prompt (Script deleted from git 2021-08-30)
[ -r "~/dotfiles/.bash_prompt" ] && source "~/dotfiles/.bash_prompt"

# Include snippets in rc.d
for file in ~/dotfiles/rc.d/*.bash; do
	[ -r "$file" ] && source "$file"
done
unset file

export CURL_SSL_BACKEND="secure-transport"
ulimit -n 65536 200000

# [ -x "$(brew --prefix)/bin/starship" ] && eval "$(starship init bash)"
command -v starship &> /dev/null && eval "$(starship init bash)"
