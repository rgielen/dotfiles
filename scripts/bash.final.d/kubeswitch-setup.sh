if command -v direnv &> /dev/null; then
    eval "$(direnv hook zsh)"
fi

if command -v switcher &> /dev/null; then 
    source <(switcher init bash)
    alias s=switch
    complete -o default -F __start_switcher switch
    complete -o default -F __start_switcher s
fi
