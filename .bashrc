# This file is for any personal aliases a user wishes to add to their environment.
# This file, unlike ~/.bash_profile, will be sourced every time a new bash shell is started. 
# Therefore do not append or prepend to any environment variables (such as PATH) in this file.
# Instead do that in ~/.bash_profile

# Have the prompt default to be the pwd
# Must be here in the .bashrc since non-interative shells force unset PS1
# export PS1="`pwd`$"

function mcd() {
	mkdir -p "$@"	#make parents directories if needed
	cd "$@"
}
export -f mcd

#export -f pbin

function findall(){
	find . -name "$@"
}
export -f findall

export CLICOLOR=:1

alias grep='grep -Hn --color'
alias la='ls -A'
alias l='ls -lAh'
alias so='source'
alias vl='vim -c "normal '\''0"'    # vl to open last file opened in vim.
alias ecf='ssh -A wangze1@remote.ecf.utoronto.ca -X'
alias eecg='ssh -A wangze1@ug139.eecg.utoronto.ca -X'
#ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
pwd

function cd(){
	builtin cd "$@" && ls
}
