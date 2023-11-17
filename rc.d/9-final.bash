if ps -p $$ | grep -q bash; then
    # Include snippets in rc.d
    for file in $HOME/dotfiles/scripts/bash.final.d/*; do
        [ -r "$file" ] && source "$file"
    done
    unset file
fi

if ps -p $$ | grep -q zsh; then
    # Include snippets in rc.d
    for file in $HOME/dotfiles/scripts/zsh.final.d/*; do
        [ -r "$file" ] && source "$file"
    done
    unset file
fi

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "~/.gvm/bin/gvm-init.sh" ]] && source "~/.gvm/bin/gvm-init.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
