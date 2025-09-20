export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh



export PATH="$HOME/scripts:$PATH"

export CMAKE_GENERATOR=Ninja

alias makec='cp ~/CMakeLists.txt ./ && nvim CMakeLists.txt'

export HYPRSHOT_DIR="~/Screenshots"
eval "$(starship init zsh)"

run() {
    if [ -z "$1" ]; then
        echo "Usage: run <program> [args...]"
        return 1
    fi

    local app=$1
    shift
    ninja && ./"$app" "$@"
}



[[ $- != *i* ]] && return

alias f='clear &&fastfetch'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

eval "$(zoxide init zsh)"
