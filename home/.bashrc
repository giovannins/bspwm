# .bashrc

PS1='\[\033[38;5;4m\]\w\[$(tput sgr0)\] > \[$(tput sgr0)\]'

alias ls='ls --color=auto'
alias ll='ls -lha'
alias l='ls -lh'
alias b='vim ~/.config/bspwm/bspwmrc'
alias sx='vim ~/.config/sxhkd/sxhkdrc'
alias p='vim ~/.config/polybar/config.ini'
[[ $- != *i* ]] && return
