#
# ~/.bashrc
#


export PATH="$HOME/scripts:$PATH"

export CMAKE_GENERATOR=Ninja


export HYPRSHOT_DIR="~/Screenshots"
eval "$(starship init bash)"

alias comp="clang main.c"
alias run="./a.out"
alias comprun="clang main.c && ./a.out"

alias c="clang main.c && ./a.out"


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias f='clear &&fastfetch'
alias bat='batcat'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(zoxide init bash)"

