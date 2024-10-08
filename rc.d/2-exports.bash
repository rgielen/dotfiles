# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LC_CTYPE=en_US.UTF-8
export LANG="en_US"

# execute only if SHELL_TYPE variable is not set
if [ -z "$SHELL_TYPE" ] ; then
    export SHELL_TYPE=$(basename $SHELL)
fi

# Java Environment
export MAVEN_OPTS="-Xms512M -Xmx2048M"
if [ -x /usr/libexec/java_home ]
then
    export JAVA_HOME=$(/usr/libexec/java_home -v 21)
else
    export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which javac))))
fi

if command -v mvnd &> /dev/null && [ "${SHELL_TYPE}" = "bash" ]; then
    source <(mvnd --completion bash)
fi

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

# Colorful LS
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# Starship
export STARSHIP_CONFIG=~/dotfiles/starship/starship.toml
