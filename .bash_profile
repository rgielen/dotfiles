# Load ~/.bash_prompt, ~/.exports, and ~/.aliases
for file in ~/Projects/dotfiles/.{bash_prompt,exports,aliases,custom}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Add tab completion for many more commands (use: brew install bash-completion)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# DISABLED - clear terminal title on ssh exit
# PS1='\[\e]1;\s\$ \W\a\e]2;\u@\h\a\]'"$PS1"
