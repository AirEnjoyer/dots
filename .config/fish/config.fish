set -gx PATH "$HOME/.local/bin" $PATH
set -gx SDL_VIDEODRIVER x11
set -gx CC clang
set -gx CXX clang++
set -gx CMAKE_GENERATOR Ninja
set -gx XDG_RUNTIME_DIR ~/.XDG_DIR
set -gx EDITOR nvim
set -gx CMAKE_EXPORT_COMPILE_COMMANDS ON


fish_vi_key_bindings

alias lg='lazygit'
alias f='clear; fastfetch'
alias ls='ls -A --color=auto'
alias grep='grep --color=auto'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cmake='cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON'
alias xterm='xterm -bg black -fg white'
alias kbdbrightnessdwn='brightnessctl -d smc::kbd_backlight set 5%-'
alias kbdbrightnessup='brightnessctl -d smc::kbd_backlight set +5%'


function spf
    set -gx SPF_LAST_DIR "$HOME/.local/state/superfile/lastdir"

    command spf $(pwd)

    if test -f "$SPF_LAST_DIR"
        source "$SPF_LAST_DIR"
        rm -f -- "$SPF_LAST_DIR" > /dev/null
    end
end

function run
    if test (count $argv) -eq 0
        echo "Usage: run <program> [args...]"
        return 1
    end
    set app $argv[1]
    set args $argv[2..-1]
    ninja; and ./"$app" $args
end

starship init fish | source
zoxide init fish | source
if not contains "$HOME/.local/bin" $PATH
    set -gx PATH "$HOME/.local/bin" $PATH
end

set -U fish_greeting ""
