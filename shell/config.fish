if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.emacs.d/doomemacs/bin $PATH

alias vim="nvim"

alias gs='git status'
alias gap="git add -p"
alias gd="git diff"
alias gfm="git diff --no-color -U0 | clang-format-diff -p1 -i"
alias cat="bat"
alias ll="exa -l"
alias uppityup="sudo apt update && sudo apt upgrade && sudo apt autoremove"
alias pbcopy="xsel --clipboard --input"

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

set -U fish_greeting ""

function fish_prompt
	set_color white
	echo -n "tinytim"
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color green
		echo -n (basename $PWD)
	end
	set_color c842ed
	printf '%s ' (__fish_git_prompt)
	set_color normal
end

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

# starship init fish | source
