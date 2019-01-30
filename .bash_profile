# Load ~/.bash_prompt
[ -r "~/dotfiles/.bash_prompt" ] && source "~/dotfiles/.bash_prompt"

# Include snippets in rc.d
for file in ~/dotfiles/rc.d/*.bash; do
	[ -r "$file" ] && source "$file"
done
unset file
