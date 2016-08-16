# Load ~/.bash_prompt, ~/.exports, and ~/.aliases
for file in ~/dotfiles/.{bash_prompt,exports,aliases,custom}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Add tab completion for many more commands in MacPorts
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

# DISABLED - clear terminal title on ssh exit
# PS1='\[\e]1;\s\$ \W\a\e]2;\u@\h\a\]'"$PS1"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "~/.gvm/bin/gvm-init.sh" ]] && source "~/.gvm/bin/gvm-init.sh"

