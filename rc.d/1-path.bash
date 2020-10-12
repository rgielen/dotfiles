# Homebrew sbin
if [ -d /usr/local/sbin ]; then
    export PATH=/usr/local/sbin:$PATH
fi

# Fabric8
if [ -d $HOME/.fabric8/bin ]; then
    export PATH=$PATH:$HOME/.fabric8/bin
fi

# Groovy
if [ -d /usr/local/opt/groovy/libexec ]; then
    export GROOVY_HOME=/usr/local/opt/groovy/libexec
fi

# Visual Studio Code
if [ -d "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" ]; then
    export PATH=$PATH:"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
fi

# JPM Package Manager (Liferay blade)
if [ -d $HOME/Library/PackageManager/bin ]; then
    export PATH=$PATH:$HOME/Library/PackageManager/bin
fi

# Go
export GOPATH=~/DevHome/go
[ ! -d "$GOPATH" ] && mkdir "$GOPATH"
export PATH=$PATH:$HOME/bin:${GOPATH//://bin:}/bin

# Google Cloud SDK
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then source "$HOME/google-cloud-sdk/path.bash.inc"; fi
# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then source "$HOME/google-cloud-sdk/completion.bash.inc"; fi

# Krew
if [ -d $HOME/.krew/bin ]; then
    export PATH=$PATH:$HOME/.krew/bin
fi
