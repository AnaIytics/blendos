# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Colorful Prompt
PS1='\[\e[0;35m\]\u\[\e[m\]@\[\e[0;36m\]\h\[\e[m\]:\[\e[0;33m\]\w\[\e[m\] \$ '

# Color support for ls and grep
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Aliases
alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cls='clear'

# Safety first
alias rm='rm -iv'
alias cp='cp -iv'
alias mv='mv -iv'

# BlendOS
alias update='sudo akshara update'
alias editcfg='code /system.yaml'
alias clearmem='sync; echo 3 | sudo tee /proc/sys/vm/drop_caches'

# Quick navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git shortcuts
alias gs='git status'
alias gl='git log --oneline --graph --decorate'
alias gp='git pull'
alias gc='git commit -v'
alias lgit='lazygit'

# Bash Completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# Syntax Highlighting
if [ -f /usr/share/doc/bash/syntax-highlighting/bash-syntax-highlighting.bash ]; then
    source /usr/share/doc/bash/syntax-highlighting/bash-syntax-highlighting.bash
fi

# History Settings
HISTSIZE=5000
HISTFILESIZE=10000
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Cool System Info on new terminal
if command -v fastfetch >/dev/null 2>&1; then
    fastfetch --logo arch
fi
