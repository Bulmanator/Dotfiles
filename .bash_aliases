# Alias sudo to have a space at the end so it can be used with other aliases
alias sudo='sudo '

# Auto remove any packages that may be left over as dependencies
alias autorem='pacman -Rsn $(pacman -Qdtq)'

# Enable basic options for colour etc.
alias ls='ls -CFlvh --color=always --group-directories-first'
alias grep='grep --color=always'
alias less='less -R'

# Neovim instead of vim
alias vim='nvim'

# Out of habit
alias quit='exit'
