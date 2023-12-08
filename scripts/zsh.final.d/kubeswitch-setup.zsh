if command -v direnv &> /dev/null; then
    eval "$(direnv hook bash)"
fi

if command -v switcher &> /dev/null; then 
    source <(switcher init zsh)
    alias s=switch
    compdef _switcher switch
    compdef _switcher s
fi
