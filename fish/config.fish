if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    afetch
end

function penv
    source venv/bin/activate.fish
end

function ls
    exa --icons
end

function la
    exa -al --icons
end

function workspace
    tmux -u new-session -A -s workspace
end

alias vim nvim

set -g theme_color_scheme nord
set -g theme_display_date no
set -g theme_nerd_fonts yes

