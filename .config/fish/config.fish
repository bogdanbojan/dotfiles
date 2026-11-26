cd ~
eval (/opt/homebrew/bin/brew shellenv)
set -gx PATH $PATH $HOME/.local/bin $HOME/.cargo/bin $GOPATH/bin

# Required by gpg-agent so pinentry can fall back to the terminal
# when no GUI is available (SSH sessions, agent forwarding).
set -gx GPG_TTY (tty)

if status is-interactive
    and not set -q TMUX
    exec tmux
end

alias n='nvim'
# This enables compatibility with vim-fugitive.
alias yadmn='yadm enter nvim .'

function cls
    clear
    commandline -f repaint
end

bind \e\cl cls
bind \co cls

set fish_greeting

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color blue
	echo -n Funes
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
	end

	set_color green
	printf '%s ' (__fish_git_prompt)
    # set_color red
    set_color green
	echo -n '| '
	set_color normal
end

function fix_audio
    sudo rm /Library/Preferences/Audio/com.apple.audio.DeviceSettings.plist
    sudo rm /Library/Preferences/Audio/com.apple.audio.SystemSettings.plist
    sudo killall coreaudiod
end

function env_source
    for line in (cat $argv | grep -v '^#')
        set item (string split -m 1 '=' $line)
        set -gx $item[1] $item[2]
        echo "Exported key $item[1]"
    end
end

function todo
    set -l dir ~/todo
    mkdir -p $dir
    set -l file $dir/(date +%F).txt
    touch $file
    echo $file
end

# List this week's (Mon-Sun) daily todo files, e.g. `nvim (todo_week)`.
function todo_week
    set -l back (math (date +%u) - 1)
    set -l monday (date -v-{$back}d +%F)
    for i in (seq 0 6)
        set -l file ~/todo/(date -j -v+{$i}d -f %F $monday +%F).txt
        test -f $file; and echo $file
    end
end

# Fish git prompt
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate ''

set __fish_git_prompt_showupstream 'none'
set -g fish_prompt_pwd_dir_length 3

# colored man output
# from http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
setenv LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
setenv LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
setenv LESS_TERMCAP_me \e'[0m'           # end mode
setenv LESS_TERMCAP_se \e'[0m'           # end standout-mode
setenv LESS_TERMCAP_so \e'[38;5;246m'    # begin standout-mode - info box
setenv LESS_TERMCAP_ue \e'[0m'           # end underline
setenv LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

setenv FZF_DEFAULT_COMMAND 'fd --type file --follow'
setenv FZF_CTRL_T_COMMAND 'fd --type file --follow'
setenv FZF_DEFAULT_OPTS '--height 20%'

zoxide init fish --cmd cd | source
