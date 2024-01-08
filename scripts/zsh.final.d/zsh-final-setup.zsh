if command -v direnv &> /dev/null; then
    eval "$(direnv hook bash)"
fi

if command -v mcfly &> /dev/null; then 
    export MCFLY_RESULTS_SORT=LAST_RUN
    eval "$(mcfly init zsh)"
fi

if command -v switcher &> /dev/null; then 
    source <(switcher init zsh)
    alias s=switch
    compdef _switcher switch
    compdef _switcher s
fi
