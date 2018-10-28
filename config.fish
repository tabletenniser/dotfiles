alias v="ssh zexuan@zexuan-linux.kir.corp.google.com"
alias p="ssh-tmux zexuan@zexuan-linux.kir.corp.google.com performance"
alias rc="source ~/.config/fish/config.fish"
alias pi='ssh tabletenniser@24.19.49.108'
alias sec_pull='cd ~/Desktop/sec_new; and git pull; and openssl des3 -d -in ~/Desktop/sec_new/sec.enc -out ~/Desktop/sec_new/sec.txt; and cd -'
alias sec='vim ~/Desktop/sec_new/sec.txt'
alias sec_push='openssl des3 -in ~/Desktop/sec_new/sec.txt -out ~/Desktop/sec_new/sec.enc; and cd ~/Desktop/sec_new; and git commit -m Update_password_fish -a; and git push; and cd -'
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

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
