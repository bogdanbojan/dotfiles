if status is-interactive
    and not set -q TMUX
    exec tmux
end


function cls
    clear
    commandline -f repaint
end


bind \e\cl cls

set fish_greeting
