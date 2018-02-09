alias v="ssh awang@192.168.153.130"
alias rc="source ~/.config/fish/config.fish"
alias pi='ssh pi@198.244.107.112'
alias sec_pull='cd ~/Desktop/sec; and git pull; and openssl des3 -d -in ~/Desktop/sec/sec.enc -out ~/Desktop/sec/sec.txt; and cd -'
alias sec='vim ~/Desktop/sec/sec.txt'
alias sec_push='openssl des3 -in ~/Desktop/sec/sec.txt -out ~/Desktop/sec/sec.enc; and cd ~/Desktop/sec; and git commit -m Update_password -a; and git push; and cd -'
alias sublime='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
alias ck='ps aux | sort -nrk 3,3 | head -n 5'

alias gh=hg
alias sl=ls
alias l='ls -al'
alias cr='python ./check_run.py'
alias update_time='sudo /usr/sbin/ntpdate pool.ntp.org'
alias rm_g='find . -type f -name "*.orig" -o -name "*.rej" | xargs rm -rvf'
alias b='./environment; and ./prebuild; and build'

set -g -x fish_greeting ''
# set -g theme_color_scheme solarized

#echo "PATH before:", $PATH

#set THINGS (bash -c "eval `/qumulotools/bin/environment --sh` && /usr/bin/printenv" | /bin/sed 's/export //g')
#for line in $THINGS
#    set KEY (echo $line | cut -d= -f1)
#    set VAL (echo $line | cut -d= -f2)
#    if [ $KEY = "LS_COLORS" ]
#        continue
#    end
#    if [ $KEY = "PATH" ]
#        for pp in (echo $VAL | tr : \n)
#            set -gx PATH $pp $PATH
#        end
#    else
#        set -x $KEY $VAL > /dev/null ^ /dev/null
#    end
#end

#eval "/qumulotools/bin/environment --fish"
set fish_env (/qumulotools/bin/environment --fish)
eval $fish_env

#echo "PATH after:", $PATH

#set -gx PATH $PATH /usr/local/bin
#set -gx PATH $PATH ~/.fzf/bin
set -gx PATH $PATH ~/src/tools/squirrel

#echo "PATH actual:", $PATH
