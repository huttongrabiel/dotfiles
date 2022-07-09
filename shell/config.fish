if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim="nvim"
alias gs='git status'
alias gap="git add -p"
alias gd="git diff"

alias uppityup="sudo apt update && sudo apt upgrade"

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

function fish_greeting
    echo
    set_color cyan
    echo "Welcome to the dark side. blub, blub, blub..."

    set_color red
    echo "
    "

    set_color yellow
    echo "
    "

end

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color blue
	echo -n (hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '| '
	set_color normal
end

# starship init fish | source
