# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias g="git"
alias h="history"
alias l="ls -l"
alias la="ls -lahT"
alias ls="command ls -G"

# TODO: Investigate https://unix.stackexchange.com/questions/4290/aliasing-cd-to-pushd-is-it-a-good-idea
alias dirs="dirs -v"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

alias fuck='sudo $(history -p \!\!)'
alias hgrep="history | grep "
alias myip="ipconfig getifaddr en0"
alias speedtest='curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias icloud="brctl log --wait --shorten"

alias dcomp='docker-compose'

# Highlight matches for GREP
alias grep='grep --color=auto'

if [ -f $HOMEBREW_PREFIX/bin/thefuck ]; then
    eval $(thefuck --alias oops)
fi

# JDK
if [ -x /usr/libexec/java_home ]
then
    alias jdk8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
    alias jdk11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"
    alias jdk16="export JAVA_HOME=$(/usr/libexec/java_home -v 16)"
    alias jdk17="export JAVA_HOME=$(/usr/libexec/java_home -v 17)"
    alias jdk18="export JAVA_HOME=$(/usr/libexec/java_home -v 18)"
    alias mvn8="JAVA_HOME=$(/usr/libexec/java_home -v 1.8) mvn"
    alias mvn11="JAVA_HOME=$(/usr/libexec/java_home -v 11) mvn"
    alias mvn16="JAVA_HOME=$(/usr/libexec/java_home -v 16) mvn"
    alias mvn17="JAVA_HOME=$(/usr/libexec/java_home -v 17) mvn"
    alias mvn18="JAVA_HOME=$(/usr/libexec/java_home -v 18) mvn"
    alias mvnd8="JAVA_HOME=$(/usr/libexec/java_home -v 1.8) mvnd"
    alias mvnd11="JAVA_HOME=$(/usr/libexec/java_home -v 11) mvnd"
    alias mvnd17="JAVA_HOME=$(/usr/libexec/java_home -v 17) mvnd"
    alias mvnd18="JAVA_HOME=$(/usr/libexec/java_home -v 18) mvnd"
fi

# bat integration
if command -v bat &> /dev/null
then
    alias fzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi

# fzf
alias fzq="fzf -q"

# K8s
alias kc=kubectl
alias kx=kubectx
alias kn=kubens

# Virsh
alias nucsh="virsh -c qemu+ssh://nuc01.rgielen.de/system?socket=/var/run/libvirt/libvirt-sock"

# Enable alias autocompletion in case of bash
if ps -p $$ | grep -q bash; then
    complete -F __start_kubectl kc
    complete -F _kube_contexts kx
    complete -F _kube_namespaces kn
fi

[ -f $HOMEBREW_PREFIX/etc/profile.d/autojump.sh ] && source $HOMEBREW_PREFIX/etc/profile.d/autojump.sh

if command -v rg &> /dev/null && command -v fpp &> /dev/null ; then
    function rgf() { rg "$@" | fpp; }
else
    function rgf() { echo "Please install ripgrep and fpp to make this work"; }
fi
