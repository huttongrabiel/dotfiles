if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.emacs.d/doomemacs/bin $PATH

alias vim="nvim"

alias gs='git status'
alias gap="git add -p"
alias gd="git diff"
alias cat="bat"
alias ll="exa -l"
alias uppityup="sudo apt update && sudo apt upgrade && sudo apt autoremove"

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

set -U fish_greeting ""

function fish_prompt
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
