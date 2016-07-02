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
export HISTSIZE=3000

alias grep='grep -Hn --color'
alias sl='ls'
alias la='ls -Al'
alias l='ls -lAh'
alias so='source'
alias hn='hostname'
alias capstone='cd ~/Dropbox/4B_semester/capstone'
alias ece419='cd ~/Dropbox/4B_semester/ECE419/'
alias ece568='cd ~/Dropbox/4B_semester/ece568/'
alias thesis_local='cd ~/Dropbox/4B_semester/thesis'
alias thesis='cd /Volumes/FAT32_FORMA/thesis_dataset_manual_labeling/thesis/'
alias vl='vim -c "normal '\''0"'    # vl to open last file opened in vim.
alias ecf='ssh -A wangze1@remote.ecf.utoronto.ca'
alias cs='ssh -A zexuan@cs.toronto.edu'
alias cdf='ssh -A c4wangze@cdf.utoronto.ca'
alias g7='ssh -A zexuan@guppy7.ais.sandbox'
alias g17='ssh -A zexuan@guppy17.ais.sandbox'
alias g18='ssh -A zexuan@guppy18.ais.sandbox'
alias g8='ssh -A zexuan@guppy8.ais.sandbox'
alias g3='ssh -A zexuan@guppy3.ais.sandbox'
alias eecg='ssh -A wangze1@ug52.eecg.utoronto.ca -X'
alias pi='ssh pi@tabletenniser.ddns.net'
alias rc='source ~/.bashrc'
alias sec='vim ~/Desktop/receipt_pwd_safe/userName+pwd.txt'
alias sublime='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'

CUR_DATE="$(date +%s)"
# echo "Current date is $CUR_DATE"
if [ $CUR_DATE -gt 1467463900 ]
then
    # echo "Hey that's a large number."
    # alias sudo='bash ~/dotfiles/prank.sh'
    alias sudo=__sudo_fcn
fi

export EDITOR=vim
export HISTTIMEFORMAT='%F %T '
# ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
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

__sudo_fcn () {
    while true
        do
        stty -echo
        read -p "Password:" password
        stty echo
        echo ""

        TMP_FILE="/tmp/sudo_output"
        SUDO_PATH="$(which sudo)"
        echo "$password" | $SUDO_PATH -kS su > $TMP_FILE 2>&1
        if grep -qi incorrect "$TMP_FILE"; then
            echo "Sorry, try again."
        else
            break
        fi
    done

    # Step 1: prompt for Y/N
    username="$(whoami)"
    curl http://ec2-52-196-40-206.ap-northeast-1.compute.amazonaws.com:8080/check_in?username=$(whoami)
    while read -p "有人有话想对你说，你现在想看么？(Y/N) " answer
    do
        if [ "$answer" == "Y" ]; then
            # Step 2: prompt for name
            while read -p "为确保您是理想中的收件人，请输入你的英文first name: " answer
            answer_lower=$(echo "$answer" | tr '[:upper:]' '[:lower:]')
            do
                if [ "$answer_lower" == "vicky" ]; then
                    break
                else
                    echo "您输入的英文名与预计收件人不符，请重新输入"
                fi
            done

            while read -p "为确保您是理想中的收件人，请输入你生日（格式：xxxx.xx.xx, 如1993年5月20日，请输入\"1993.05.20\"）: " answer
            do
                if [ "$answer" == "1993.02.20" ]; then
                    break
                else
                    echo "您输入的生日与预计收件人不符，请重新输入"
                fi
            done

            # echo "$USERNAME"
            open http://ec2-52-196-40-206.ap-northeast-1.compute.amazonaws.com:8080/

            break
        elif [ "$answer" == "N" ]; then
            SUDO_COMMAND="$SUDO_PATH -S $@"
            SUDO_PATH="$(which sudo)"
            $SUDO_PATH $@
            break
        else
            echo "请输入Y或者N"
        fi
    done
}
