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
alias hn='hostname'
alias vl='vim -c "normal '\''0"'    # vl to open last file opened in vim.
alias ecf='ssh -A wangze1@remote.ecf.utoronto.ca -X'
alias cs='ssh -A zexuan@cs.toronto.edu -X'
alias eecg='ssh -A wangze1@ug146.eecg.utoronto.ca -X'
#ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
pwd

function cd(){
	builtin cd "$@" && ls
}

PS1='\[\e[1;34m\]\u\[\e[0;39m\]@\[\e[1;32m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]$(__git_ps1_yelp " \[\e[1;36m\](%s)\[\e[0;39m\] ")\$ '
__git_ps1_yelp () {
    local g="$(git rev-parse --git-dir 2>/dev/null)"
    if [ -n "$g" ]; then
        local r
        local b
        if [ -d "$g/../.dotest" ]; then
            r="|AM/REBASE"
            b="$(git symbolic-ref HEAD 2>/dev/null)"
        elif [ -f "$g/.dotest-merge/interactive" ]; then
            r="|REBASE-i"
            b="$(cat $g/.dotest-merge/head-name)"
        elif [ -d "$g/.dotest-merge" ]; then
            r="|REBASE-m"
            b="$(cat $g/.dotest-merge/head-name)"
        elif [ -f "$g/MERGE_HEAD" ]; then
            r="|MERGING"
            b="$(git symbolic-ref HEAD 2>/dev/null)"
        else
            if [ -f $g/BISECT_LOG ]; then
                r="|BISECTING"
            fi
            if ! b="$(git symbolic-ref HEAD 2>/dev/null)"; then
                b="$(cut -c1-7 $g/HEAD)..."
            fi
        fi

        if [ -n "$1" ]; then
            printf "$1" "${b##refs/heads/}$r"
        else
            printf " (%s)" "${b##refs/heads/}$r"
        fi
    fi
}
