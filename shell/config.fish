if status is-interactive
    # Commands to run in interactive sessions can go here
end

set PATH $HOME/.cargo/bin $PATH
set PATH $HOME/.emacs.d/doomemacs/bin $PATH
set PATH /usr/local/go/bin $PATH
set PATH $HOME/misc/zig-linux-x86_64-0.12.0-dev.1872+2b5897836 $PATH

alias vim="nvim"

alias gs='git status'
alias gap="git add -p"
alias gd="git diff"
alias gfm="git diff --no-color -U0 | clang-format-diff -p1 -i"
alias cat="bat"
alias ll="exa -l"
alias uppityup="sudo apt update && sudo apt upgrade && sudo apt autoremove"
alias pbcopy="xsel --clipboard --input"
alias sss="sudo systemctl suspend"

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
    set_color white
	echo -n "λ "
	set_color normal
end

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

# starship init fish | source

# opam configuration
source /home/hutton/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/hutton/anaconda3/bin/conda
    eval /home/hutton/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

