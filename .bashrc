#
# ~/.bashrc
#

export HYPRSHOT_DIR="~/Screenshots"
eval "$(starship init bash)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias f='clear &&fastfetch'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
