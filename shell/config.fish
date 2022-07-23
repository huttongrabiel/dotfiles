if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $HOME/.cargo/bin $PATH

alias vim="nvim"

alias gs='git status'
alias gap="git add -p"
alias gd="git diff"

alias ll="exa -l"

alias uppityup="sudo apt update && sudo apt upgrade"

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

function fish_greeting
    echo
    set_color cyan
    echo "Welcome to the dark side. blub, blub, blub..."

    set_color red
    echo "
[urgent] Prepare for Math 125"

    set_color yellow
    echo "
[hurryup] Complete Husky Guide Checklist
[hurryup] Set up auto payments
    "

end

function fish_prompt
	set_color brblack
	echo -n "["(date "+%H:%M")"] "
	set_color cyan
	echo -n "tinytim"
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
