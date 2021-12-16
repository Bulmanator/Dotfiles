# Make sure we are running interactively
[[ $- != *i* ]] && return

# Source aliases
[[ -f "$HOME/.bash_aliases" ]] && . "$HOME/.bash_aliases"

# Source devkitPro env if available
[[ -f "/etc/profile.d/devkit-env.sh" ]] && . "/etc/profile.d/devkit-env.sh"

# Enable programmable bash completion
if ! shopt -oq posix;
then
    if [ -f "/usr/share/bash-completion/bash_completion" ];
    then
        . "/usr/share/bash-completion/bash_completion"
    elif [ -f "/etc/bash_completion" ];
    then
        . "/etc/bash_completion"
    fi
fi

# Misc options
shopt -s checkwinsize
shopt -s globstar

# History options
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# Disable history file for less
export LESSHISTFILE="-"

# Use neovim as editor
export EDITOR=nvim

# Required for passphrase input with gpg
export GPG_TTY=$(tty)

# Append / to the end of symlinked directories
bind 'set mark-symlinked-directories on'

# Make C-w only delete up to first / in path
stty werase undef
bind '\C-w:unix-filename-rubout'

# If available setup execute starship prompt, otherwise default to a basic PS1
export PS1="[\033[01;92m\u@\h\033[00m] :: \033[00;34m\w \033[01;36m> \033[0;0m"
[[ $(command -v "starship") ]] && eval "$(starship init bash)"
