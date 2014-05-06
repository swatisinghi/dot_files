# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Don't put duplicate command in the history
HISTCONTROL=ignoredups

# Increase the history length
HISTFILESIZE=2000

export PS1='\[\033[01;32m\]\h\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 "(%s)") \[\033[01;34m\]$\[\033[00m\] '

#  Color output of the following commands
if [ -x /usr/bin/dircolors ]; then
    alias ls='ls --color=auto'
    alias lt='ls -lrt --color=auto'
    alias grep='grep --color=auto'
fi

# User specific aliases and functions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

