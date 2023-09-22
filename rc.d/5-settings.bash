# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Eanble completion for aliases
shopt -s progcomp_alias

# Enable autocd
shopt -s autocd

# McFly https://github.com/cantino/mcfly
if command -v mcfly &> /dev/null; then 
    export MCFLY_RESULTS_SORT=LAST_RUN
    eval "$(mcfly init bash)"
fi

ulimit -f unlimited
