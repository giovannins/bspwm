# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lha'
alias l='ls -lh'
alias b='vim ~/.config/bspwm/bspwmrc'
alias sx='vim ~/.config/sxhkd/sxhkdrc'
PS1='[\u@\h \W]\$ '
