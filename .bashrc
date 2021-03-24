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

function findall(){
	find . -name "$@"
}
export -f findall

function rgrep(){
	grep -r "$@" *
}
export -f rgrep

export CLICOLOR=:1
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# History control
export HISTSIZE=20000
HISTFILESIZE=30000
HISTCONTROL=ignoredups:erasedups  
shopt -s histappend
# After each command, append to the history file and reread it
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# Add an "alert" alias for long running commands.  Use like so:
# sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# Change title of the bash tab. E.g title src_old
function title {
    echo -ne "\033]0;"$*"\007"
}

alias gh='hg'
alias grep='grep -Hn --color'
alias sl='ls'
alias la='ls -Alh'
alias l='ls -lAh'
alias so='source'
alias hn='hostname'
alias capstone='cd ~/Dropbox/4B_semester/capstone'
alias ece419='cd ~/Dropbox/4B_semester/ECE419/'
alias ece568='cd ~/Dropbox/4B_semester/ece568/'
alias thesis_local='cd ~/Dropbox/4B_semester/thesis'
alias thesis='cd /Volumes/FAT32_FORMA/thesis_dataset_manual_labeling/thesis/'
alias v='ssh zexuan@zexuan-linux.kir.corp.google.com'
alias vc='ssh zexuan@zexuan.mtv.corp.google.com'
alias e="ssh-tmux zexuan@zexuan-linux.kir.corp.google.com endor"
alias ec="ssh-tmux zexuan@zexuan.mtv.corp.google.com endor"
alias p="ssh-tmux zexuan@zexuan-linux.kir.corp.google.com perf"
alias pc="ssh-tmux zexuan@zexuan.mtv.corp.google.com perf"
alias p2="ssh-tmux zexuan@zexuan-linux.kir.corp.google.com perf2"
alias t="ssh-tmux zexuan@zexuan-linux.kir.corp.google.com test"
alias tc="ssh-tmux zexuan@zexuan.mtv.corp.google.com test"
alias vl='vim -c "normal '\''0"'    # vl to open last file opened in vim.
alias ecf='ssh -A wangze1@remote.ecf.utoronto.ca'
alias cs='ssh -A zexuan@cs.toronto.edu'
alias cdf='ssh -A c4wangze@cdf.utoronto.ca'
alias pi='ssh tabletenniser@tabletenniser.ddns.net'
# alias pi='ssh tabletenniser@98.232.17.245'
alias rc='source ~/.bashrc'
alias sec_pull='cd ~/Desktop/sec_new && git pull && openssl des3 -d -in ~/Desktop/sec_new/sec.enc -out ~/Desktop/sec_new/sec.txt && cd -'
alias sec='vim ~/Desktop/sec_new/sec.txt'
alias sec_push='openssl des3 -in ~/Desktop/sec_new/sec.txt -out ~/Desktop/sec_new/sec.enc && cd ~/Desktop/sec_new && git commit -m Update_password -a && git push && cd -'
alias sublime='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias ck='ps aux | sort -nrk 3,3 | head -n 5'

export VISUAL=vim
export EDITOR="$VISUAL"
export HISTTIMEFORMAT='%F %T '
# ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
pwd

# function cd(){
# 	builtin cd "$@" && ls
# }

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


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
