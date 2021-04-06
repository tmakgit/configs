# .bashrc

umask 0022
PS1='\[\e[1;33m\]\h:\[\e[1;34m\][\w]\[\e[1;33m\]\$\[\e[0m\] '

export LANG=en_US.utf8

# editor
EDITOR="vim"
PAGER="vim"

export PATH="$PATH:$HOME/bin:$HOME/.local/bin:/opt/cisco/anyconnect/bin"

# git
export configs="/home/tmak/git/configs"
export py="/home/tmak/git/python/src"

# aliases
alias ls='ls -F --color=auto'
alias la='ls -la'
alias ll='ls -l'
alias roku='roku 172.16.0.5'
alias vim='vim'
alias tailf='tail -f'

# tmux
alias tmux='tmux -2'
