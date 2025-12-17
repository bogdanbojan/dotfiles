cd ~

if status is-interactive
    and not set -q TMUX
    exec tmux
end

# This enables compatibility with vim-fugitive.
alias yadmn='yadm enter nvim .'

function cls
    clear
    commandline -f repaint
end

bind \e\cl cls
bind \co cls

set fish_greeting

# Created by `pipx` on 2025-08-14 15:23:56
set PATH $PATH /home/bbojan/.local/bin
set -x GOPATH $HOME/go
set -x PATH $PATH $HOME/.cargo/bin
set -x PATH $PATH $GOPATH/bin

# Defaults to dev. Can be changed to int/prod.
# This is for the integration tests.
if not set -q ENV
    set -g ENV dev
end
if test "$ENV" = "dev"
    set -gx BASE_URL "<REPLACE_ME>"
    set -gx AWS_PROFILE "<REPLACE_ME>"
else if test "$ENV" = "staging"
    set -gx BASE_URL "<REPLACE_ME>"
    set -gx AWS_PROFILE "<REPLACE_ME>"
end
set -gx TOKEN_URL "<REPLACE_ME>"
set -gx CLIENT_ID "<REPLACE_ME>"
set -gx CLIENT_SECRET "<REPLACE_ME>"
set -gx SCOPE "<REPLACE_ME>"

function set_access_token
    set -l response (curl --request GET \
                                --url "$TOKEN_URL/b2c_1a_signin_oidc_row/oauth2/v2.0/token" \
                                --header 'content-type: application/x-www-form-urlencoded' \
                                --data 'grant_type=client_credentials' \
                                --data "client_id=$CLIENT_ID" \
                                --data "client_secret=$CLIENT_SECRET" \
                                --data "scope=$SCOPE")
    set -gx ACCESS_TOKEN (echo $response | jq -r '.access_token')
end

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

function set_chat_permissions
    sudo mkdir /run/user/1000
    sudo chown bbojan:bbojan /run/user/1000
end

function env_source
    for line in (cat $argv | grep -v '^#')
        set item (string split -m 1 '=' $line)
        set -gx $item[1] $item[2]
        echo "Exported key $item[1]"
    end
end

function todo
    touch "$(date +%Y-%m-%d).txt"
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
