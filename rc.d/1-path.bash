[ -x "/opt/homebrew/bin/brew" ] && eval $(/opt/homebrew/bin/brew shellenv)
[ -x "/usr/local/bin/brew" ] && eval $(/usr/local/bin/brew shellenv)
[ -x "/home/linuxbrew/.linuxbrew/bin/brew" ] && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Fabric8
if [ -d $HOME/.fabric8/bin ]; then
    export PATH=$PATH:$HOME/.fabric8/bin
fi

# Groovy
if [ -d $HOMEBREW_PREFIX/opt/groovy/libexec ]; then
    export GROOVY_HOME=$HOMEBREW_PREFIX/opt/groovy/libexec
fi

# Visual Studio Code
if [ -d "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" ]; then
    export PATH=$PATH:"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
fi

# JPM Package Manager (Liferay blade)
if [ -d $HOME/Library/PackageManager/bin ]; then
    export PATH=$PATH:$HOME/Library/PackageManager/bin
fi

# Add $HOME/bin to path
[ -d $HOME/bin ] && export PATH=$PATH:$HOME/bin

# IntelliJ IDEA > 2023.1
if [ -d "/Applications/IntelliJ IDEA.app/Contents/MacOS" ]; then
    export PATH=$PATH:"/Applications/IntelliJ IDEA.app/Contents/MacOS"
fi

# Go
export GOPATH=~/DevHome/go
[ ! -d "$GOPATH" ] && mkdir -p "$GOPATH"
export PATH=$PATH:${GOPATH//://bin:}/bin

# Google Cloud SDK
# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then source "$HOME/google-cloud-sdk/path.bash.inc"; fi
# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then source "$HOME/google-cloud-sdk/completion.bash.inc"; fi

# Krew
if [ -d $HOME/.krew/bin ]; then
    export PATH=$PATH:$HOME/.krew/bin
fi

# Pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi
