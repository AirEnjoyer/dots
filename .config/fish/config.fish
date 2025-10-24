set -gx PATH "$HOME/scripts" $PATH
set -gx SDL_VIDEODRIVER wayland
set -gx CC clang
set -gx CXX clang++
set -gx CMAKE_GENERATOR Ninja

fish_vi_key_bindings

alias lg='lazygit'
alias f='clear; fastfetch'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

function spf
    set -gx SPF_LAST_DIR "$HOME/.local/state/superfile/lastdir"

    command spf $(pwd)

    if test -f "$SPF_LAST_DIR"
        source "$SPF_LAST_DIR"
        rm -f -- "$SPF_LAST_DIR" > /dev/null
    end
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    set cwd ""
    yazi $argv --cwd-file="$tmp"
    if test -f "$tmp"
        set cwd (cat "$tmp")
        if test -n "$cwd" -a "$cwd" != "$PWD"
            cd "$cwd"
        end
        rm -f "$tmp"
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
