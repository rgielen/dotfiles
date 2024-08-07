# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Shortcuts
alias g="git"
alias h="history"
alias l="eza -h"
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

# svn: add all unversioned files
# https://stackoverflow.com/questions/1071857/how-do-i-svn-add-all-unversioned-files-to-svn
alias addall="svn add --force * --auto-props --parents --depth infinity"
alias svnaddall="svn add --force * --auto-props --parents --depth infinity"

alias dcomp='docker-compose'

# Highlight matches for GREP
alias grep='grep --color=auto'

if [ -f $HOMEBREW_PREFIX/bin/thefuck ]; then
    eval $(thefuck --alias oops)
fi

# Midnight Commander Speedup
alias mc="mc --nosubshell"

# PSSH
alias pssh="pssh -OStrictHostKeyChecking=no"
alias psshi="pssh -OStrictHostKeyChecking=no -i"
alias psshh="pssh -OStrictHostKeyChecking=no -h"
alias psshih="pssh -OStrictHostKeyChecking=no -i -h"

# JDK
if [ -x /usr/libexec/java_home ]
then
    alias jdk8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
    alias jdk11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"
    alias jdk17="export JAVA_HOME=$(/usr/libexec/java_home -v 17)"
    alias jdk21="export JAVA_HOME=$(/usr/libexec/java_home -v 21)"
    alias jdk22="export JAVA_HOME=$(/usr/libexec/java_home -v 22)"
    alias mvn8="JAVA_HOME=$(/usr/libexec/java_home -v 1.8) mvn"
    alias mvn11="JAVA_HOME=$(/usr/libexec/java_home -v 11) mvn"
    alias mvn17="JAVA_HOME=$(/usr/libexec/java_home -v 17) mvn"
    alias mvn21="JAVA_HOME=$(/usr/libexec/java_home -v 21) mvn"
    alias mvn22="JAVA_HOME=$(/usr/libexec/java_home -v 22) mvn"
    alias mvnd8="JAVA_HOME=$(/usr/libexec/java_home -v 1.8) mvnd"
    alias mvnd11="JAVA_HOME=$(/usr/libexec/java_home -v 11) mvnd"
    alias mvnd17="JAVA_HOME=$(/usr/libexec/java_home -v 17) mvnd"
    alias mvnd21="JAVA_HOME=$(/usr/libexec/java_home -v 21) mvnd"
    alias mvnd22="JAVA_HOME=$(/usr/libexec/java_home -v 22) mvnd"
fi

export GRAALVM_HOME=$(find /Library/Java/JavaVirtualMachines -name "graalvm-21.jdk*")
if [ -d $GRAALVM_HOME ]; then
    alias gjdk="export JAVA_HOME=$GRAALVM_HOME/Contents/Home"
    alias gmvn="JAVA_HOME=$GRAALVM_HOME/Contents/Home mvn"
    alias gmvnd="JAVA_HOME=$GRAALVM_HOME/Contents/Home mvnd"
fi

# IntelliJ IDEA > 2023.1
if [ -d "/Applications/IntelliJ IDEA.app/Contents/MacOS" ]; then
    alias idea="open -na \"IntelliJ IDEA.app\" --args"
elif [ -d "${HOME}/Applications/IntelliJ IDEA Ultimate.app" ]; then
    alias idea="open -na \"IntelliJ IDEA Ultimate.app\" --args"
fi

if [ -d "${HOME}/Applications/IntelliJ IDEA Community Edition.app" ]; then
    alias ideace="open -na \"IntelliJ IDEA Community Edition.app\" --args"
fi

if [ -d "${HOME}/Applications/IntelliJ IDEA Ultimate.app" ]; then
    alias ideaul="open -na \"IntelliJ IDEA Ultimate.app\" --args"
fi


# bat integration
if command -v bat &> /dev/null
then
    if command -v fzf &> /dev/null; then
        alias fzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
    fi
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi

# fzf
if command -v fzf &> /dev/null; then
    alias fzq="fzf -q"
fi

# Terraform
if command -v terraform &> /dev/null
then
    alias tfa="terraform apply"
    alias tfaa="terraform apply -auto-approve"
fi
if command -v tofu &> /dev/null
then
    alias terraform="tofu"
    alias tfa="tofu apply"
    alias tfaa="tofu apply -auto-approve"
fi



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
