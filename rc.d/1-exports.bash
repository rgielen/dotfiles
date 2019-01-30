# MacPorts Path addition
if [ -d /opt/local/sbin ]; then
    export PATH="/opt/local/sbin:$PATH"
fi
if [ -d /opt/local/bin ]; then
    export PATH="/opt/local/bin:$PATH"
fi

if [ -d $HOME/.fabric8/bin ]; then
    export PATH=$PATH:$HOME/.fabric8/bin
fi
if [ -d /usr/local/opt/groovy/libexec ]; then
    export GROOVY_HOME=/usr/local/opt/groovy/libexec
fi
if [ -d "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" ]; then
    export PATH=$PATH:"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
fi
if [ -d $HOME/Library/PackageManager/bin ]; then
    export PATH=$PATH:$HOME/Library/PackageManager/bin
fi

# if [ -d /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/ ]; then
#     export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/
# fi

export GOPATH=~/DevHome/go
export PATH=$PATH:$HOME/bin:${GOPATH//://bin:}/bin

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LC_CTYPE=en_US.UTF-8
export LANG="en_US"

# Java Environment
export MAVEN_OPTS="-Xms512M -Xmx2048M"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Make ´vim the default editor
if [ -f /opt/local/bin/subl ]
then
    export EDITOR='subl -w'
else
    export EDITOR="vim"
fi

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
# export HISTCONTROL=ignoredups

# DISABLED - Make some commands not show up in history
# export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

# Highlight matches for GREP
export GREP_OPTIONS='--color=auto'

# Colorful LS
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
