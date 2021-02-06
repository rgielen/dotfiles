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

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

alias fuck='sudo $(history -p \!\!)'
alias hgrep="history | grep "
alias myip="ipconfig getifaddr en0"
alias speedtest='curl -o /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias icloud="brctl log --wait --shorten"

alias dcomp='docker-compose'

if [ -f /usr/local/bin/thefuck ]; then
    eval $(thefuck --alias oops)
fi

# JDK
alias jdk8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
alias jdk11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"
alias jdk15="export JAVA_HOME=$(/usr/libexec/java_home -v 15)"
alias mvn8="JAVA_HOME=$(/usr/libexec/java_home -v 1.8) mvn"
alias mvn11="JAVA_HOME=$(/usr/libexec/java_home -v 11) mvn"
alias mvn15="JAVA_HOME=$(/usr/libexec/java_home -v 15) mvn"

# K8s
alias kc=kubectl
complete -F __start_kubectl kc
alias kx=kubectx
complete -F _kube_contexts kx
alias kn=kubens
complete -F _kube_namespaces kn

# Virsh
alias nucsh="virsh -c qemu+ssh://nuc01.rgielen.de/system?socket=/var/run/libvirt/libvirt-sock"
