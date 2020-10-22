# Make sure we are running interactively
case $- in
    *i*) ;;
      *) return;;
esac

# History options
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# Disable history file for less
LESSHISTFILE="-"
export LESSHISTFILE

# Misc options
shopt -s checkwinsize
shopt -s globstar

# Append / to the end of symlinked directories
bind 'set mark-symlinked-directories on'

# Change so C-w deletes upto the first found slash when working with paths
stty werase undef
bind '\C-w:unix-filename-rubout'

# Enable programmable bash completion
if ! shopt -oq posix;
then
    if [ -f /usr/share/bash-completion/bash_completion ];
    then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ];
    then
        . /etc/bash_completion
    fi
fi

# Sources aliases
if [ -f "$HOME/.bash_aliases" ];
then
    . "$HOME/.bash_aliases"
fi

# Source the devkitPro environment variables
if [ -f "/etc/profile.d/devkit-env.sh" ];
then
    . "/etc/profile.d/devkit-env.sh"
fi

# Starship prompt
# @Note: Make sure this is at the end of the file
eval "$(starship init bash)"
